-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/28/2025 17:09:20"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
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

ENTITY 	Projeto_02 IS
    PORT (
	buzzer : OUT std_logic;
	clock : IN std_logic;
	key : IN std_logic_vector(4 DOWNTO 1);
	DIG : OUT std_logic_vector(1 TO 4);
	led : OUT std_logic_vector(4 DOWNTO 1);
	SEG : OUT std_logic_vector(0 TO 6)
	);
END Projeto_02;

-- Design Ports Information
-- buzzer	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[4]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Projeto_02 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_buzzer : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_key : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_DIG : std_logic_vector(1 TO 4);
SIGNAL ww_led : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_SEG : std_logic_vector(0 TO 6);
SIGNAL \inst8|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst26|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst31|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst46|inst|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|inst46|inst|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|inst46|inst|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst46|inst|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \DIG[1]~output_o\ : std_logic;
SIGNAL \DIG[2]~output_o\ : std_logic;
SIGNAL \DIG[3]~output_o\ : std_logic;
SIGNAL \DIG[4]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \SEG[0]~output_o\ : std_logic;
SIGNAL \SEG[1]~output_o\ : std_logic;
SIGNAL \SEG[2]~output_o\ : std_logic;
SIGNAL \SEG[3]~output_o\ : std_logic;
SIGNAL \SEG[4]~output_o\ : std_logic;
SIGNAL \SEG[5]~output_o\ : std_logic;
SIGNAL \SEG[6]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst11|aux_tff~1_combout\ : std_logic;
SIGNAL \inst11|_~8_combout\ : std_logic;
SIGNAL \inst11|q[1]~24_combout\ : std_logic;
SIGNAL \inst11|q[1]~25\ : std_logic;
SIGNAL \inst11|q[2]~26_combout\ : std_logic;
SIGNAL \inst11|q[2]~27\ : std_logic;
SIGNAL \inst11|q[3]~28_combout\ : std_logic;
SIGNAL \inst11|q[3]~29\ : std_logic;
SIGNAL \inst11|q[4]~30_combout\ : std_logic;
SIGNAL \inst11|q[4]~31\ : std_logic;
SIGNAL \inst11|q[5]~32_combout\ : std_logic;
SIGNAL \inst11|q[5]~33\ : std_logic;
SIGNAL \inst11|q[6]~34_combout\ : std_logic;
SIGNAL \inst11|q[6]~35\ : std_logic;
SIGNAL \inst11|q[7]~36_combout\ : std_logic;
SIGNAL \inst11|q[7]~37\ : std_logic;
SIGNAL \inst11|q[8]~38_combout\ : std_logic;
SIGNAL \inst11|q[8]~39\ : std_logic;
SIGNAL \inst11|q[9]~40_combout\ : std_logic;
SIGNAL \inst11|q[9]~41\ : std_logic;
SIGNAL \inst11|q[10]~42_combout\ : std_logic;
SIGNAL \inst11|q[10]~43\ : std_logic;
SIGNAL \inst11|q[11]~44_combout\ : std_logic;
SIGNAL \inst11|q[11]~45\ : std_logic;
SIGNAL \inst11|q[12]~46_combout\ : std_logic;
SIGNAL \inst11|q[12]~47\ : std_logic;
SIGNAL \inst11|q[13]~48_combout\ : std_logic;
SIGNAL \inst11|q[13]~49\ : std_logic;
SIGNAL \inst11|q[14]~50_combout\ : std_logic;
SIGNAL \inst11|q[14]~51\ : std_logic;
SIGNAL \inst11|q[15]~52_combout\ : std_logic;
SIGNAL \inst11|q[15]~53\ : std_logic;
SIGNAL \inst11|q[16]~54_combout\ : std_logic;
SIGNAL \inst11|q[16]~55\ : std_logic;
SIGNAL \inst11|q[17]~56_combout\ : std_logic;
SIGNAL \inst11|q[17]~57\ : std_logic;
SIGNAL \inst11|q[18]~58_combout\ : std_logic;
SIGNAL \inst11|q[18]~59\ : std_logic;
SIGNAL \inst11|q[19]~60_combout\ : std_logic;
SIGNAL \inst11|q[19]~61\ : std_logic;
SIGNAL \inst11|q[20]~62_combout\ : std_logic;
SIGNAL \inst11|q[20]~63\ : std_logic;
SIGNAL \inst11|q[21]~64_combout\ : std_logic;
SIGNAL \inst11|q[21]~65\ : std_logic;
SIGNAL \inst11|q[22]~66_combout\ : std_logic;
SIGNAL \inst11|q[22]~67\ : std_logic;
SIGNAL \inst11|q[23]~68_combout\ : std_logic;
SIGNAL \inst11|q[23]~69\ : std_logic;
SIGNAL \inst11|q[24]~70_combout\ : std_logic;
SIGNAL \inst11|_~6_combout\ : std_logic;
SIGNAL \inst11|_~5_combout\ : std_logic;
SIGNAL \inst11|_~2_combout\ : std_logic;
SIGNAL \inst11|_~1_combout\ : std_logic;
SIGNAL \inst11|_~0_combout\ : std_logic;
SIGNAL \inst11|_~3_combout\ : std_logic;
SIGNAL \inst11|_~4_combout\ : std_logic;
SIGNAL \inst11|_~7_combout\ : std_logic;
SIGNAL \inst11|aux_tff~q\ : std_logic;
SIGNAL \inst5|aux_tff~1_combout\ : std_logic;
SIGNAL \inst5|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst5|aux_tff~q\ : std_logic;
SIGNAL \inst5|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst6|aux_tff~1_combout\ : std_logic;
SIGNAL \inst6|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|_~5_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[1]~14_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[1]~15\ : std_logic;
SIGNAL \inst13|inst46|inst|q[2]~16_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[2]~17\ : std_logic;
SIGNAL \inst13|inst46|inst|q[3]~18_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[3]~19\ : std_logic;
SIGNAL \inst13|inst46|inst|q[4]~20_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[4]~21\ : std_logic;
SIGNAL \inst13|inst46|inst|q[5]~22_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[5]~23\ : std_logic;
SIGNAL \inst13|inst46|inst|q[6]~24_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[6]~25\ : std_logic;
SIGNAL \inst13|inst46|inst|q[7]~26_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[7]~27\ : std_logic;
SIGNAL \inst13|inst46|inst|q[8]~28_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[8]~29\ : std_logic;
SIGNAL \inst13|inst46|inst|q[9]~30_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[9]~31\ : std_logic;
SIGNAL \inst13|inst46|inst|q[10]~32_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[10]~33\ : std_logic;
SIGNAL \inst13|inst46|inst|q[11]~34_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|_~2_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|_~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|_~0_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[11]~35\ : std_logic;
SIGNAL \inst13|inst46|inst|q[12]~36_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[12]~37\ : std_logic;
SIGNAL \inst13|inst46|inst|q[13]~38_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|q[13]~39\ : std_logic;
SIGNAL \inst13|inst46|inst|q[14]~40_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|_~3_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|_~4_combout\ : std_logic;
SIGNAL \inst6|aux_tff~q\ : std_logic;
SIGNAL \inst6|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \inst20|inst3|ff1~feeder_combout\ : std_logic;
SIGNAL \inst20|inst3|ff1~q\ : std_logic;
SIGNAL \inst20|inst3|ff2~q\ : std_logic;
SIGNAL \inst20|inst3|ff3~0_combout\ : std_logic;
SIGNAL \inst20|inst3|ff3~feeder_combout\ : std_logic;
SIGNAL \inst20|inst3|ff3~q\ : std_logic;
SIGNAL \inst23|up_pulse~combout\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \inst20|inst2|ff1~feeder_combout\ : std_logic;
SIGNAL \inst20|inst2|ff1~q\ : std_logic;
SIGNAL \inst20|inst2|ff2~q\ : std_logic;
SIGNAL \inst20|inst2|ff3~0_combout\ : std_logic;
SIGNAL \inst20|inst2|ff3~feeder_combout\ : std_logic;
SIGNAL \inst20|inst2|ff3~q\ : std_logic;
SIGNAL \inst23|down_pulse~combout\ : std_logic;
SIGNAL \inst23|q[1]~1_combout\ : std_logic;
SIGNAL \inst23|q[1]~2_combout\ : std_logic;
SIGNAL \inst25|inst50|_~0_combout\ : std_logic;
SIGNAL \inst32|inst31|_~0_combout\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \inst20|inst1|ff1~q\ : std_logic;
SIGNAL \inst20|inst1|ff2~q\ : std_logic;
SIGNAL \inst20|inst1|ff3~0_combout\ : std_logic;
SIGNAL \inst20|inst1|ff3~q\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst20|inst|ff1~q\ : std_logic;
SIGNAL \inst20|inst|ff2~q\ : std_logic;
SIGNAL \inst20|inst|ff3~0_combout\ : std_logic;
SIGNAL \inst20|inst|ff3~q\ : std_logic;
SIGNAL \inst1|ant_pulse~combout\ : std_logic;
SIGNAL \inst1|select_q[0]~15_combout\ : std_logic;
SIGNAL \inst15|deb1_out_c1~1_combout\ : std_logic;
SIGNAL \inst13|inst39|btn2_reg~q\ : std_logic;
SIGNAL \inst13|inst50|_~2_combout\ : std_logic;
SIGNAL \inst13|inst50|resetcont_q~q\ : std_logic;
SIGNAL \inst13|inst23|reset_pulse~combout\ : std_logic;
SIGNAL \inst1|_~29_combout\ : std_logic;
SIGNAL \inst25|inst22|reset_cont~2_combout\ : std_logic;
SIGNAL \inst15|deb2_out_c2~1_combout\ : std_logic;
SIGNAL \inst25|inst39|btn1_reg~q\ : std_logic;
SIGNAL \inst25|inst39|q[1]~1_combout\ : std_logic;
SIGNAL \inst25|inst39|q[0]~3_combout\ : std_logic;
SIGNAL \inst25|inst39|op_1~0_combout\ : std_logic;
SIGNAL \inst25|inst39|up_pulse~0_combout\ : std_logic;
SIGNAL \inst25|inst39|q[1]~0_combout\ : std_logic;
SIGNAL \inst25|inst39|q[1]~2_combout\ : std_logic;
SIGNAL \inst25|inst37|aux_dig[4]~3_combout\ : std_logic;
SIGNAL \inst15|menu_out_c2[0]~3_combout\ : std_logic;
SIGNAL \inst15|menu_out_c2[1]~2_combout\ : std_logic;
SIGNAL \inst25|inst37|_~3_combout\ : std_logic;
SIGNAL \inst25|inst22|reset_cont~combout\ : std_logic;
SIGNAL \inst25|inst25|reset_novo_reg~q\ : std_logic;
SIGNAL \inst25|inst22|reset_cont~3_combout\ : std_logic;
SIGNAL \inst25|inst23|reset_final_pulse~combout\ : std_logic;
SIGNAL \inst25|inst28|q[3]~1_combout\ : std_logic;
SIGNAL \inst25|inst28|op_1~2_combout\ : std_logic;
SIGNAL \inst25|inst28|_~1_combout\ : std_logic;
SIGNAL \inst25|inst28|q[1]~5_combout\ : std_logic;
SIGNAL \inst25|inst28|q[1]~6_combout\ : std_logic;
SIGNAL \inst25|inst28|op_1~1_combout\ : std_logic;
SIGNAL \inst25|inst28|op_2~0_combout\ : std_logic;
SIGNAL \inst25|inst28|q[2]~3_combout\ : std_logic;
SIGNAL \inst25|inst28|q[2]~4_combout\ : std_logic;
SIGNAL \inst25|inst28|op_1~0_combout\ : std_logic;
SIGNAL \inst25|inst28|q[3]~0_combout\ : std_logic;
SIGNAL \inst25|inst28|q[3]~2_combout\ : std_logic;
SIGNAL \inst25|inst28|_~2_combout\ : std_logic;
SIGNAL \inst25|inst28|_~3_combout\ : std_logic;
SIGNAL \inst25|inst28|q[0]~7_combout\ : std_logic;
SIGNAL \inst25|inst28|_~0_combout\ : std_logic;
SIGNAL \inst25|inst37|aux_dig[2]~1_combout\ : std_logic;
SIGNAL \inst25|inst37|_~1_combout\ : std_logic;
SIGNAL \inst25|inst26|_~1_combout\ : std_logic;
SIGNAL \inst25|inst26|_~2_combout\ : std_logic;
SIGNAL \inst25|inst26|q[3]~1_combout\ : std_logic;
SIGNAL \inst25|inst26|op_1~2_combout\ : std_logic;
SIGNAL \inst25|inst26|q[1]~5_combout\ : std_logic;
SIGNAL \inst25|inst26|q[1]~6_combout\ : std_logic;
SIGNAL \inst25|inst26|op_2~0_combout\ : std_logic;
SIGNAL \inst25|inst26|q[2]~3_combout\ : std_logic;
SIGNAL \inst25|inst26|op_1~1_combout\ : std_logic;
SIGNAL \inst25|inst26|q[2]~4_combout\ : std_logic;
SIGNAL \inst25|inst26|q[3]~0_combout\ : std_logic;
SIGNAL \inst25|inst26|op_1~0_combout\ : std_logic;
SIGNAL \inst25|inst26|q[3]~2_combout\ : std_logic;
SIGNAL \inst25|inst26|_~3_combout\ : std_logic;
SIGNAL \inst25|inst26|_~4_combout\ : std_logic;
SIGNAL \inst25|inst26|q[0]~7_combout\ : std_logic;
SIGNAL \inst25|inst26|_~0_combout\ : std_logic;
SIGNAL \inst25|inst37|aux_dig[1]~0_combout\ : std_logic;
SIGNAL \inst25|inst37|_~0_combout\ : std_logic;
SIGNAL \inst25|inst37|digsel_q[1]~feeder_combout\ : std_logic;
SIGNAL \inst25|inst25|q[3]~1_combout\ : std_logic;
SIGNAL \inst25|inst25|_~1_combout\ : std_logic;
SIGNAL \inst25|inst25|q[0]~7_combout\ : std_logic;
SIGNAL \inst25|inst25|op_1~2_combout\ : std_logic;
SIGNAL \inst25|inst25|q[1]~5_combout\ : std_logic;
SIGNAL \inst25|inst25|q[1]~6_combout\ : std_logic;
SIGNAL \inst25|inst25|op_1~0_combout\ : std_logic;
SIGNAL \inst25|inst25|op_2~0_combout\ : std_logic;
SIGNAL \inst25|inst25|q[3]~0_combout\ : std_logic;
SIGNAL \inst25|inst25|q[3]~2_combout\ : std_logic;
SIGNAL \inst25|inst25|_~2_combout\ : std_logic;
SIGNAL \inst25|inst25|_~3_combout\ : std_logic;
SIGNAL \inst25|inst25|op_1~1_combout\ : std_logic;
SIGNAL \inst25|inst25|q[2]~3_combout\ : std_logic;
SIGNAL \inst25|inst25|q[2]~4_combout\ : std_logic;
SIGNAL \inst25|inst25|_~0_combout\ : std_logic;
SIGNAL \inst25|inst37|aux_dig[3]~2_combout\ : std_logic;
SIGNAL \inst25|inst37|_~2_combout\ : std_logic;
SIGNAL \inst25|inst27|q[3]~1_combout\ : std_logic;
SIGNAL \inst25|inst27|_~1_combout\ : std_logic;
SIGNAL \inst25|inst27|q[0]~7_combout\ : std_logic;
SIGNAL \inst25|inst27|op_1~2_combout\ : std_logic;
SIGNAL \inst25|inst27|q[1]~5_combout\ : std_logic;
SIGNAL \inst25|inst27|q[1]~6_combout\ : std_logic;
SIGNAL \inst25|inst27|op_2~0_combout\ : std_logic;
SIGNAL \inst25|inst27|q[3]~0_combout\ : std_logic;
SIGNAL \inst25|inst27|op_1~0_combout\ : std_logic;
SIGNAL \inst25|inst27|q[3]~2_combout\ : std_logic;
SIGNAL \inst25|inst27|_~2_combout\ : std_logic;
SIGNAL \inst25|inst27|_~3_combout\ : std_logic;
SIGNAL \inst25|inst27|op_1~1_combout\ : std_logic;
SIGNAL \inst25|inst27|q[2]~3_combout\ : std_logic;
SIGNAL \inst25|inst27|q[2]~4_combout\ : std_logic;
SIGNAL \inst25|inst27|_~0_combout\ : std_logic;
SIGNAL \inst25|inst40|_~0_combout\ : std_logic;
SIGNAL \inst25|inst31|_~1_combout\ : std_logic;
SIGNAL \inst15|_~0_combout\ : std_logic;
SIGNAL \inst25|inst50|_~1_combout\ : std_logic;
SIGNAL \inst25|inst21|menu4_ativo_reg~q\ : std_logic;
SIGNAL \inst25|inst21|_~0_combout\ : std_logic;
SIGNAL \inst25|inst21|_~1_combout\ : std_logic;
SIGNAL \inst25|inst21|menu4_visitado_q~q\ : std_logic;
SIGNAL \inst25|inst21|comp_flag_q~0_combout\ : std_logic;
SIGNAL \inst25|inst21|comp_flag_q~1_combout\ : std_logic;
SIGNAL \inst25|inst21|comp_flag_q~q\ : std_logic;
SIGNAL \inst8|aux_tff~1_combout\ : std_logic;
SIGNAL \inst8|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst8|aux_tff~q\ : std_logic;
SIGNAL \inst8|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst25|inst50|pausa_q~0_combout\ : std_logic;
SIGNAL \inst25|inst50|pausa_q~q\ : std_logic;
SIGNAL \inst25|inst23|unidade_q[0]~2_combout\ : std_logic;
SIGNAL \inst25|inst23|pode_contar~0_combout\ : std_logic;
SIGNAL \inst25|inst23|dezena_q[0]~3_combout\ : std_logic;
SIGNAL \inst25|inst23|dezena_q[1]~0_combout\ : std_logic;
SIGNAL \inst25|inst23|dezena_q[1]~4_combout\ : std_logic;
SIGNAL \inst25|inst23|op_2~0_combout\ : std_logic;
SIGNAL \inst25|inst23|dezena_q[2]~1_combout\ : std_logic;
SIGNAL \inst25|inst23|op_2~1_combout\ : std_logic;
SIGNAL \inst25|inst23|dezena_q[3]~2_combout\ : std_logic;
SIGNAL \inst25|inst23|_~1_combout\ : std_logic;
SIGNAL \inst25|inst23|centena_q[0]~5_combout\ : std_logic;
SIGNAL \inst25|inst23|op_3~0_combout\ : std_logic;
SIGNAL \inst25|inst23|milhar_q[1]~9_combout\ : std_logic;
SIGNAL \inst25|inst23|milhar_q[1]~3_combout\ : std_logic;
SIGNAL \inst25|inst23|centena_q[2]~2_combout\ : std_logic;
SIGNAL \inst25|inst23|_~3_combout\ : std_logic;
SIGNAL \inst25|inst23|centena_q[1]~4_combout\ : std_logic;
SIGNAL \inst25|inst23|op_3~1_combout\ : std_logic;
SIGNAL \inst25|inst23|centena_q[3]~3_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~7_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~8_combout\ : std_logic;
SIGNAL \inst25|inst23|milhar_q[0]~7_combout\ : std_logic;
SIGNAL \inst25|inst23|milhar_q[1]~4_combout\ : std_logic;
SIGNAL \inst25|inst23|milhar_q[1]~8_combout\ : std_logic;
SIGNAL \inst25|inst23|op_4~0_combout\ : std_logic;
SIGNAL \inst25|inst23|milhar_q[2]~5_combout\ : std_logic;
SIGNAL \inst25|inst23|_~2_combout\ : std_logic;
SIGNAL \inst25|inst23|op_4~1_combout\ : std_logic;
SIGNAL \inst25|inst23|milhar_q[3]~6_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~9_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~10_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~11_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~3_combout\ : std_logic;
SIGNAL \inst25|inst23|op_1~1_combout\ : std_logic;
SIGNAL \inst25|inst23|unidade_q[3]~1_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~2_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~4_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~5_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~6_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~12_combout\ : std_logic;
SIGNAL \inst25|inst23|pode_contar~combout\ : std_logic;
SIGNAL \inst25|inst23|unidade_q[1]~3_combout\ : std_logic;
SIGNAL \inst25|inst23|op_1~0_combout\ : std_logic;
SIGNAL \inst25|inst23|unidade_q[2]~0_combout\ : std_logic;
SIGNAL \inst25|inst23|_~0_combout\ : std_logic;
SIGNAL \inst25|inst23|milhar_q[1]~2_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~13_combout\ : std_logic;
SIGNAL \inst25|inst40|final_cont~14_combout\ : std_logic;
SIGNAL \inst1|select_q[1]~6_combout\ : std_logic;
SIGNAL \inst15|menu_out_c3[1]~3_combout\ : std_logic;
SIGNAL \inst15|menu_out_c3[0]~2_combout\ : std_logic;
SIGNAL \inst30|inst22|reset_cont~combout\ : std_logic;
SIGNAL \inst30|inst25|reset_novo_reg~q\ : std_logic;
SIGNAL \inst30|inst23|reset_final_pulse~0_combout\ : std_logic;
SIGNAL \inst30|inst23|reset_final_pulse~combout\ : std_logic;
SIGNAL \inst15|deb1_out_c3~1_combout\ : std_logic;
SIGNAL \inst15|deb2_out_c3~1_combout\ : std_logic;
SIGNAL \inst30|inst39|btn1_reg~q\ : std_logic;
SIGNAL \inst30|inst39|btn2_reg~q\ : std_logic;
SIGNAL \inst30|inst39|q[1]~3_combout\ : std_logic;
SIGNAL \inst30|inst39|q[0]~5_combout\ : std_logic;
SIGNAL \inst30|inst22|reset_cont~0_combout\ : std_logic;
SIGNAL \inst30|inst39|op_1~0_combout\ : std_logic;
SIGNAL \inst30|inst39|up_pulse~0_combout\ : std_logic;
SIGNAL \inst30|inst39|q[1]~2_combout\ : std_logic;
SIGNAL \inst30|inst39|q[1]~4_combout\ : std_logic;
SIGNAL \inst30|inst37|_~1_combout\ : std_logic;
SIGNAL \inst30|inst37|aux_dig[3]~2_combout\ : std_logic;
SIGNAL \inst30|inst37|_~5_combout\ : std_logic;
SIGNAL \inst30|inst27|q[3]~1_combout\ : std_logic;
SIGNAL \inst30|inst27|_~1_combout\ : std_logic;
SIGNAL \inst30|inst27|op_1~1_combout\ : std_logic;
SIGNAL \inst30|inst27|op_2~0_combout\ : std_logic;
SIGNAL \inst30|inst27|q[2]~3_combout\ : std_logic;
SIGNAL \inst30|inst27|q[2]~4_combout\ : std_logic;
SIGNAL \inst30|inst27|op_1~0_combout\ : std_logic;
SIGNAL \inst30|inst27|q[3]~0_combout\ : std_logic;
SIGNAL \inst30|inst27|q[3]~2_combout\ : std_logic;
SIGNAL \inst30|inst27|_~2_combout\ : std_logic;
SIGNAL \inst30|inst27|_~3_combout\ : std_logic;
SIGNAL \inst30|inst27|q[0]~7_combout\ : std_logic;
SIGNAL \inst30|inst27|op_1~2_combout\ : std_logic;
SIGNAL \inst30|inst27|q[1]~5_combout\ : std_logic;
SIGNAL \inst30|inst27|q[1]~6_combout\ : std_logic;
SIGNAL \inst30|inst27|_~0_combout\ : std_logic;
SIGNAL \inst30|inst37|blinkdig1~1_combout\ : std_logic;
SIGNAL \inst30|inst37|aux_dig[1]~0_combout\ : std_logic;
SIGNAL \inst30|inst37|_~3_combout\ : std_logic;
SIGNAL \inst30|inst25|_~1_combout\ : std_logic;
SIGNAL \inst30|inst25|q[3]~1_combout\ : std_logic;
SIGNAL \inst30|inst25|op_2~0_combout\ : std_logic;
SIGNAL \inst30|inst25|q[3]~0_combout\ : std_logic;
SIGNAL \inst30|inst25|op_1~0_combout\ : std_logic;
SIGNAL \inst30|inst25|q[3]~2_combout\ : std_logic;
SIGNAL \inst30|inst25|_~2_combout\ : std_logic;
SIGNAL \inst30|inst25|_~3_combout\ : std_logic;
SIGNAL \inst30|inst25|q[0]~7_combout\ : std_logic;
SIGNAL \inst30|inst25|op_1~2_combout\ : std_logic;
SIGNAL \inst30|inst25|q[1]~5_combout\ : std_logic;
SIGNAL \inst30|inst25|q[1]~6_combout\ : std_logic;
SIGNAL \inst30|inst25|op_1~1_combout\ : std_logic;
SIGNAL \inst30|inst25|q[2]~3_combout\ : std_logic;
SIGNAL \inst30|inst25|q[2]~4_combout\ : std_logic;
SIGNAL \inst30|inst25|_~0_combout\ : std_logic;
SIGNAL \inst30|inst37|_~0_combout\ : std_logic;
SIGNAL \inst30|inst37|aux_dig[2]~1_combout\ : std_logic;
SIGNAL \inst30|inst37|_~4_combout\ : std_logic;
SIGNAL \inst30|inst26|_~1_combout\ : std_logic;
SIGNAL \inst30|inst26|q[3]~1_combout\ : std_logic;
SIGNAL \inst30|inst26|q[0]~7_combout\ : std_logic;
SIGNAL \inst30|inst26|op_1~2_combout\ : std_logic;
SIGNAL \inst30|inst26|q[1]~5_combout\ : std_logic;
SIGNAL \inst30|inst26|q[1]~6_combout\ : std_logic;
SIGNAL \inst30|inst26|op_1~0_combout\ : std_logic;
SIGNAL \inst30|inst26|op_2~0_combout\ : std_logic;
SIGNAL \inst30|inst26|q[3]~0_combout\ : std_logic;
SIGNAL \inst30|inst26|q[3]~2_combout\ : std_logic;
SIGNAL \inst30|inst26|_~2_combout\ : std_logic;
SIGNAL \inst30|inst26|_~3_combout\ : std_logic;
SIGNAL \inst30|inst26|op_1~1_combout\ : std_logic;
SIGNAL \inst30|inst26|q[2]~3_combout\ : std_logic;
SIGNAL \inst30|inst26|q[2]~4_combout\ : std_logic;
SIGNAL \inst30|inst26|_~0_combout\ : std_logic;
SIGNAL \inst30|inst37|_~2_combout\ : std_logic;
SIGNAL \inst30|inst37|aux_dig[4]~3_combout\ : std_logic;
SIGNAL \inst30|inst37|_~6_combout\ : std_logic;
SIGNAL \inst30|inst28|q[3]~1_combout\ : std_logic;
SIGNAL \inst30|inst28|op_1~1_combout\ : std_logic;
SIGNAL \inst30|inst28|op_2~0_combout\ : std_logic;
SIGNAL \inst30|inst28|_~1_combout\ : std_logic;
SIGNAL \inst30|inst28|q[2]~3_combout\ : std_logic;
SIGNAL \inst30|inst28|q[2]~4_combout\ : std_logic;
SIGNAL \inst30|inst28|op_1~0_combout\ : std_logic;
SIGNAL \inst30|inst28|q[3]~0_combout\ : std_logic;
SIGNAL \inst30|inst28|q[3]~2_combout\ : std_logic;
SIGNAL \inst30|inst28|_~2_combout\ : std_logic;
SIGNAL \inst30|inst28|_~3_combout\ : std_logic;
SIGNAL \inst30|inst28|q[0]~7_combout\ : std_logic;
SIGNAL \inst30|inst28|op_1~2_combout\ : std_logic;
SIGNAL \inst30|inst28|q[1]~5_combout\ : std_logic;
SIGNAL \inst30|inst28|q[1]~6_combout\ : std_logic;
SIGNAL \inst30|inst28|_~0_combout\ : std_logic;
SIGNAL \inst30|inst40|_~0_combout\ : std_logic;
SIGNAL \inst26|aux_tff~1_combout\ : std_logic;
SIGNAL \inst26|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst26|aux_tff~q\ : std_logic;
SIGNAL \inst26|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst30|inst50|_~5_combout\ : std_logic;
SIGNAL \inst30|inst21|menu4_ativo_reg~q\ : std_logic;
SIGNAL \inst30|inst21|_~0_combout\ : std_logic;
SIGNAL \inst30|inst21|_~1_combout\ : std_logic;
SIGNAL \inst30|inst21|menu4_visitado_q~q\ : std_logic;
SIGNAL \inst30|inst21|comp_flag_q~0_combout\ : std_logic;
SIGNAL \inst30|inst21|comp_flag_q~1_combout\ : std_logic;
SIGNAL \inst30|inst21|comp_flag_q~q\ : std_logic;
SIGNAL \inst30|inst50|pausa_q~0_combout\ : std_logic;
SIGNAL \inst30|inst50|pausa_q~q\ : std_logic;
SIGNAL \inst30|inst23|op_1~0_combout\ : std_logic;
SIGNAL \inst30|inst23|pode_contar~0_combout\ : std_logic;
SIGNAL \inst30|inst23|dezena_q[0]~4_combout\ : std_logic;
SIGNAL \inst30|inst23|dezena_q[1]~0_combout\ : std_logic;
SIGNAL \inst30|inst23|dezena_q[1]~1_combout\ : std_logic;
SIGNAL \inst30|inst23|dezena_q[1]~5_combout\ : std_logic;
SIGNAL \inst30|inst23|op_2~0_combout\ : std_logic;
SIGNAL \inst30|inst23|dezena_q[2]~2_combout\ : std_logic;
SIGNAL \inst30|inst23|op_2~1_combout\ : std_logic;
SIGNAL \inst30|inst23|dezena_q[3]~3_combout\ : std_logic;
SIGNAL \inst30|inst23|_~2_combout\ : std_logic;
SIGNAL \inst30|inst23|centena_q[0]~5_combout\ : std_logic;
SIGNAL \inst30|inst23|milhar_q[1]~2_combout\ : std_logic;
SIGNAL \inst30|inst23|milhar_q[1]~3_combout\ : std_logic;
SIGNAL \inst30|inst23|milhar_q[1]~4_combout\ : std_logic;
SIGNAL \inst30|inst23|centena_q[1]~4_combout\ : std_logic;
SIGNAL \inst30|inst23|op_3~0_combout\ : std_logic;
SIGNAL \inst30|inst23|centena_q[2]~2_combout\ : std_logic;
SIGNAL \inst30|inst23|op_3~1_combout\ : std_logic;
SIGNAL \inst30|inst23|centena_q[3]~3_combout\ : std_logic;
SIGNAL \inst30|inst23|_~1_combout\ : std_logic;
SIGNAL \inst30|inst23|milhar_q[0]~8_combout\ : std_logic;
SIGNAL \inst30|inst23|milhar_q[1]~10_combout\ : std_logic;
SIGNAL \inst30|inst23|milhar_q[1]~5_combout\ : std_logic;
SIGNAL \inst30|inst23|milhar_q[1]~9_combout\ : std_logic;
SIGNAL \inst30|inst23|op_4~1_combout\ : std_logic;
SIGNAL \inst30|inst23|milhar_q[3]~7_combout\ : std_logic;
SIGNAL \inst30|inst23|_~0_combout\ : std_logic;
SIGNAL \inst30|inst23|op_4~0_combout\ : std_logic;
SIGNAL \inst30|inst23|milhar_q[2]~6_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~9_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~8_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~7_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~10_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~11_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~12_combout\ : std_logic;
SIGNAL \inst30|inst23|pode_contar~combout\ : std_logic;
SIGNAL \inst30|inst23|unidade_q[2]~0_combout\ : std_logic;
SIGNAL \inst30|inst23|op_1~1_combout\ : std_logic;
SIGNAL \inst30|inst23|unidade_q[3]~1_combout\ : std_logic;
SIGNAL \inst30|inst23|_~3_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~13_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~14_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~15_combout\ : std_logic;
SIGNAL \inst30|inst23|unidade_q[0]~2_combout\ : std_logic;
SIGNAL \inst30|inst23|unidade_q[1]~3_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~3_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~2_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~4_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~5_combout\ : std_logic;
SIGNAL \inst30|inst40|final_cont~6_combout\ : std_logic;
SIGNAL \inst7|flag_pulse[3]~0_combout\ : std_logic;
SIGNAL \inst23|reset_c_reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst32|inst50|_~3_combout\ : std_logic;
SIGNAL \inst32|inst21|menu4_ativo_reg~q\ : std_logic;
SIGNAL \inst32|inst21|_~0_combout\ : std_logic;
SIGNAL \inst32|inst21|_~1_combout\ : std_logic;
SIGNAL \inst32|inst21|menu4_visitado_q~q\ : std_logic;
SIGNAL \inst32|inst21|comp_flag_q~0_combout\ : std_logic;
SIGNAL \inst32|inst21|comp_flag_q~1_combout\ : std_logic;
SIGNAL \inst32|inst21|comp_flag_q~q\ : std_logic;
SIGNAL \inst31|aux_tff~1_combout\ : std_logic;
SIGNAL \inst31|aux_tff~q\ : std_logic;
SIGNAL \inst31|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst15|deb2_out_c4~1_combout\ : std_logic;
SIGNAL \inst32|inst39|btn1_reg~q\ : std_logic;
SIGNAL \inst32|inst50|pausa_q~0_combout\ : std_logic;
SIGNAL \inst32|inst50|pausa_q~q\ : std_logic;
SIGNAL \inst32|inst23|pode_contar~0_combout\ : std_logic;
SIGNAL \inst32|inst39|up_pulse~0_combout\ : std_logic;
SIGNAL \inst32|inst22|reset_cont~0_combout\ : std_logic;
SIGNAL \inst15|deb1_out_c4~1_combout\ : std_logic;
SIGNAL \inst32|inst39|btn2_reg~q\ : std_logic;
SIGNAL \inst32|inst39|down_pulse~0_combout\ : std_logic;
SIGNAL \inst32|inst39|q[0]~3_combout\ : std_logic;
SIGNAL \inst32|inst39|q[1]~0_combout\ : std_logic;
SIGNAL \inst32|inst39|q[1]~1_combout\ : std_logic;
SIGNAL \inst32|inst39|q[1]~2_combout\ : std_logic;
SIGNAL \inst32|inst37|aux_dig[3]~2_combout\ : std_logic;
SIGNAL \inst32|inst37|_~2_combout\ : std_logic;
SIGNAL \inst32|inst27|_~1_combout\ : std_logic;
SIGNAL \inst15|menu_out_c4[1]~2_combout\ : std_logic;
SIGNAL \inst15|menu_out_c4[0]~3_combout\ : std_logic;
SIGNAL \inst32|inst22|reset_cont~1_combout\ : std_logic;
SIGNAL \inst32|inst22|reset_cont~combout\ : std_logic;
SIGNAL \inst32|inst25|reset_novo_reg~q\ : std_logic;
SIGNAL \inst32|inst23|reset_final_pulse~0_combout\ : std_logic;
SIGNAL \inst32|inst23|reset_final_pulse~combout\ : std_logic;
SIGNAL \inst32|inst27|op_1~1_combout\ : std_logic;
SIGNAL \inst32|inst27|op_2~0_combout\ : std_logic;
SIGNAL \inst32|inst27|q[2]~3_combout\ : std_logic;
SIGNAL \inst32|inst27|q[3]~1_combout\ : std_logic;
SIGNAL \inst32|inst27|q[2]~4_combout\ : std_logic;
SIGNAL \inst32|inst27|op_1~0_combout\ : std_logic;
SIGNAL \inst32|inst27|q[3]~0_combout\ : std_logic;
SIGNAL \inst32|inst27|q[3]~2_combout\ : std_logic;
SIGNAL \inst32|inst27|_~2_combout\ : std_logic;
SIGNAL \inst32|inst27|_~3_combout\ : std_logic;
SIGNAL \inst32|inst27|q[0]~7_combout\ : std_logic;
SIGNAL \inst32|inst27|op_1~2_combout\ : std_logic;
SIGNAL \inst32|inst27|q[1]~5_combout\ : std_logic;
SIGNAL \inst32|inst27|q[1]~6_combout\ : std_logic;
SIGNAL \inst32|inst27|_~0_combout\ : std_logic;
SIGNAL \inst32|inst28|op_1~2_combout\ : std_logic;
SIGNAL \inst32|inst37|aux_dig[4]~3_combout\ : std_logic;
SIGNAL \inst32|inst37|_~3_combout\ : std_logic;
SIGNAL \inst32|inst28|q[3]~1_combout\ : std_logic;
SIGNAL \inst32|inst28|_~1_combout\ : std_logic;
SIGNAL \inst32|inst28|q[1]~5_combout\ : std_logic;
SIGNAL \inst32|inst28|q[1]~6_combout\ : std_logic;
SIGNAL \inst32|inst28|op_1~1_combout\ : std_logic;
SIGNAL \inst32|inst28|op_2~0_combout\ : std_logic;
SIGNAL \inst32|inst28|q[2]~3_combout\ : std_logic;
SIGNAL \inst32|inst28|q[2]~4_combout\ : std_logic;
SIGNAL \inst32|inst28|op_1~0_combout\ : std_logic;
SIGNAL \inst32|inst28|q[3]~0_combout\ : std_logic;
SIGNAL \inst32|inst28|q[3]~2_combout\ : std_logic;
SIGNAL \inst32|inst28|_~2_combout\ : std_logic;
SIGNAL \inst32|inst28|_~3_combout\ : std_logic;
SIGNAL \inst32|inst28|q[0]~7_combout\ : std_logic;
SIGNAL \inst32|inst28|_~0_combout\ : std_logic;
SIGNAL \inst32|inst37|aux_dig[2]~1_combout\ : std_logic;
SIGNAL \inst32|inst37|_~1_combout\ : std_logic;
SIGNAL \inst32|inst26|_~1_combout\ : std_logic;
SIGNAL \inst32|inst26|q[3]~1_combout\ : std_logic;
SIGNAL \inst32|inst26|op_1~1_combout\ : std_logic;
SIGNAL \inst32|inst26|op_2~0_combout\ : std_logic;
SIGNAL \inst32|inst26|q[2]~3_combout\ : std_logic;
SIGNAL \inst32|inst26|q[2]~4_combout\ : std_logic;
SIGNAL \inst32|inst26|op_1~0_combout\ : std_logic;
SIGNAL \inst32|inst26|q[3]~0_combout\ : std_logic;
SIGNAL \inst32|inst26|q[3]~2_combout\ : std_logic;
SIGNAL \inst32|inst26|_~2_combout\ : std_logic;
SIGNAL \inst32|inst26|_~3_combout\ : std_logic;
SIGNAL \inst32|inst26|q[0]~7_combout\ : std_logic;
SIGNAL \inst32|inst26|op_1~2_combout\ : std_logic;
SIGNAL \inst32|inst26|q[1]~5_combout\ : std_logic;
SIGNAL \inst32|inst26|q[1]~6_combout\ : std_logic;
SIGNAL \inst32|inst26|_~0_combout\ : std_logic;
SIGNAL \inst32|inst37|aux_dig[1]~0_combout\ : std_logic;
SIGNAL \inst32|inst37|_~0_combout\ : std_logic;
SIGNAL \inst32|inst25|q[3]~1_combout\ : std_logic;
SIGNAL \inst32|inst25|_~1_combout\ : std_logic;
SIGNAL \inst32|inst25|op_1~2_combout\ : std_logic;
SIGNAL \inst32|inst25|q[1]~5_combout\ : std_logic;
SIGNAL \inst32|inst25|q[1]~6_combout\ : std_logic;
SIGNAL \inst32|inst25|op_1~0_combout\ : std_logic;
SIGNAL \inst32|inst25|op_2~0_combout\ : std_logic;
SIGNAL \inst32|inst25|q[3]~0_combout\ : std_logic;
SIGNAL \inst32|inst25|q[3]~2_combout\ : std_logic;
SIGNAL \inst32|inst25|_~2_combout\ : std_logic;
SIGNAL \inst32|inst25|_~3_combout\ : std_logic;
SIGNAL \inst32|inst25|q[0]~7_combout\ : std_logic;
SIGNAL \inst32|inst25|op_1~1_combout\ : std_logic;
SIGNAL \inst32|inst25|q[2]~3_combout\ : std_logic;
SIGNAL \inst32|inst25|q[2]~4_combout\ : std_logic;
SIGNAL \inst32|inst25|_~0_combout\ : std_logic;
SIGNAL \inst32|inst40|_~0_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~5_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~4_combout\ : std_logic;
SIGNAL \inst32|inst23|unidade_q[1]~3_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~3_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~2_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~6_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~12_combout\ : std_logic;
SIGNAL \inst32|inst23|pode_contar~combout\ : std_logic;
SIGNAL \inst32|inst23|dezena_q[0]~3_combout\ : std_logic;
SIGNAL \inst32|inst23|dezena_q[1]~0_combout\ : std_logic;
SIGNAL \inst32|inst23|dezena_q[1]~4_combout\ : std_logic;
SIGNAL \inst32|inst23|op_2~0_combout\ : std_logic;
SIGNAL \inst32|inst23|dezena_q[2]~1_combout\ : std_logic;
SIGNAL \inst32|inst23|op_2~1_combout\ : std_logic;
SIGNAL \inst32|inst23|dezena_q[3]~2_combout\ : std_logic;
SIGNAL \inst32|inst23|_~1_combout\ : std_logic;
SIGNAL \inst32|inst23|milhar_q[1]~0_combout\ : std_logic;
SIGNAL \inst32|inst23|milhar_q[0]~5_combout\ : std_logic;
SIGNAL \inst32|inst23|milhar_q[1]~2_combout\ : std_logic;
SIGNAL \inst32|inst23|milhar_q[1]~6_combout\ : std_logic;
SIGNAL \inst32|inst23|op_4~0_combout\ : std_logic;
SIGNAL \inst32|inst23|milhar_q[2]~3_combout\ : std_logic;
SIGNAL \inst32|inst23|_~2_combout\ : std_logic;
SIGNAL \inst32|inst23|op_4~1_combout\ : std_logic;
SIGNAL \inst32|inst23|milhar_q[3]~4_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~9_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~10_combout\ : std_logic;
SIGNAL \inst32|inst23|milhar_q[1]~1_combout\ : std_logic;
SIGNAL \inst32|inst23|centena_q[1]~4_combout\ : std_logic;
SIGNAL \inst32|inst23|op_3~1_combout\ : std_logic;
SIGNAL \inst32|inst23|centena_q[3]~3_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~7_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~8_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~11_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~14_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~15_combout\ : std_logic;
SIGNAL \inst32|inst23|unidade_q[0]~2_combout\ : std_logic;
SIGNAL \inst32|inst23|op_1~0_combout\ : std_logic;
SIGNAL \inst32|inst23|unidade_q[2]~0_combout\ : std_logic;
SIGNAL \inst32|inst23|op_1~1_combout\ : std_logic;
SIGNAL \inst32|inst23|unidade_q[3]~1_combout\ : std_logic;
SIGNAL \inst32|inst23|_~0_combout\ : std_logic;
SIGNAL \inst32|inst23|centena_q[0]~5_combout\ : std_logic;
SIGNAL \inst32|inst23|op_3~0_combout\ : std_logic;
SIGNAL \inst32|inst23|centena_q[2]~2_combout\ : std_logic;
SIGNAL \inst32|inst23|_~3_combout\ : std_logic;
SIGNAL \inst32|inst40|final_cont~13_combout\ : std_logic;
SIGNAL \inst1|select_q[1]~7_combout\ : std_logic;
SIGNAL \inst1|_~26_combout\ : std_logic;
SIGNAL \inst1|crono_q[3]~3_combout\ : std_logic;
SIGNAL \inst15|_~1_combout\ : std_logic;
SIGNAL \inst30|inst50|_~4_combout\ : std_logic;
SIGNAL \inst30|inst50|resetcont_q~q\ : std_logic;
SIGNAL \inst1|_~34_combout\ : std_logic;
SIGNAL \inst1|_~27_combout\ : std_logic;
SIGNAL \inst1|_~32_combout\ : std_logic;
SIGNAL \inst1|_~28_combout\ : std_logic;
SIGNAL \inst1|crono_q[2]~2_combout\ : std_logic;
SIGNAL \inst15|deb1_out_c2~1_combout\ : std_logic;
SIGNAL \inst25|inst39|btn2_reg~q\ : std_logic;
SIGNAL \inst25|inst50|_~2_combout\ : std_logic;
SIGNAL \inst25|inst50|resetcont_q~q\ : std_logic;
SIGNAL \inst1|select_q[0]~12_combout\ : std_logic;
SIGNAL \inst1|_~35_combout\ : std_logic;
SIGNAL \inst1|_~31_combout\ : std_logic;
SIGNAL \inst1|_~33_combout\ : std_logic;
SIGNAL \inst1|_~30_combout\ : std_logic;
SIGNAL \inst1|select_q[0]~11_combout\ : std_logic;
SIGNAL \inst1|select_q[0]~13_combout\ : std_logic;
SIGNAL \inst1|prox_pulse~combout\ : std_logic;
SIGNAL \inst1|select_q[1]~9_combout\ : std_logic;
SIGNAL \inst1|select_q[1]~14_combout\ : std_logic;
SIGNAL \inst1|select_q[1]~8_combout\ : std_logic;
SIGNAL \inst1|select_q[1]~10_combout\ : std_logic;
SIGNAL \inst1|crono_q[1]~0_combout\ : std_logic;
SIGNAL \inst1|crono_q[1]~1_combout\ : std_logic;
SIGNAL \inst1|crono_q[4]~4_combout\ : std_logic;
SIGNAL \inst15|_~2_combout\ : std_logic;
SIGNAL \inst32|inst50|_~2_combout\ : std_logic;
SIGNAL \inst32|inst50|resetcont_q~q\ : std_logic;
SIGNAL \inst7|perm_alarme_q[1]~4_combout\ : std_logic;
SIGNAL \inst23|reset_geral_pulse~combout\ : std_logic;
SIGNAL \inst23|q[0]~0_combout\ : std_logic;
SIGNAL \inst13|inst31|_~1_combout\ : std_logic;
SIGNAL \inst15|deb2_out_c1~1_combout\ : std_logic;
SIGNAL \inst13|inst39|btn1_reg~q\ : std_logic;
SIGNAL \inst13|inst39|up_pulse~0_combout\ : std_logic;
SIGNAL \inst13|inst50|pausa_q~0_combout\ : std_logic;
SIGNAL \inst13|inst50|pausa_q~q\ : std_logic;
SIGNAL \inst13|inst21|menu4_ativo_reg~q\ : std_logic;
SIGNAL \inst13|inst21|comp_flag_q~3_combout\ : std_logic;
SIGNAL \inst13|inst21|_~0_combout\ : std_logic;
SIGNAL \inst13|inst21|menu4_visitado_q~q\ : std_logic;
SIGNAL \inst13|inst21|comp_flag_q~2_combout\ : std_logic;
SIGNAL \inst13|inst21|comp_flag_q~q\ : std_logic;
SIGNAL \inst13|inst23|pode_contar~2_combout\ : std_logic;
SIGNAL \inst13|inst37|_~3_combout\ : std_logic;
SIGNAL \inst15|menu_out_c1[0]~2_combout\ : std_logic;
SIGNAL \inst15|menu_out_c1[1]~3_combout\ : std_logic;
SIGNAL \inst13|inst39|q[1]~0_combout\ : std_logic;
SIGNAL \inst13|inst39|q[0]~1_combout\ : std_logic;
SIGNAL \inst13|inst39|op_1~0_combout\ : std_logic;
SIGNAL \inst13|inst39|q[1]~2_combout\ : std_logic;
SIGNAL \inst13|inst39|q[1]~3_combout\ : std_logic;
SIGNAL \inst13|inst37|aux_dig[1]~3_combout\ : std_logic;
SIGNAL \inst13|inst37|_~7_combout\ : std_logic;
SIGNAL \inst13|inst25|_~1_combout\ : std_logic;
SIGNAL \inst13|inst22|reset_cont~0_combout\ : std_logic;
SIGNAL \inst13|inst22|menu_in_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst13|inst22|reset_cont~combout\ : std_logic;
SIGNAL \inst13|inst25|reset_novo_reg~q\ : std_logic;
SIGNAL \inst13|inst23|reset_final_pulse~combout\ : std_logic;
SIGNAL \inst13|inst25|q[3]~1_combout\ : std_logic;
SIGNAL \inst13|inst25|op_1~0_combout\ : std_logic;
SIGNAL \inst13|inst25|op_2~0_combout\ : std_logic;
SIGNAL \inst13|inst25|q[3]~0_combout\ : std_logic;
SIGNAL \inst13|inst25|q[3]~2_combout\ : std_logic;
SIGNAL \inst13|inst25|_~2_combout\ : std_logic;
SIGNAL \inst13|inst25|_~3_combout\ : std_logic;
SIGNAL \inst13|inst25|q[0]~7_combout\ : std_logic;
SIGNAL \inst13|inst25|op_1~2_combout\ : std_logic;
SIGNAL \inst13|inst25|q[1]~5_combout\ : std_logic;
SIGNAL \inst13|inst25|q[1]~6_combout\ : std_logic;
SIGNAL \inst13|inst25|op_1~1_combout\ : std_logic;
SIGNAL \inst13|inst25|q[2]~3_combout\ : std_logic;
SIGNAL \inst13|inst25|q[2]~4_combout\ : std_logic;
SIGNAL \inst13|inst25|_~0_combout\ : std_logic;
SIGNAL \inst13|inst37|aux_dig[4]~2_combout\ : std_logic;
SIGNAL \inst13|inst37|_~6_combout\ : std_logic;
SIGNAL \inst13|inst28|_~1_combout\ : std_logic;
SIGNAL \inst13|inst28|q[3]~1_combout\ : std_logic;
SIGNAL \inst13|inst28|op_1~2_combout\ : std_logic;
SIGNAL \inst13|inst28|q[1]~5_combout\ : std_logic;
SIGNAL \inst13|inst28|q[1]~6_combout\ : std_logic;
SIGNAL \inst13|inst28|op_1~0_combout\ : std_logic;
SIGNAL \inst13|inst28|op_2~0_combout\ : std_logic;
SIGNAL \inst13|inst28|q[3]~0_combout\ : std_logic;
SIGNAL \inst13|inst28|q[3]~2_combout\ : std_logic;
SIGNAL \inst13|inst28|_~2_combout\ : std_logic;
SIGNAL \inst13|inst28|_~3_combout\ : std_logic;
SIGNAL \inst13|inst28|q[0]~7_combout\ : std_logic;
SIGNAL \inst13|inst28|op_1~1_combout\ : std_logic;
SIGNAL \inst13|inst28|q[2]~3_combout\ : std_logic;
SIGNAL \inst13|inst28|q[2]~4_combout\ : std_logic;
SIGNAL \inst13|inst28|_~0_combout\ : std_logic;
SIGNAL \inst13|inst37|aux_dig[3]~0_combout\ : std_logic;
SIGNAL \inst13|inst37|_~4_combout\ : std_logic;
SIGNAL \inst13|inst27|_~1_combout\ : std_logic;
SIGNAL \inst13|inst27|q[3]~1_combout\ : std_logic;
SIGNAL \inst13|inst27|op_1~1_combout\ : std_logic;
SIGNAL \inst13|inst27|op_2~0_combout\ : std_logic;
SIGNAL \inst13|inst27|q[2]~3_combout\ : std_logic;
SIGNAL \inst13|inst27|q[2]~4_combout\ : std_logic;
SIGNAL \inst13|inst27|op_1~0_combout\ : std_logic;
SIGNAL \inst13|inst27|q[3]~0_combout\ : std_logic;
SIGNAL \inst13|inst27|q[3]~2_combout\ : std_logic;
SIGNAL \inst13|inst27|_~2_combout\ : std_logic;
SIGNAL \inst13|inst27|_~3_combout\ : std_logic;
SIGNAL \inst13|inst27|q[0]~7_combout\ : std_logic;
SIGNAL \inst13|inst27|op_1~2_combout\ : std_logic;
SIGNAL \inst13|inst27|q[1]~5_combout\ : std_logic;
SIGNAL \inst13|inst27|q[1]~6_combout\ : std_logic;
SIGNAL \inst13|inst27|_~0_combout\ : std_logic;
SIGNAL \inst13|inst37|aux_dig[2]~1_combout\ : std_logic;
SIGNAL \inst13|inst37|_~5_combout\ : std_logic;
SIGNAL \inst13|inst26|q[3]~1_combout\ : std_logic;
SIGNAL \inst13|inst26|op_1~1_combout\ : std_logic;
SIGNAL \inst13|inst26|op_2~0_combout\ : std_logic;
SIGNAL \inst13|inst26|_~1_combout\ : std_logic;
SIGNAL \inst13|inst26|q[2]~3_combout\ : std_logic;
SIGNAL \inst13|inst26|q[2]~4_combout\ : std_logic;
SIGNAL \inst13|inst26|q[3]~0_combout\ : std_logic;
SIGNAL \inst13|inst26|op_1~0_combout\ : std_logic;
SIGNAL \inst13|inst26|q[3]~2_combout\ : std_logic;
SIGNAL \inst13|inst26|_~2_combout\ : std_logic;
SIGNAL \inst13|inst26|_~3_combout\ : std_logic;
SIGNAL \inst13|inst26|q[0]~7_combout\ : std_logic;
SIGNAL \inst13|inst26|op_1~2_combout\ : std_logic;
SIGNAL \inst13|inst26|q[1]~5_combout\ : std_logic;
SIGNAL \inst13|inst26|q[1]~6_combout\ : std_logic;
SIGNAL \inst13|inst26|_~0_combout\ : std_logic;
SIGNAL \inst13|inst40|_~0_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~5_combout\ : std_logic;
SIGNAL \inst13|inst23|pode_contar~combout\ : std_logic;
SIGNAL \inst13|inst23|unidade_q[1]~3_combout\ : std_logic;
SIGNAL \inst13|inst23|op_1~0_combout\ : std_logic;
SIGNAL \inst13|inst23|unidade_q[3]~0_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~6_combout\ : std_logic;
SIGNAL \inst13|inst23|dezena_q[1]~0_combout\ : std_logic;
SIGNAL \inst13|inst23|dezena_q[1]~4_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~9_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~7_combout\ : std_logic;
SIGNAL \inst13|inst23|op_2~0_combout\ : std_logic;
SIGNAL \inst13|inst23|dezena_q[3]~1_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~8_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~10_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~12_combout\ : std_logic;
SIGNAL \inst13|inst23|op_3~0_combout\ : std_logic;
SIGNAL \inst13|inst23|milhar_q[1]~2_combout\ : std_logic;
SIGNAL \inst13|inst23|milhar_q[1]~8_combout\ : std_logic;
SIGNAL \inst13|inst23|centena_q[3]~2_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~11_combout\ : std_logic;
SIGNAL \inst13|inst23|milhar_q[0]~5_combout\ : std_logic;
SIGNAL \inst13|inst23|milhar_q[1]~9_combout\ : std_logic;
SIGNAL \inst13|inst23|milhar_q[1]~3_combout\ : std_logic;
SIGNAL \inst13|inst23|milhar_q[1]~7_combout\ : std_logic;
SIGNAL \inst13|inst23|op_4~0_combout\ : std_logic;
SIGNAL \inst13|inst23|milhar_q[3]~4_combout\ : std_logic;
SIGNAL \inst13|inst23|_~2_combout\ : std_logic;
SIGNAL \inst13|inst23|op_4~1_combout\ : std_logic;
SIGNAL \inst13|inst23|milhar_q[2]~6_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~13_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~14_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~15_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~16_combout\ : std_logic;
SIGNAL \inst13|inst23|unidade_q[0]~1_combout\ : std_logic;
SIGNAL \inst13|inst23|op_1~1_combout\ : std_logic;
SIGNAL \inst13|inst23|unidade_q[2]~2_combout\ : std_logic;
SIGNAL \inst13|inst23|_~0_combout\ : std_logic;
SIGNAL \inst13|inst23|dezena_q[0]~2_combout\ : std_logic;
SIGNAL \inst13|inst23|op_2~1_combout\ : std_logic;
SIGNAL \inst13|inst23|dezena_q[2]~3_combout\ : std_logic;
SIGNAL \inst13|inst23|_~1_combout\ : std_logic;
SIGNAL \inst13|inst23|centena_q[0]~5_combout\ : std_logic;
SIGNAL \inst13|inst23|centena_q[1]~4_combout\ : std_logic;
SIGNAL \inst13|inst23|op_3~1_combout\ : std_logic;
SIGNAL \inst13|inst23|centena_q[2]~3_combout\ : std_logic;
SIGNAL \inst13|inst23|_~3_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~4_combout\ : std_logic;
SIGNAL \inst13|inst40|final_cont~17_combout\ : std_logic;
SIGNAL \inst7|reset_pulse~1_combout\ : std_logic;
SIGNAL \inst7|reset_pulse~0_combout\ : std_logic;
SIGNAL \inst7|perm_alarme_q[2]~3_combout\ : std_logic;
SIGNAL \inst7|perm_alarme_q[2]~5_combout\ : std_logic;
SIGNAL \inst7|perm_alarme_q[4]~0_combout\ : std_logic;
SIGNAL \inst7|perm_alarme_q[4]~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[4]~30\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[5]~31_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[17]~56\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[18]~57_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[18]~58\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[19]~59_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[19]~60\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[20]~61_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[20]~62\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[21]~63_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[21]~64\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[22]~65_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[22]~66\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[23]~67_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|_~6_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|_~8_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[5]~32\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[6]~33_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[6]~34\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[7]~35_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[7]~36\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[8]~37_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[8]~38\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[9]~39_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[9]~40\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[10]~41_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[10]~42\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[11]~43_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[11]~44\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[12]~45_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[12]~46\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[13]~47_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[13]~48\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[14]~49_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[14]~50\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[15]~51_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[15]~52\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[16]~53_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[16]~54\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[17]~55_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|_~5_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|_~7_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[1]~23_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[1]~24\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[2]~25_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[2]~26\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[3]~27_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[3]~28\ : std_logic;
SIGNAL \inst13|inst46|inst4|q[4]~29_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|_~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|_~2_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|_~0_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|_~3_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|_~4_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|aux_tff~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst4|aux_tff~q\ : std_logic;
SIGNAL \inst7|perm_alarme_q[3]~2_combout\ : std_logic;
SIGNAL \inst28|alarme_out~0_combout\ : std_logic;
SIGNAL \inst10|_~4_combout\ : std_logic;
SIGNAL \inst10|q[1]~12_combout\ : std_logic;
SIGNAL \inst10|q[1]~13\ : std_logic;
SIGNAL \inst10|q[2]~14_combout\ : std_logic;
SIGNAL \inst10|q[2]~15\ : std_logic;
SIGNAL \inst10|q[3]~16_combout\ : std_logic;
SIGNAL \inst10|q[3]~17\ : std_logic;
SIGNAL \inst10|q[4]~18_combout\ : std_logic;
SIGNAL \inst10|q[4]~19\ : std_logic;
SIGNAL \inst10|q[5]~20_combout\ : std_logic;
SIGNAL \inst10|q[5]~21\ : std_logic;
SIGNAL \inst10|q[6]~22_combout\ : std_logic;
SIGNAL \inst10|q[6]~23\ : std_logic;
SIGNAL \inst10|q[7]~24_combout\ : std_logic;
SIGNAL \inst10|q[7]~25\ : std_logic;
SIGNAL \inst10|q[8]~26_combout\ : std_logic;
SIGNAL \inst10|q[8]~27\ : std_logic;
SIGNAL \inst10|q[9]~28_combout\ : std_logic;
SIGNAL \inst10|q[9]~29\ : std_logic;
SIGNAL \inst10|q[10]~30_combout\ : std_logic;
SIGNAL \inst10|q[10]~31\ : std_logic;
SIGNAL \inst10|q[11]~32_combout\ : std_logic;
SIGNAL \inst10|q[11]~33\ : std_logic;
SIGNAL \inst10|q[12]~34_combout\ : std_logic;
SIGNAL \inst10|_~2_combout\ : std_logic;
SIGNAL \inst10|_~0_combout\ : std_logic;
SIGNAL \inst10|_~1_combout\ : std_logic;
SIGNAL \inst10|_~3_combout\ : std_logic;
SIGNAL \inst10|aux_tff~1_combout\ : std_logic;
SIGNAL \inst10|aux_tff~q\ : std_logic;
SIGNAL \inst7|perm_alarme_q[1]~6_combout\ : std_logic;
SIGNAL \inst7|perm_alarme_q[1]~7_combout\ : std_logic;
SIGNAL \inst28|alarme_out~1_combout\ : std_logic;
SIGNAL \inst17|dig_out[3]~22_combout\ : std_logic;
SIGNAL \inst32|inst46|inst5|force_off[3]~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[18]~57\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[19]~58_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|_~2_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|_~3_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|_~0_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|_~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|_~4_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|_~8_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[19]~59\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[20]~60_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[20]~61\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[21]~62_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[21]~63\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[22]~64_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|_~6_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|_~7_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[1]~22_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[1]~23\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[2]~24_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[2]~25\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[3]~26_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[3]~27\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[4]~28_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[4]~29\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[5]~30_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[5]~31\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[6]~32_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[6]~33\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[7]~34_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[7]~35\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[8]~36_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[8]~37\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[9]~38_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[9]~39\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[10]~40_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[10]~41\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[11]~42_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[11]~43\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[12]~44_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[12]~45\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[13]~46_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[13]~47\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[14]~48_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[14]~49\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[15]~50_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[15]~51\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[16]~52_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[16]~53\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[17]~54_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[17]~55\ : std_logic;
SIGNAL \inst13|inst46|inst6|q[18]~56_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|_~5_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|aux_tff~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst6|aux_tff~q\ : std_logic;
SIGNAL \inst32|inst46|inst5|force_off[3]~0_combout\ : std_logic;
SIGNAL \inst32|inst46|inst|aux_tff~1_combout\ : std_logic;
SIGNAL \inst32|inst46|inst|aux_tff~q\ : std_logic;
SIGNAL \inst32|inst46|inst|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst32|inst46|inst1|q[0]~1_combout\ : std_logic;
SIGNAL \inst32|inst46|inst1|_~0_combout\ : std_logic;
SIGNAL \inst30|inst46|inst|aux_tff~1_combout\ : std_logic;
SIGNAL \inst30|inst46|inst|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst30|inst46|inst|aux_tff~q\ : std_logic;
SIGNAL \inst30|inst46|inst|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst30|inst46|inst1|q[0]~1_combout\ : std_logic;
SIGNAL \inst30|inst46|inst1|_~0_combout\ : std_logic;
SIGNAL \inst30|inst46|inst5|alterna[3]~4_combout\ : std_logic;
SIGNAL \inst17|dig_out[3]~21_combout\ : std_logic;
SIGNAL \inst13|inst37|blinkdig1~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|aux_tff~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst13|inst46|inst|aux_tff~q\ : std_logic;
SIGNAL \inst13|inst46|inst|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|inst46|inst1|q[0]~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst1|_~0_combout\ : std_logic;
SIGNAL \inst13|inst46|inst5|alterna[3]~4_combout\ : std_logic;
SIGNAL \inst25|inst46|inst|aux_tff~1_combout\ : std_logic;
SIGNAL \inst25|inst46|inst|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst25|inst46|inst|aux_tff~q\ : std_logic;
SIGNAL \inst25|inst46|inst|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst25|inst46|inst1|q[0]~1_combout\ : std_logic;
SIGNAL \inst25|inst46|inst1|_~0_combout\ : std_logic;
SIGNAL \inst25|inst46|inst5|decoder_out[3]~0_combout\ : std_logic;
SIGNAL \inst25|inst46|inst5|force_off[3]~0_combout\ : std_logic;
SIGNAL \inst17|dig_out[3]~32_combout\ : std_logic;
SIGNAL \inst17|dig_out[3]~23_combout\ : std_logic;
SIGNAL \inst25|inst46|inst5|force_off[2]~1_combout\ : std_logic;
SIGNAL \inst25|inst46|inst5|alterna[2]~4_combout\ : std_logic;
SIGNAL \inst30|inst46|inst5|alterna[2]~5_combout\ : std_logic;
SIGNAL \inst32|inst46|inst5|force_off[2]~2_combout\ : std_logic;
SIGNAL \inst17|dig_out[2]~25_combout\ : std_logic;
SIGNAL \inst13|inst46|inst5|alterna[2]~5_combout\ : std_logic;
SIGNAL \inst13|inst37|_~0_combout\ : std_logic;
SIGNAL \inst17|dig_out[2]~24_combout\ : std_logic;
SIGNAL \inst17|dig_out[2]~26_combout\ : std_logic;
SIGNAL \inst30|inst46|inst5|alterna[1]~6_combout\ : std_logic;
SIGNAL \inst32|inst46|inst5|force_off[1]~3_combout\ : std_logic;
SIGNAL \inst17|dig_out[1]~27_combout\ : std_logic;
SIGNAL \inst13|inst37|_~1_combout\ : std_logic;
SIGNAL \inst13|inst46|inst5|alterna[1]~6_combout\ : std_logic;
SIGNAL \inst25|inst46|inst5|force_off[1]~2_combout\ : std_logic;
SIGNAL \inst25|inst46|inst5|alterna[1]~5_combout\ : std_logic;
SIGNAL \inst17|dig_out[1]~33_combout\ : std_logic;
SIGNAL \inst17|dig_out[1]~28_combout\ : std_logic;
SIGNAL \inst13|inst37|_~2_combout\ : std_logic;
SIGNAL \inst17|dig_out[0]~29_combout\ : std_logic;
SIGNAL \inst25|inst46|inst5|force_off[0]~3_combout\ : std_logic;
SIGNAL \inst25|inst46|inst5|alterna[0]~6_combout\ : std_logic;
SIGNAL \inst32|inst46|inst5|force_off[0]~4_combout\ : std_logic;
SIGNAL \inst17|dig_out[0]~30_combout\ : std_logic;
SIGNAL \inst17|dig_out[0]~31_combout\ : std_logic;
SIGNAL \inst33|led4_out~11_combout\ : std_logic;
SIGNAL \inst33|led3_out~5_combout\ : std_logic;
SIGNAL \inst33|led2_out~5_combout\ : std_logic;
SIGNAL \inst33|led1_out~1_combout\ : std_logic;
SIGNAL \inst25|inst31|_~0_combout\ : std_logic;
SIGNAL \inst25|inst31|cnt_out[2]~13_combout\ : std_logic;
SIGNAL \inst25|inst31|cnt_out[1]~12_combout\ : std_logic;
SIGNAL \inst25|inst31|cnt_out[0]~14_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~43_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[0]~30_combout\ : std_logic;
SIGNAL \inst25|inst31|dzn_out[0]~15_combout\ : std_logic;
SIGNAL \inst25|inst31|dzn_out[1]~13_combout\ : std_logic;
SIGNAL \inst25|inst31|dzn_out[2]~14_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[0]~32_combout\ : std_logic;
SIGNAL \inst25|inst46|inst5|alterna[2]~7_combout\ : std_logic;
SIGNAL \inst25|inst31|dzn_out[3]~12_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~164_combout\ : std_logic;
SIGNAL \inst25|inst31|mil_out[3]~12_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~163_combout\ : std_logic;
SIGNAL \inst25|inst31|mil_out[1]~13_combout\ : std_logic;
SIGNAL \inst25|inst31|mil_out[0]~15_combout\ : std_logic;
SIGNAL \inst25|inst31|mil_out[2]~14_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[0]~31_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[0]~33_combout\ : std_logic;
SIGNAL \inst25|inst|_~0_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[0]~34_combout\ : std_logic;
SIGNAL \inst25|inst31|und_out[2]~14_combout\ : std_logic;
SIGNAL \inst25|inst31|und_out[1]~13_combout\ : std_logic;
SIGNAL \inst25|inst31|und_out[3]~12_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~42_combout\ : std_logic;
SIGNAL \inst25|inst31|und_out[0]~15_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[0]~29_combout\ : std_logic;
SIGNAL \inst17|seg_out[6]~44_combout\ : std_logic;
SIGNAL \inst13|inst31|_~0_combout\ : std_logic;
SIGNAL \inst13|inst31|dzn_out[1]~12_combout\ : std_logic;
SIGNAL \inst13|inst31|dzn_out[2]~13_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~45_combout\ : std_logic;
SIGNAL \inst13|inst31|dzn_out[0]~14_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[0]~32_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~47_combout\ : std_logic;
SIGNAL \inst13|inst31|mil_out[0]~14_combout\ : std_logic;
SIGNAL \inst13|inst31|mil_out[1]~12_combout\ : std_logic;
SIGNAL \inst13|inst31|mil_out[2]~13_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[0]~34_combout\ : std_logic;
SIGNAL \inst13|inst31|cnt_out[1]~12_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~46_combout\ : std_logic;
SIGNAL \inst13|inst31|cnt_out[0]~14_combout\ : std_logic;
SIGNAL \inst13|inst31|cnt_out[2]~13_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[0]~33_combout\ : std_logic;
SIGNAL \inst13|inst|_~0_combout\ : std_logic;
SIGNAL \inst13|inst31|und_out[3]~12_combout\ : std_logic;
SIGNAL \inst13|inst31|und_out[2]~14_combout\ : std_logic;
SIGNAL \inst13|inst31|und_out[0]~15_combout\ : std_logic;
SIGNAL \inst13|inst31|und_out[1]~13_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[0]~29_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[0]~30_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[0]~31_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[0]~35_combout\ : std_logic;
SIGNAL \inst17|seg_out[6]~48_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[0]~34_combout\ : std_logic;
SIGNAL \inst30|inst31|_~0_combout\ : std_logic;
SIGNAL \inst30|inst31|mil_out[1]~13_combout\ : std_logic;
SIGNAL \inst30|inst31|mil_out[2]~14_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~165_combout\ : std_logic;
SIGNAL \inst30|inst31|mil_out[0]~15_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[0]~31_combout\ : std_logic;
SIGNAL \inst30|inst31|dzn_out[1]~12_combout\ : std_logic;
SIGNAL \inst30|inst31|dzn_out[0]~14_combout\ : std_logic;
SIGNAL \inst30|inst31|dzn_out[2]~13_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[0]~32_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~51_combout\ : std_logic;
SIGNAL \inst30|inst31|cnt_out[2]~14_combout\ : std_logic;
SIGNAL \inst30|inst31|cnt_out[0]~15_combout\ : std_logic;
SIGNAL \inst30|inst31|cnt_out[3]~12_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~50_combout\ : std_logic;
SIGNAL \inst30|inst31|cnt_out[1]~13_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[0]~30_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[0]~33_combout\ : std_logic;
SIGNAL \inst30|inst31|und_out[2]~13_combout\ : std_logic;
SIGNAL \inst30|inst|_~0_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~49_combout\ : std_logic;
SIGNAL \inst30|inst31|und_out[1]~12_combout\ : std_logic;
SIGNAL \inst30|inst31|und_out[0]~14_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[0]~29_combout\ : std_logic;
SIGNAL \inst17|seg_out[6]~52_combout\ : std_logic;
SIGNAL \inst32|inst31|_~1_combout\ : std_logic;
SIGNAL \inst32|inst31|dzn_out[2]~14_combout\ : std_logic;
SIGNAL \inst32|inst31|dzn_out[0]~15_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~167_combout\ : std_logic;
SIGNAL \inst32|inst31|dzn_out[1]~13_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[0]~30_combout\ : std_logic;
SIGNAL \inst32|inst31|cnt_out[1]~12_combout\ : std_logic;
SIGNAL \inst32|inst31|cnt_out[2]~13_combout\ : std_logic;
SIGNAL \inst32|inst31|cnt_out[0]~14_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[0]~32_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~54_combout\ : std_logic;
SIGNAL \inst32|inst31|mil_out[1]~12_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~53_combout\ : std_logic;
SIGNAL \inst32|inst31|mil_out[0]~14_combout\ : std_logic;
SIGNAL \inst32|inst31|mil_out[2]~13_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[0]~31_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[0]~33_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[0]~34_combout\ : std_logic;
SIGNAL \inst32|inst31|und_out[2]~14_combout\ : std_logic;
SIGNAL \inst32|inst|_~0_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~166_combout\ : std_logic;
SIGNAL \inst32|inst31|und_out[1]~13_combout\ : std_logic;
SIGNAL \inst32|inst31|und_out[0]~15_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[0]~29_combout\ : std_logic;
SIGNAL \inst17|seg_out[6]~55_combout\ : std_logic;
SIGNAL \inst17|seg_out[6]~56_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[1]~36_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[1]~38_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[1]~37_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[1]~39_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[1]~35_combout\ : std_logic;
SIGNAL \inst17|seg_out[5]~57_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[1]~39_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[1]~40_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[1]~38_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[1]~36_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[1]~37_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[1]~41_combout\ : std_logic;
SIGNAL \inst17|seg_out[5]~58_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[1]~38_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[1]~36_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[1]~37_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[1]~39_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[1]~35_combout\ : std_logic;
SIGNAL \inst17|seg_out[5]~59_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[1]~35_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[1]~37_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[1]~36_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[1]~38_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[1]~39_combout\ : std_logic;
SIGNAL \inst17|seg_out[5]~60_combout\ : std_logic;
SIGNAL \inst17|seg_out[5]~61_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~90_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~89_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~91_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~92_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~85_combout\ : std_logic;
SIGNAL \inst32|inst31|cnt_out[3]~15_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~86_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~82_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~83_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~84_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~87_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~88_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~93_combout\ : std_logic;
SIGNAL \inst32|inst31|mil_out[3]~15_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~75_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~76_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~73_combout\ : std_logic;
SIGNAL \inst32|inst31|dzn_out[3]~12_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~74_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~68_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~69_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~70_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~71_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~72_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~77_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~168_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~78_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~79_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~80_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~81_combout\ : std_logic;
SIGNAL \inst32|inst31|und_out[3]~12_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~62_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~63_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~66_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~65_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~64_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~67_combout\ : std_logic;
SIGNAL \inst17|seg_out[4]~94_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[3]~43_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[3]~42_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[3]~41_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[3]~44_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[3]~40_combout\ : std_logic;
SIGNAL \inst17|seg_out[3]~99_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[3]~40_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[3]~41_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[3]~42_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[3]~43_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[3]~44_combout\ : std_logic;
SIGNAL \inst17|seg_out[3]~95_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[3]~40_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[3]~41_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[3]~43_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[3]~42_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[3]~44_combout\ : std_logic;
SIGNAL \inst17|seg_out[3]~100_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[3]~44_combout\ : std_logic;
SIGNAL \inst17|seg_out[3]~96_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[3]~43_combout\ : std_logic;
SIGNAL \inst17|seg_out[3]~97_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[3]~42_combout\ : std_logic;
SIGNAL \inst17|seg_out[3]~98_combout\ : std_logic;
SIGNAL \inst17|seg_out[3]~101_combout\ : std_logic;
SIGNAL \inst13|inst31|dzn_out[3]~15_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~125_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~126_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~130_combout\ : std_logic;
SIGNAL \inst13|inst31|cnt_out[3]~15_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~127_combout\ : std_logic;
SIGNAL \inst13|inst31|mil_out[3]~15_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~128_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~129_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~131_combout\ : std_logic;
SIGNAL \inst25|inst31|cnt_out[3]~15_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~109_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~110_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~111_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~107_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~106_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~169_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~108_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~102_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~103_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~104_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~105_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~112_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~119_combout\ : std_logic;
SIGNAL \inst30|inst31|mil_out[3]~12_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~120_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~121_combout\ : std_logic;
SIGNAL \inst30|inst31|und_out[3]~15_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~122_combout\ : std_logic;
SIGNAL \inst30|inst31|dzn_out[3]~15_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~117_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~118_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~123_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~115_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~113_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~114_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~116_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~124_combout\ : std_logic;
SIGNAL \inst17|seg_out[2]~132_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[5]~47_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[5]~48_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[5]~46_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[5]~49_combout\ : std_logic;
SIGNAL \inst13|inst|segmento_out[5]~45_combout\ : std_logic;
SIGNAL \inst17|seg_out[1]~133_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[5]~49_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[5]~45_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[5]~46_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[5]~48_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[5]~47_combout\ : std_logic;
SIGNAL \inst25|inst|segmento_out[5]~50_combout\ : std_logic;
SIGNAL \inst17|seg_out[1]~134_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[5]~47_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[5]~45_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[5]~46_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[5]~48_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[5]~49_combout\ : std_logic;
SIGNAL \inst30|inst|segmento_out[5]~50_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[5]~48_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[5]~46_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[5]~47_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[5]~49_combout\ : std_logic;
SIGNAL \inst32|inst|segmento_out[5]~45_combout\ : std_logic;
SIGNAL \inst17|seg_out[1]~135_combout\ : std_logic;
SIGNAL \inst17|seg_out[1]~136_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~160_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~161_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~153_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~154_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~155_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~157_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~156_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~158_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~159_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~149_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~150_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~151_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~140_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~139_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~138_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~141_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~137_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~142_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~144_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~145_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~146_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~147_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~143_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~148_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~152_combout\ : std_logic;
SIGNAL \inst17|seg_out[0]~162_combout\ : std_logic;
SIGNAL \inst10|q\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst30|inst23|milhar_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst46|inst|q\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst13|inst23|dezena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst46|inst4|q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst1|crono_q\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst30|inst37|digsel_q\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst11|q\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \inst25|inst39|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst7|flag_reg\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst13|inst46|inst6|q\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst7|perm_alarme_q\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst23|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst30|inst28|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst25|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|reset_c_pulse\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst32|inst25|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst23|unidade_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|inst39|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst25|inst26|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst23|dezena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst27|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst46|inst5|alterna\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst23|centena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|flag_pulse\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst25|inst28|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst23|milhar_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|inst23|dezena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|inst46|inst5|alterna\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|inst23|centena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst46|inst1|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst13|inst39|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst13|inst46|inst1|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst13|inst27|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|select_q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst30|inst25|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst26|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst28|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst25|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst23|unidade_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst37|digsel_q\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst13|inst23|milhar_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|inst27|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst23|centena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|inst28|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst46|inst5|alterna\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|inst23|unidade_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|inst26|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|inst23|unidade_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|inst46|inst1|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst32|inst23|dezena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|inst27|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|inst23|centena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|inst23|milhar_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|inst39|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst23|reset_c_reg\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst32|inst46|inst1|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst7|deb_reg\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst30|inst26|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst30|inst46|inst5|alterna\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst25|inst22|menu_in_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst13|inst37|digsel_q\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst13|inst22|menu_in_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst32|inst37|digsel_q\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst32|inst22|menu_in_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst30|inst22|menu_in_reg\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst25|inst37|aux_dig\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst13|inst37|aux_dig\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst32|inst37|aux_dig\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst30|inst37|aux_dig\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst30|inst23|ALT_INV_reset_final_pulse~combout\ : std_logic;
SIGNAL \inst25|inst23|ALT_INV_reset_final_pulse~combout\ : std_logic;
SIGNAL \inst13|inst23|ALT_INV_reset_final_pulse~combout\ : std_logic;
SIGNAL \inst32|inst23|ALT_INV_reset_final_pulse~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

buzzer <= ww_buzzer;
ww_clock <= clock;
ww_key <= key;
DIG <= ww_DIG;
led <= ww_led;
SEG <= ww_SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst8|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst8|aux_tff~q\);

\inst26|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst26|aux_tff~q\);

\inst5|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|aux_tff~q\);

\inst31|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst31|aux_tff~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\inst13|inst46|inst|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|inst46|inst|aux_tff~q\);

\inst6|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|aux_tff~q\);

\inst32|inst46|inst|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst32|inst46|inst|aux_tff~q\);

\inst30|inst46|inst|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst30|inst46|inst|aux_tff~q\);

\inst25|inst46|inst|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst25|inst46|inst|aux_tff~q\);
\inst30|inst23|ALT_INV_reset_final_pulse~combout\ <= NOT \inst30|inst23|reset_final_pulse~combout\;
\inst25|inst23|ALT_INV_reset_final_pulse~combout\ <= NOT \inst25|inst23|reset_final_pulse~combout\;
\inst13|inst23|ALT_INV_reset_final_pulse~combout\ <= NOT \inst13|inst23|reset_final_pulse~combout\;
\inst32|inst23|ALT_INV_reset_final_pulse~combout\ <= NOT \inst32|inst23|reset_final_pulse~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X30_Y24_N2
\buzzer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|alarme_out~1_combout\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\DIG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|dig_out[3]~23_combout\,
	devoe => ww_devoe,
	o => \DIG[1]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\DIG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|dig_out[2]~26_combout\,
	devoe => ww_devoe,
	o => \DIG[2]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\DIG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|dig_out[1]~28_combout\,
	devoe => ww_devoe,
	o => \DIG[3]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\DIG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|dig_out[0]~31_combout\,
	devoe => ww_devoe,
	o => \DIG[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|led4_out~11_combout\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|led3_out~5_combout\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|led2_out~5_combout\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|led1_out~1_combout\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\SEG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|seg_out[6]~56_combout\,
	devoe => ww_devoe,
	o => \SEG[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\SEG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|seg_out[5]~61_combout\,
	devoe => ww_devoe,
	o => \SEG[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\SEG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|seg_out[4]~94_combout\,
	devoe => ww_devoe,
	o => \SEG[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\SEG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|seg_out[3]~101_combout\,
	devoe => ww_devoe,
	o => \SEG[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\SEG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|seg_out[2]~132_combout\,
	devoe => ww_devoe,
	o => \SEG[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\SEG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|seg_out[1]~136_combout\,
	devoe => ww_devoe,
	o => \SEG[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\SEG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|seg_out[0]~162_combout\,
	devoe => ww_devoe,
	o => \SEG[6]~output_o\);

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

-- Location: LCCOMB_X33_Y13_N2
\inst11|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|aux_tff~1_combout\ = !\inst11|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|aux_tff~q\,
	combout => \inst11|aux_tff~1_combout\);

-- Location: LCCOMB_X31_Y13_N16
\inst11|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|_~8_combout\ = (!\inst11|q\(0) & !\inst11|_~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11|q\(0),
	datad => \inst11|_~7_combout\,
	combout => \inst11|_~8_combout\);

-- Location: FF_X31_Y13_N17
\inst11|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(0));

-- Location: LCCOMB_X32_Y13_N8
\inst11|q[1]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[1]~24_combout\ = (\inst11|q\(0) & (\inst11|q\(1) $ (VCC))) # (!\inst11|q\(0) & (\inst11|q\(1) & VCC))
-- \inst11|q[1]~25\ = CARRY((\inst11|q\(0) & \inst11|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(0),
	datab => \inst11|q\(1),
	datad => VCC,
	combout => \inst11|q[1]~24_combout\,
	cout => \inst11|q[1]~25\);

-- Location: FF_X32_Y13_N9
\inst11|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[1]~24_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(1));

-- Location: LCCOMB_X32_Y13_N10
\inst11|q[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[2]~26_combout\ = (\inst11|q\(2) & (!\inst11|q[1]~25\)) # (!\inst11|q\(2) & ((\inst11|q[1]~25\) # (GND)))
-- \inst11|q[2]~27\ = CARRY((!\inst11|q[1]~25\) # (!\inst11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(2),
	datad => VCC,
	cin => \inst11|q[1]~25\,
	combout => \inst11|q[2]~26_combout\,
	cout => \inst11|q[2]~27\);

-- Location: FF_X32_Y13_N11
\inst11|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[2]~26_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(2));

-- Location: LCCOMB_X32_Y13_N12
\inst11|q[3]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[3]~28_combout\ = (\inst11|q\(3) & (\inst11|q[2]~27\ $ (GND))) # (!\inst11|q\(3) & (!\inst11|q[2]~27\ & VCC))
-- \inst11|q[3]~29\ = CARRY((\inst11|q\(3) & !\inst11|q[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(3),
	datad => VCC,
	cin => \inst11|q[2]~27\,
	combout => \inst11|q[3]~28_combout\,
	cout => \inst11|q[3]~29\);

-- Location: FF_X32_Y13_N13
\inst11|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[3]~28_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(3));

-- Location: LCCOMB_X32_Y13_N14
\inst11|q[4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[4]~30_combout\ = (\inst11|q\(4) & (!\inst11|q[3]~29\)) # (!\inst11|q\(4) & ((\inst11|q[3]~29\) # (GND)))
-- \inst11|q[4]~31\ = CARRY((!\inst11|q[3]~29\) # (!\inst11|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(4),
	datad => VCC,
	cin => \inst11|q[3]~29\,
	combout => \inst11|q[4]~30_combout\,
	cout => \inst11|q[4]~31\);

-- Location: FF_X32_Y13_N15
\inst11|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[4]~30_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(4));

-- Location: LCCOMB_X32_Y13_N16
\inst11|q[5]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[5]~32_combout\ = (\inst11|q\(5) & (\inst11|q[4]~31\ $ (GND))) # (!\inst11|q\(5) & (!\inst11|q[4]~31\ & VCC))
-- \inst11|q[5]~33\ = CARRY((\inst11|q\(5) & !\inst11|q[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(5),
	datad => VCC,
	cin => \inst11|q[4]~31\,
	combout => \inst11|q[5]~32_combout\,
	cout => \inst11|q[5]~33\);

-- Location: FF_X32_Y13_N17
\inst11|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[5]~32_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(5));

-- Location: LCCOMB_X32_Y13_N18
\inst11|q[6]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[6]~34_combout\ = (\inst11|q\(6) & (!\inst11|q[5]~33\)) # (!\inst11|q\(6) & ((\inst11|q[5]~33\) # (GND)))
-- \inst11|q[6]~35\ = CARRY((!\inst11|q[5]~33\) # (!\inst11|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(6),
	datad => VCC,
	cin => \inst11|q[5]~33\,
	combout => \inst11|q[6]~34_combout\,
	cout => \inst11|q[6]~35\);

-- Location: FF_X32_Y13_N19
\inst11|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[6]~34_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(6));

-- Location: LCCOMB_X32_Y13_N20
\inst11|q[7]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[7]~36_combout\ = (\inst11|q\(7) & (\inst11|q[6]~35\ $ (GND))) # (!\inst11|q\(7) & (!\inst11|q[6]~35\ & VCC))
-- \inst11|q[7]~37\ = CARRY((\inst11|q\(7) & !\inst11|q[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(7),
	datad => VCC,
	cin => \inst11|q[6]~35\,
	combout => \inst11|q[7]~36_combout\,
	cout => \inst11|q[7]~37\);

-- Location: FF_X32_Y13_N21
\inst11|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[7]~36_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(7));

-- Location: LCCOMB_X32_Y13_N22
\inst11|q[8]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[8]~38_combout\ = (\inst11|q\(8) & (!\inst11|q[7]~37\)) # (!\inst11|q\(8) & ((\inst11|q[7]~37\) # (GND)))
-- \inst11|q[8]~39\ = CARRY((!\inst11|q[7]~37\) # (!\inst11|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(8),
	datad => VCC,
	cin => \inst11|q[7]~37\,
	combout => \inst11|q[8]~38_combout\,
	cout => \inst11|q[8]~39\);

-- Location: FF_X32_Y13_N23
\inst11|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[8]~38_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(8));

-- Location: LCCOMB_X32_Y13_N24
\inst11|q[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[9]~40_combout\ = (\inst11|q\(9) & (\inst11|q[8]~39\ $ (GND))) # (!\inst11|q\(9) & (!\inst11|q[8]~39\ & VCC))
-- \inst11|q[9]~41\ = CARRY((\inst11|q\(9) & !\inst11|q[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(9),
	datad => VCC,
	cin => \inst11|q[8]~39\,
	combout => \inst11|q[9]~40_combout\,
	cout => \inst11|q[9]~41\);

-- Location: FF_X32_Y13_N25
\inst11|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[9]~40_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(9));

-- Location: LCCOMB_X32_Y13_N26
\inst11|q[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[10]~42_combout\ = (\inst11|q\(10) & (!\inst11|q[9]~41\)) # (!\inst11|q\(10) & ((\inst11|q[9]~41\) # (GND)))
-- \inst11|q[10]~43\ = CARRY((!\inst11|q[9]~41\) # (!\inst11|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(10),
	datad => VCC,
	cin => \inst11|q[9]~41\,
	combout => \inst11|q[10]~42_combout\,
	cout => \inst11|q[10]~43\);

-- Location: FF_X32_Y13_N27
\inst11|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[10]~42_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(10));

-- Location: LCCOMB_X32_Y13_N28
\inst11|q[11]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[11]~44_combout\ = (\inst11|q\(11) & (\inst11|q[10]~43\ $ (GND))) # (!\inst11|q\(11) & (!\inst11|q[10]~43\ & VCC))
-- \inst11|q[11]~45\ = CARRY((\inst11|q\(11) & !\inst11|q[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(11),
	datad => VCC,
	cin => \inst11|q[10]~43\,
	combout => \inst11|q[11]~44_combout\,
	cout => \inst11|q[11]~45\);

-- Location: FF_X32_Y13_N29
\inst11|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[11]~44_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(11));

-- Location: LCCOMB_X32_Y13_N30
\inst11|q[12]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[12]~46_combout\ = (\inst11|q\(12) & (!\inst11|q[11]~45\)) # (!\inst11|q\(12) & ((\inst11|q[11]~45\) # (GND)))
-- \inst11|q[12]~47\ = CARRY((!\inst11|q[11]~45\) # (!\inst11|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(12),
	datad => VCC,
	cin => \inst11|q[11]~45\,
	combout => \inst11|q[12]~46_combout\,
	cout => \inst11|q[12]~47\);

-- Location: FF_X32_Y13_N31
\inst11|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[12]~46_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(12));

-- Location: LCCOMB_X32_Y12_N0
\inst11|q[13]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[13]~48_combout\ = (\inst11|q\(13) & (\inst11|q[12]~47\ $ (GND))) # (!\inst11|q\(13) & (!\inst11|q[12]~47\ & VCC))
-- \inst11|q[13]~49\ = CARRY((\inst11|q\(13) & !\inst11|q[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(13),
	datad => VCC,
	cin => \inst11|q[12]~47\,
	combout => \inst11|q[13]~48_combout\,
	cout => \inst11|q[13]~49\);

-- Location: FF_X32_Y12_N1
\inst11|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[13]~48_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(13));

-- Location: LCCOMB_X32_Y12_N2
\inst11|q[14]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[14]~50_combout\ = (\inst11|q\(14) & (!\inst11|q[13]~49\)) # (!\inst11|q\(14) & ((\inst11|q[13]~49\) # (GND)))
-- \inst11|q[14]~51\ = CARRY((!\inst11|q[13]~49\) # (!\inst11|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(14),
	datad => VCC,
	cin => \inst11|q[13]~49\,
	combout => \inst11|q[14]~50_combout\,
	cout => \inst11|q[14]~51\);

-- Location: FF_X32_Y12_N3
\inst11|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[14]~50_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(14));

-- Location: LCCOMB_X32_Y12_N4
\inst11|q[15]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[15]~52_combout\ = (\inst11|q\(15) & (\inst11|q[14]~51\ $ (GND))) # (!\inst11|q\(15) & (!\inst11|q[14]~51\ & VCC))
-- \inst11|q[15]~53\ = CARRY((\inst11|q\(15) & !\inst11|q[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(15),
	datad => VCC,
	cin => \inst11|q[14]~51\,
	combout => \inst11|q[15]~52_combout\,
	cout => \inst11|q[15]~53\);

-- Location: FF_X32_Y12_N5
\inst11|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[15]~52_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(15));

-- Location: LCCOMB_X32_Y12_N6
\inst11|q[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[16]~54_combout\ = (\inst11|q\(16) & (!\inst11|q[15]~53\)) # (!\inst11|q\(16) & ((\inst11|q[15]~53\) # (GND)))
-- \inst11|q[16]~55\ = CARRY((!\inst11|q[15]~53\) # (!\inst11|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(16),
	datad => VCC,
	cin => \inst11|q[15]~53\,
	combout => \inst11|q[16]~54_combout\,
	cout => \inst11|q[16]~55\);

-- Location: FF_X32_Y12_N7
\inst11|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[16]~54_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(16));

-- Location: LCCOMB_X32_Y12_N8
\inst11|q[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[17]~56_combout\ = (\inst11|q\(17) & (\inst11|q[16]~55\ $ (GND))) # (!\inst11|q\(17) & (!\inst11|q[16]~55\ & VCC))
-- \inst11|q[17]~57\ = CARRY((\inst11|q\(17) & !\inst11|q[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(17),
	datad => VCC,
	cin => \inst11|q[16]~55\,
	combout => \inst11|q[17]~56_combout\,
	cout => \inst11|q[17]~57\);

-- Location: FF_X32_Y12_N9
\inst11|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[17]~56_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(17));

-- Location: LCCOMB_X32_Y12_N10
\inst11|q[18]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[18]~58_combout\ = (\inst11|q\(18) & (!\inst11|q[17]~57\)) # (!\inst11|q\(18) & ((\inst11|q[17]~57\) # (GND)))
-- \inst11|q[18]~59\ = CARRY((!\inst11|q[17]~57\) # (!\inst11|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(18),
	datad => VCC,
	cin => \inst11|q[17]~57\,
	combout => \inst11|q[18]~58_combout\,
	cout => \inst11|q[18]~59\);

-- Location: FF_X32_Y12_N11
\inst11|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[18]~58_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(18));

-- Location: LCCOMB_X32_Y12_N12
\inst11|q[19]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[19]~60_combout\ = (\inst11|q\(19) & (\inst11|q[18]~59\ $ (GND))) # (!\inst11|q\(19) & (!\inst11|q[18]~59\ & VCC))
-- \inst11|q[19]~61\ = CARRY((\inst11|q\(19) & !\inst11|q[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(19),
	datad => VCC,
	cin => \inst11|q[18]~59\,
	combout => \inst11|q[19]~60_combout\,
	cout => \inst11|q[19]~61\);

-- Location: FF_X32_Y12_N13
\inst11|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[19]~60_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(19));

-- Location: LCCOMB_X32_Y12_N14
\inst11|q[20]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[20]~62_combout\ = (\inst11|q\(20) & (!\inst11|q[19]~61\)) # (!\inst11|q\(20) & ((\inst11|q[19]~61\) # (GND)))
-- \inst11|q[20]~63\ = CARRY((!\inst11|q[19]~61\) # (!\inst11|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(20),
	datad => VCC,
	cin => \inst11|q[19]~61\,
	combout => \inst11|q[20]~62_combout\,
	cout => \inst11|q[20]~63\);

-- Location: FF_X32_Y12_N15
\inst11|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[20]~62_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(20));

-- Location: LCCOMB_X32_Y12_N16
\inst11|q[21]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[21]~64_combout\ = (\inst11|q\(21) & (\inst11|q[20]~63\ $ (GND))) # (!\inst11|q\(21) & (!\inst11|q[20]~63\ & VCC))
-- \inst11|q[21]~65\ = CARRY((\inst11|q\(21) & !\inst11|q[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(21),
	datad => VCC,
	cin => \inst11|q[20]~63\,
	combout => \inst11|q[21]~64_combout\,
	cout => \inst11|q[21]~65\);

-- Location: FF_X32_Y12_N17
\inst11|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[21]~64_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(21));

-- Location: LCCOMB_X32_Y12_N18
\inst11|q[22]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[22]~66_combout\ = (\inst11|q\(22) & (!\inst11|q[21]~65\)) # (!\inst11|q\(22) & ((\inst11|q[21]~65\) # (GND)))
-- \inst11|q[22]~67\ = CARRY((!\inst11|q[21]~65\) # (!\inst11|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(22),
	datad => VCC,
	cin => \inst11|q[21]~65\,
	combout => \inst11|q[22]~66_combout\,
	cout => \inst11|q[22]~67\);

-- Location: FF_X32_Y12_N19
\inst11|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[22]~66_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(22));

-- Location: LCCOMB_X32_Y12_N20
\inst11|q[23]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[23]~68_combout\ = (\inst11|q\(23) & (\inst11|q[22]~67\ $ (GND))) # (!\inst11|q\(23) & (!\inst11|q[22]~67\ & VCC))
-- \inst11|q[23]~69\ = CARRY((\inst11|q\(23) & !\inst11|q[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst11|q\(23),
	datad => VCC,
	cin => \inst11|q[22]~67\,
	combout => \inst11|q[23]~68_combout\,
	cout => \inst11|q[23]~69\);

-- Location: FF_X32_Y12_N21
\inst11|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[23]~68_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(23));

-- Location: LCCOMB_X32_Y12_N22
\inst11|q[24]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|q[24]~70_combout\ = \inst11|q\(24) $ (\inst11|q[23]~69\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(24),
	cin => \inst11|q[23]~69\,
	combout => \inst11|q[24]~70_combout\);

-- Location: FF_X32_Y12_N23
\inst11|q[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|q[24]~70_combout\,
	sclr => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|q\(24));

-- Location: LCCOMB_X32_Y12_N24
\inst11|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|_~6_combout\ = (\inst11|q\(21) & (\inst11|q\(22) & (\inst11|q\(20) & !\inst11|q\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(21),
	datab => \inst11|q\(22),
	datac => \inst11|q\(20),
	datad => \inst11|q\(23),
	combout => \inst11|_~6_combout\);

-- Location: LCCOMB_X32_Y12_N30
\inst11|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|_~5_combout\ = (\inst11|q\(18) & (\inst11|q\(16) & (!\inst11|q\(17) & \inst11|q\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(18),
	datab => \inst11|q\(16),
	datac => \inst11|q\(17),
	datad => \inst11|q\(19),
	combout => \inst11|_~5_combout\);

-- Location: LCCOMB_X32_Y13_N6
\inst11|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|_~2_combout\ = (!\inst11|q\(8) & (!\inst11|q\(9) & (!\inst11|q\(10) & \inst11|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(8),
	datab => \inst11|q\(9),
	datac => \inst11|q\(10),
	datad => \inst11|q\(11),
	combout => \inst11|_~2_combout\);

-- Location: LCCOMB_X32_Y13_N4
\inst11|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|_~1_combout\ = (!\inst11|q\(7) & (\inst11|q\(6) & (!\inst11|q\(4) & !\inst11|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(7),
	datab => \inst11|q\(6),
	datac => \inst11|q\(4),
	datad => \inst11|q\(5),
	combout => \inst11|_~1_combout\);

-- Location: LCCOMB_X31_Y13_N26
\inst11|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|_~0_combout\ = (!\inst11|q\(0) & (!\inst11|q\(3) & (!\inst11|q\(2) & !\inst11|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(0),
	datab => \inst11|q\(3),
	datac => \inst11|q\(2),
	datad => \inst11|q\(1),
	combout => \inst11|_~0_combout\);

-- Location: LCCOMB_X32_Y12_N28
\inst11|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|_~3_combout\ = (!\inst11|q\(15) & (\inst11|q\(13) & (\inst11|q\(12) & \inst11|q\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(15),
	datab => \inst11|q\(13),
	datac => \inst11|q\(12),
	datad => \inst11|q\(14),
	combout => \inst11|_~3_combout\);

-- Location: LCCOMB_X32_Y13_N0
\inst11|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|_~4_combout\ = (\inst11|_~2_combout\ & (\inst11|_~1_combout\ & (\inst11|_~0_combout\ & \inst11|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|_~2_combout\,
	datab => \inst11|_~1_combout\,
	datac => \inst11|_~0_combout\,
	datad => \inst11|_~3_combout\,
	combout => \inst11|_~4_combout\);

-- Location: LCCOMB_X32_Y13_N2
\inst11|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|_~7_combout\ = (\inst11|q\(24) & (\inst11|_~6_combout\ & (\inst11|_~5_combout\ & \inst11|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|q\(24),
	datab => \inst11|_~6_combout\,
	datac => \inst11|_~5_combout\,
	datad => \inst11|_~4_combout\,
	combout => \inst11|_~7_combout\);

-- Location: FF_X33_Y13_N3
\inst11|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|aux_tff~1_combout\,
	ena => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|aux_tff~q\);

-- Location: LCCOMB_X33_Y13_N12
\inst5|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|aux_tff~1_combout\ = !\inst5|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|aux_tff~q\,
	combout => \inst5|aux_tff~1_combout\);

-- Location: LCCOMB_X33_Y13_N8
\inst5|aux_tff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|aux_tff~feeder_combout\ = \inst5|aux_tff~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|aux_tff~1_combout\,
	combout => \inst5|aux_tff~feeder_combout\);

-- Location: FF_X33_Y13_N9
\inst5|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|aux_tff~feeder_combout\,
	ena => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|aux_tff~q\);

-- Location: CLKCTRL_G7
\inst5|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|aux_tff~clkctrl_outclk\);

-- Location: LCCOMB_X9_Y9_N18
\inst6|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|aux_tff~1_combout\ = !\inst6|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|aux_tff~q\,
	combout => \inst6|aux_tff~1_combout\);

-- Location: LCCOMB_X9_Y9_N30
\inst6|aux_tff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6|aux_tff~feeder_combout\ = \inst6|aux_tff~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|aux_tff~1_combout\,
	combout => \inst6|aux_tff~feeder_combout\);

-- Location: LCCOMB_X7_Y9_N14
\inst13|inst46|inst|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|_~5_combout\ = (!\inst13|inst46|inst|q\(0) & !\inst13|inst46|inst|_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst46|inst|q\(0),
	datad => \inst13|inst46|inst|_~4_combout\,
	combout => \inst13|inst46|inst|_~5_combout\);

-- Location: FF_X7_Y9_N15
\inst13|inst46|inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|_~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(0));

-- Location: LCCOMB_X8_Y9_N4
\inst13|inst46|inst|q[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[1]~14_combout\ = (\inst13|inst46|inst|q\(0) & (\inst13|inst46|inst|q\(1) $ (VCC))) # (!\inst13|inst46|inst|q\(0) & (\inst13|inst46|inst|q\(1) & VCC))
-- \inst13|inst46|inst|q[1]~15\ = CARRY((\inst13|inst46|inst|q\(0) & \inst13|inst46|inst|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(0),
	datab => \inst13|inst46|inst|q\(1),
	datad => VCC,
	combout => \inst13|inst46|inst|q[1]~14_combout\,
	cout => \inst13|inst46|inst|q[1]~15\);

-- Location: FF_X8_Y9_N5
\inst13|inst46|inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[1]~14_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(1));

-- Location: LCCOMB_X8_Y9_N6
\inst13|inst46|inst|q[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[2]~16_combout\ = (\inst13|inst46|inst|q\(2) & (!\inst13|inst46|inst|q[1]~15\)) # (!\inst13|inst46|inst|q\(2) & ((\inst13|inst46|inst|q[1]~15\) # (GND)))
-- \inst13|inst46|inst|q[2]~17\ = CARRY((!\inst13|inst46|inst|q[1]~15\) # (!\inst13|inst46|inst|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(2),
	datad => VCC,
	cin => \inst13|inst46|inst|q[1]~15\,
	combout => \inst13|inst46|inst|q[2]~16_combout\,
	cout => \inst13|inst46|inst|q[2]~17\);

-- Location: FF_X8_Y9_N7
\inst13|inst46|inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[2]~16_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(2));

-- Location: LCCOMB_X8_Y9_N8
\inst13|inst46|inst|q[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[3]~18_combout\ = (\inst13|inst46|inst|q\(3) & (\inst13|inst46|inst|q[2]~17\ $ (GND))) # (!\inst13|inst46|inst|q\(3) & (!\inst13|inst46|inst|q[2]~17\ & VCC))
-- \inst13|inst46|inst|q[3]~19\ = CARRY((\inst13|inst46|inst|q\(3) & !\inst13|inst46|inst|q[2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst|q\(3),
	datad => VCC,
	cin => \inst13|inst46|inst|q[2]~17\,
	combout => \inst13|inst46|inst|q[3]~18_combout\,
	cout => \inst13|inst46|inst|q[3]~19\);

-- Location: FF_X8_Y9_N9
\inst13|inst46|inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[3]~18_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(3));

-- Location: LCCOMB_X8_Y9_N10
\inst13|inst46|inst|q[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[4]~20_combout\ = (\inst13|inst46|inst|q\(4) & (!\inst13|inst46|inst|q[3]~19\)) # (!\inst13|inst46|inst|q\(4) & ((\inst13|inst46|inst|q[3]~19\) # (GND)))
-- \inst13|inst46|inst|q[4]~21\ = CARRY((!\inst13|inst46|inst|q[3]~19\) # (!\inst13|inst46|inst|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(4),
	datad => VCC,
	cin => \inst13|inst46|inst|q[3]~19\,
	combout => \inst13|inst46|inst|q[4]~20_combout\,
	cout => \inst13|inst46|inst|q[4]~21\);

-- Location: FF_X8_Y9_N11
\inst13|inst46|inst|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[4]~20_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(4));

-- Location: LCCOMB_X8_Y9_N12
\inst13|inst46|inst|q[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[5]~22_combout\ = (\inst13|inst46|inst|q\(5) & (\inst13|inst46|inst|q[4]~21\ $ (GND))) # (!\inst13|inst46|inst|q\(5) & (!\inst13|inst46|inst|q[4]~21\ & VCC))
-- \inst13|inst46|inst|q[5]~23\ = CARRY((\inst13|inst46|inst|q\(5) & !\inst13|inst46|inst|q[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(5),
	datad => VCC,
	cin => \inst13|inst46|inst|q[4]~21\,
	combout => \inst13|inst46|inst|q[5]~22_combout\,
	cout => \inst13|inst46|inst|q[5]~23\);

-- Location: FF_X8_Y9_N13
\inst13|inst46|inst|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[5]~22_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(5));

-- Location: LCCOMB_X8_Y9_N14
\inst13|inst46|inst|q[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[6]~24_combout\ = (\inst13|inst46|inst|q\(6) & (!\inst13|inst46|inst|q[5]~23\)) # (!\inst13|inst46|inst|q\(6) & ((\inst13|inst46|inst|q[5]~23\) # (GND)))
-- \inst13|inst46|inst|q[6]~25\ = CARRY((!\inst13|inst46|inst|q[5]~23\) # (!\inst13|inst46|inst|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst|q\(6),
	datad => VCC,
	cin => \inst13|inst46|inst|q[5]~23\,
	combout => \inst13|inst46|inst|q[6]~24_combout\,
	cout => \inst13|inst46|inst|q[6]~25\);

-- Location: FF_X8_Y9_N15
\inst13|inst46|inst|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[6]~24_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(6));

-- Location: LCCOMB_X8_Y9_N16
\inst13|inst46|inst|q[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[7]~26_combout\ = (\inst13|inst46|inst|q\(7) & (\inst13|inst46|inst|q[6]~25\ $ (GND))) # (!\inst13|inst46|inst|q\(7) & (!\inst13|inst46|inst|q[6]~25\ & VCC))
-- \inst13|inst46|inst|q[7]~27\ = CARRY((\inst13|inst46|inst|q\(7) & !\inst13|inst46|inst|q[6]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst|q\(7),
	datad => VCC,
	cin => \inst13|inst46|inst|q[6]~25\,
	combout => \inst13|inst46|inst|q[7]~26_combout\,
	cout => \inst13|inst46|inst|q[7]~27\);

-- Location: FF_X8_Y9_N17
\inst13|inst46|inst|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[7]~26_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(7));

-- Location: LCCOMB_X8_Y9_N18
\inst13|inst46|inst|q[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[8]~28_combout\ = (\inst13|inst46|inst|q\(8) & (!\inst13|inst46|inst|q[7]~27\)) # (!\inst13|inst46|inst|q\(8) & ((\inst13|inst46|inst|q[7]~27\) # (GND)))
-- \inst13|inst46|inst|q[8]~29\ = CARRY((!\inst13|inst46|inst|q[7]~27\) # (!\inst13|inst46|inst|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(8),
	datad => VCC,
	cin => \inst13|inst46|inst|q[7]~27\,
	combout => \inst13|inst46|inst|q[8]~28_combout\,
	cout => \inst13|inst46|inst|q[8]~29\);

-- Location: FF_X8_Y9_N19
\inst13|inst46|inst|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[8]~28_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(8));

-- Location: LCCOMB_X8_Y9_N20
\inst13|inst46|inst|q[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[9]~30_combout\ = (\inst13|inst46|inst|q\(9) & (\inst13|inst46|inst|q[8]~29\ $ (GND))) # (!\inst13|inst46|inst|q\(9) & (!\inst13|inst46|inst|q[8]~29\ & VCC))
-- \inst13|inst46|inst|q[9]~31\ = CARRY((\inst13|inst46|inst|q\(9) & !\inst13|inst46|inst|q[8]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(9),
	datad => VCC,
	cin => \inst13|inst46|inst|q[8]~29\,
	combout => \inst13|inst46|inst|q[9]~30_combout\,
	cout => \inst13|inst46|inst|q[9]~31\);

-- Location: FF_X8_Y9_N21
\inst13|inst46|inst|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[9]~30_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(9));

-- Location: LCCOMB_X8_Y9_N22
\inst13|inst46|inst|q[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[10]~32_combout\ = (\inst13|inst46|inst|q\(10) & (!\inst13|inst46|inst|q[9]~31\)) # (!\inst13|inst46|inst|q\(10) & ((\inst13|inst46|inst|q[9]~31\) # (GND)))
-- \inst13|inst46|inst|q[10]~33\ = CARRY((!\inst13|inst46|inst|q[9]~31\) # (!\inst13|inst46|inst|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst|q\(10),
	datad => VCC,
	cin => \inst13|inst46|inst|q[9]~31\,
	combout => \inst13|inst46|inst|q[10]~32_combout\,
	cout => \inst13|inst46|inst|q[10]~33\);

-- Location: FF_X8_Y9_N23
\inst13|inst46|inst|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[10]~32_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(10));

-- Location: LCCOMB_X8_Y9_N24
\inst13|inst46|inst|q[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[11]~34_combout\ = (\inst13|inst46|inst|q\(11) & (\inst13|inst46|inst|q[10]~33\ $ (GND))) # (!\inst13|inst46|inst|q\(11) & (!\inst13|inst46|inst|q[10]~33\ & VCC))
-- \inst13|inst46|inst|q[11]~35\ = CARRY((\inst13|inst46|inst|q\(11) & !\inst13|inst46|inst|q[10]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(11),
	datad => VCC,
	cin => \inst13|inst46|inst|q[10]~33\,
	combout => \inst13|inst46|inst|q[11]~34_combout\,
	cout => \inst13|inst46|inst|q[11]~35\);

-- Location: FF_X8_Y9_N25
\inst13|inst46|inst|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[11]~34_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(11));

-- Location: LCCOMB_X8_Y9_N2
\inst13|inst46|inst|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|_~2_combout\ = (\inst13|inst46|inst|q\(8) & (!\inst13|inst46|inst|q\(9) & (!\inst13|inst46|inst|q\(10) & !\inst13|inst46|inst|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(8),
	datab => \inst13|inst46|inst|q\(9),
	datac => \inst13|inst46|inst|q\(10),
	datad => \inst13|inst46|inst|q\(11),
	combout => \inst13|inst46|inst|_~2_combout\);

-- Location: LCCOMB_X8_Y9_N0
\inst13|inst46|inst|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|_~1_combout\ = (!\inst13|inst46|inst|q\(4) & (\inst13|inst46|inst|q\(7) & (!\inst13|inst46|inst|q\(6) & \inst13|inst46|inst|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(4),
	datab => \inst13|inst46|inst|q\(7),
	datac => \inst13|inst46|inst|q\(6),
	datad => \inst13|inst46|inst|q\(5),
	combout => \inst13|inst46|inst|_~1_combout\);

-- Location: LCCOMB_X7_Y9_N26
\inst13|inst46|inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|_~0_combout\ = (!\inst13|inst46|inst|q\(2) & (!\inst13|inst46|inst|q\(0) & (\inst13|inst46|inst|q\(3) & !\inst13|inst46|inst|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(2),
	datab => \inst13|inst46|inst|q\(0),
	datac => \inst13|inst46|inst|q\(3),
	datad => \inst13|inst46|inst|q\(1),
	combout => \inst13|inst46|inst|_~0_combout\);

-- Location: LCCOMB_X8_Y9_N26
\inst13|inst46|inst|q[12]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[12]~36_combout\ = (\inst13|inst46|inst|q\(12) & (!\inst13|inst46|inst|q[11]~35\)) # (!\inst13|inst46|inst|q\(12) & ((\inst13|inst46|inst|q[11]~35\) # (GND)))
-- \inst13|inst46|inst|q[12]~37\ = CARRY((!\inst13|inst46|inst|q[11]~35\) # (!\inst13|inst46|inst|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(12),
	datad => VCC,
	cin => \inst13|inst46|inst|q[11]~35\,
	combout => \inst13|inst46|inst|q[12]~36_combout\,
	cout => \inst13|inst46|inst|q[12]~37\);

-- Location: FF_X8_Y9_N27
\inst13|inst46|inst|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[12]~36_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(12));

-- Location: LCCOMB_X8_Y9_N28
\inst13|inst46|inst|q[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[13]~38_combout\ = (\inst13|inst46|inst|q\(13) & (\inst13|inst46|inst|q[12]~37\ $ (GND))) # (!\inst13|inst46|inst|q\(13) & (!\inst13|inst46|inst|q[12]~37\ & VCC))
-- \inst13|inst46|inst|q[13]~39\ = CARRY((\inst13|inst46|inst|q\(13) & !\inst13|inst46|inst|q[12]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst|q\(13),
	datad => VCC,
	cin => \inst13|inst46|inst|q[12]~37\,
	combout => \inst13|inst46|inst|q[13]~38_combout\,
	cout => \inst13|inst46|inst|q[13]~39\);

-- Location: FF_X8_Y9_N29
\inst13|inst46|inst|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[13]~38_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(13));

-- Location: LCCOMB_X8_Y9_N30
\inst13|inst46|inst|q[14]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|q[14]~40_combout\ = \inst13|inst46|inst|q\(14) $ (\inst13|inst46|inst|q[13]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|q\(14),
	cin => \inst13|inst46|inst|q[13]~39\,
	combout => \inst13|inst46|inst|q[14]~40_combout\);

-- Location: FF_X8_Y9_N31
\inst13|inst46|inst|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|q[14]~40_combout\,
	sclr => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|q\(14));

-- Location: LCCOMB_X7_Y9_N18
\inst13|inst46|inst|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|_~3_combout\ = (!\inst13|inst46|inst|q\(12) & (\inst13|inst46|inst|q\(14) & \inst13|inst46|inst|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst|q\(12),
	datac => \inst13|inst46|inst|q\(14),
	datad => \inst13|inst46|inst|q\(13),
	combout => \inst13|inst46|inst|_~3_combout\);

-- Location: LCCOMB_X7_Y9_N24
\inst13|inst46|inst|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|_~4_combout\ = (\inst13|inst46|inst|_~2_combout\ & (\inst13|inst46|inst|_~1_combout\ & (\inst13|inst46|inst|_~0_combout\ & \inst13|inst46|inst|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|_~2_combout\,
	datab => \inst13|inst46|inst|_~1_combout\,
	datac => \inst13|inst46|inst|_~0_combout\,
	datad => \inst13|inst46|inst|_~3_combout\,
	combout => \inst13|inst46|inst|_~4_combout\);

-- Location: FF_X9_Y9_N31
\inst6|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|aux_tff~feeder_combout\,
	ena => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|aux_tff~q\);

-- Location: CLKCTRL_G8
\inst6|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst6|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst6|aux_tff~clkctrl_outclk\);

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

-- Location: LCCOMB_X26_Y15_N18
\inst20|inst3|ff1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst3|ff1~feeder_combout\ = \key[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[4]~input_o\,
	combout => \inst20|inst3|ff1~feeder_combout\);

-- Location: FF_X26_Y15_N19
\inst20|inst3|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	d => \inst20|inst3|ff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst3|ff1~q\);

-- Location: FF_X26_Y15_N17
\inst20|inst3|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	asdata => \inst20|inst3|ff1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst3|ff2~q\);

-- Location: LCCOMB_X26_Y15_N16
\inst20|inst3|ff3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst3|ff3~0_combout\ = (\inst20|inst3|ff1~q\ & (\inst20|inst3|ff2~q\ & \inst20|inst3|ff3~q\)) # (!\inst20|inst3|ff1~q\ & ((\inst20|inst3|ff2~q\) # (\inst20|inst3|ff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|inst3|ff1~q\,
	datac => \inst20|inst3|ff2~q\,
	datad => \inst20|inst3|ff3~q\,
	combout => \inst20|inst3|ff3~0_combout\);

-- Location: LCCOMB_X26_Y15_N2
\inst20|inst3|ff3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst3|ff3~feeder_combout\ = \inst20|inst3|ff3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|inst3|ff3~0_combout\,
	combout => \inst20|inst3|ff3~feeder_combout\);

-- Location: FF_X26_Y15_N3
\inst20|inst3|ff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	d => \inst20|inst3|ff3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst3|ff3~q\);

-- Location: FF_X26_Y15_N27
\inst7|deb_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst20|inst3|ff3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|deb_reg\(4));

-- Location: LCCOMB_X26_Y15_N4
\inst23|up_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|up_pulse~combout\ = (\inst7|deb_reg\(4) & !\inst20|inst3|ff3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|deb_reg\(4),
	datad => \inst20|inst3|ff3~q\,
	combout => \inst23|up_pulse~combout\);

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

-- Location: LCCOMB_X26_Y15_N6
\inst20|inst2|ff1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst2|ff1~feeder_combout\ = \key[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[3]~input_o\,
	combout => \inst20|inst2|ff1~feeder_combout\);

-- Location: FF_X26_Y15_N7
\inst20|inst2|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	d => \inst20|inst2|ff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst2|ff1~q\);

-- Location: FF_X26_Y15_N25
\inst20|inst2|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	asdata => \inst20|inst2|ff1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst2|ff2~q\);

-- Location: LCCOMB_X26_Y15_N24
\inst20|inst2|ff3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst2|ff3~0_combout\ = (\inst20|inst2|ff1~q\ & (\inst20|inst2|ff2~q\ & \inst20|inst2|ff3~q\)) # (!\inst20|inst2|ff1~q\ & ((\inst20|inst2|ff2~q\) # (\inst20|inst2|ff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst2|ff1~q\,
	datac => \inst20|inst2|ff2~q\,
	datad => \inst20|inst2|ff3~q\,
	combout => \inst20|inst2|ff3~0_combout\);

-- Location: LCCOMB_X26_Y15_N20
\inst20|inst2|ff3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst2|ff3~feeder_combout\ = \inst20|inst2|ff3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|inst2|ff3~0_combout\,
	combout => \inst20|inst2|ff3~feeder_combout\);

-- Location: FF_X26_Y15_N21
\inst20|inst2|ff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	d => \inst20|inst2|ff3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst2|ff3~q\);

-- Location: FF_X26_Y15_N13
\inst7|deb_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst20|inst2|ff3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|deb_reg\(3));

-- Location: LCCOMB_X26_Y15_N12
\inst23|down_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|down_pulse~combout\ = (\inst7|deb_reg\(3) & !\inst20|inst2|ff3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|deb_reg\(3),
	datad => \inst20|inst2|ff3~q\,
	combout => \inst23|down_pulse~combout\);

-- Location: LCCOMB_X26_Y15_N30
\inst23|q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|q[1]~1_combout\ = \inst23|q\(1) $ (((\inst23|q\(0) & (\inst23|up_pulse~combout\)) # (!\inst23|q\(0) & (!\inst23|up_pulse~combout\ & \inst23|down_pulse~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(0),
	datab => \inst23|q\(1),
	datac => \inst23|up_pulse~combout\,
	datad => \inst23|down_pulse~combout\,
	combout => \inst23|q[1]~1_combout\);

-- Location: LCCOMB_X23_Y11_N6
\inst23|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|q[1]~2_combout\ = (\inst23|q[1]~1_combout\ & !\inst23|reset_geral_pulse~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|q[1]~1_combout\,
	datad => \inst23|reset_geral_pulse~combout\,
	combout => \inst23|q[1]~2_combout\);

-- Location: FF_X23_Y11_N7
\inst23|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst23|q[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|q\(1));

-- Location: LCCOMB_X19_Y13_N22
\inst25|inst50|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst50|_~0_combout\ = (\inst23|q\(0) & \inst23|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|q\(0),
	datad => \inst23|q\(1),
	combout => \inst25|inst50|_~0_combout\);

-- Location: LCCOMB_X19_Y13_N10
\inst32|inst31|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|_~0_combout\ = (\inst23|q\(0)) # (\inst23|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst23|q\(0),
	datad => \inst23|q\(1),
	combout => \inst32|inst31|_~0_combout\);

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

-- Location: FF_X21_Y13_N27
\inst20|inst1|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	asdata => \key[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst1|ff1~q\);

-- Location: FF_X21_Y13_N5
\inst20|inst1|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	asdata => \inst20|inst1|ff1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst1|ff2~q\);

-- Location: LCCOMB_X21_Y13_N4
\inst20|inst1|ff3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst1|ff3~0_combout\ = (\inst20|inst1|ff1~q\ & (\inst20|inst1|ff2~q\ & \inst20|inst1|ff3~q\)) # (!\inst20|inst1|ff1~q\ & ((\inst20|inst1|ff2~q\) # (\inst20|inst1|ff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst1|ff1~q\,
	datac => \inst20|inst1|ff2~q\,
	datad => \inst20|inst1|ff3~q\,
	combout => \inst20|inst1|ff3~0_combout\);

-- Location: FF_X21_Y13_N19
\inst20|inst1|ff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	asdata => \inst20|inst1|ff3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst1|ff3~q\);

-- Location: FF_X21_Y11_N23
\inst7|deb_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst20|inst1|ff3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|deb_reg\(2));

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

-- Location: FF_X21_Y13_N9
\inst20|inst|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	asdata => \key[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst|ff1~q\);

-- Location: FF_X21_Y13_N23
\inst20|inst|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	asdata => \inst20|inst|ff1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst|ff2~q\);

-- Location: LCCOMB_X21_Y13_N22
\inst20|inst|ff3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst|ff3~0_combout\ = (\inst20|inst|ff3~q\ & ((\inst20|inst|ff2~q\) # (!\inst20|inst|ff1~q\))) # (!\inst20|inst|ff3~q\ & (\inst20|inst|ff2~q\ & !\inst20|inst|ff1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst|ff3~q\,
	datac => \inst20|inst|ff2~q\,
	datad => \inst20|inst|ff1~q\,
	combout => \inst20|inst|ff3~0_combout\);

-- Location: FF_X21_Y13_N31
\inst20|inst|ff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	asdata => \inst20|inst|ff3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst|ff3~q\);

-- Location: FF_X21_Y11_N1
\inst7|deb_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst20|inst|ff3~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|deb_reg\(1));

-- Location: LCCOMB_X21_Y11_N0
\inst1|ant_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|ant_pulse~combout\ = (!\inst20|inst|ff3~q\ & \inst7|deb_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|inst|ff3~q\,
	datac => \inst7|deb_reg\(1),
	combout => \inst1|ant_pulse~combout\);

-- Location: LCCOMB_X21_Y11_N10
\inst1|select_q[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|select_q[0]~15_combout\ = \inst1|select_q\(0) $ (((\inst1|ant_pulse~combout\) # ((\inst7|deb_reg\(2) & !\inst20|inst1|ff3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|deb_reg\(2),
	datab => \inst1|select_q\(0),
	datac => \inst20|inst1|ff3~q\,
	datad => \inst1|ant_pulse~combout\,
	combout => \inst1|select_q[0]~15_combout\);

-- Location: LCCOMB_X21_Y13_N6
\inst15|deb1_out_c1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|deb1_out_c1~1_combout\ = (\inst20|inst|ff3~q\ & \inst1|crono_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst|ff3~q\,
	datad => \inst1|crono_q\(1),
	combout => \inst15|deb1_out_c1~1_combout\);

-- Location: FF_X21_Y13_N17
\inst13|inst39|btn2_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|deb1_out_c1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst39|btn2_reg~q\);

-- Location: LCCOMB_X22_Y12_N30
\inst13|inst50|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst50|_~2_combout\ = (\inst1|crono_q\(1) & (\inst13|inst39|btn2_reg~q\ & (!\inst20|inst|ff3~q\ & \inst25|inst50|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst13|inst39|btn2_reg~q\,
	datac => \inst20|inst|ff3~q\,
	datad => \inst25|inst50|_~0_combout\,
	combout => \inst13|inst50|_~2_combout\);

-- Location: FF_X22_Y12_N31
\inst13|inst50|resetcont_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst50|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst50|resetcont_q~q\);

-- Location: FF_X22_Y12_N7
\inst23|reset_c_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst13|inst50|resetcont_q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|reset_c_reg\(1));

-- Location: LCCOMB_X22_Y12_N6
\inst13|inst23|reset_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|reset_pulse~combout\ = (\inst13|inst50|resetcont_q~q\ & !\inst23|reset_c_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst50|resetcont_q~q\,
	datac => \inst23|reset_c_reg\(1),
	combout => \inst13|inst23|reset_pulse~combout\);

-- Location: LCCOMB_X21_Y11_N28
\inst1|_~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~29_combout\ = (!\inst1|select_q\(0) & \inst1|select_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|select_q\(0),
	datad => \inst1|select_q\(1),
	combout => \inst1|_~29_combout\);

-- Location: FF_X24_Y11_N23
\inst23|reset_c_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst30|inst50|resetcont_q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|reset_c_reg\(3));

-- Location: LCCOMB_X24_Y11_N22
\inst1|reset_c_pulse[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reset_c_pulse\(3) = (\inst30|inst50|resetcont_q~q\ & !\inst23|reset_c_reg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst50|resetcont_q~q\,
	datac => \inst23|reset_c_reg\(3),
	combout => \inst1|reset_c_pulse\(3));

-- Location: LCCOMB_X24_Y11_N30
\inst25|inst22|reset_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst22|reset_cont~2_combout\ = (!\inst1|crono_q\(1) & (\inst1|crono_q\(2) & (!\inst23|q\(1) & \inst23|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst1|crono_q\(2),
	datac => \inst23|q\(1),
	datad => \inst23|q\(0),
	combout => \inst25|inst22|reset_cont~2_combout\);

-- Location: LCCOMB_X21_Y13_N30
\inst15|deb2_out_c2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|deb2_out_c2~1_combout\ = (!\inst1|crono_q\(1) & (\inst1|crono_q\(2) & \inst20|inst1|ff3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst1|crono_q\(2),
	datad => \inst20|inst1|ff3~q\,
	combout => \inst15|deb2_out_c2~1_combout\);

-- Location: FF_X21_Y13_N13
\inst25|inst39|btn1_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|deb2_out_c2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst39|btn1_reg~q\);

-- Location: LCCOMB_X21_Y10_N0
\inst25|inst39|q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst39|q[1]~1_combout\ = (\inst25|inst39|btn1_reg~q\ & (\inst15|deb2_out_c2~1_combout\ & ((\inst15|deb1_out_c2~1_combout\) # (!\inst25|inst39|btn2_reg~q\)))) # (!\inst25|inst39|btn1_reg~q\ & ((\inst15|deb1_out_c2~1_combout\) # 
-- ((!\inst25|inst39|btn2_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst39|btn1_reg~q\,
	datab => \inst15|deb1_out_c2~1_combout\,
	datac => \inst25|inst39|btn2_reg~q\,
	datad => \inst15|deb2_out_c2~1_combout\,
	combout => \inst25|inst39|q[1]~1_combout\);

-- Location: LCCOMB_X21_Y10_N14
\inst25|inst39|q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst39|q[0]~3_combout\ = \inst25|inst39|q\(0) $ (((\inst25|inst22|reset_cont~2_combout\ & !\inst25|inst39|q[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst22|reset_cont~2_combout\,
	datac => \inst25|inst39|q\(0),
	datad => \inst25|inst39|q[1]~1_combout\,
	combout => \inst25|inst39|q[0]~3_combout\);

-- Location: FF_X21_Y10_N15
\inst25|inst39|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst39|q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst39|q\(0));

-- Location: LCCOMB_X21_Y10_N28
\inst25|inst39|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst39|op_1~0_combout\ = \inst25|inst39|q\(0) $ (\inst25|inst39|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst39|q\(0),
	datad => \inst25|inst39|q\(1),
	combout => \inst25|inst39|op_1~0_combout\);

-- Location: LCCOMB_X21_Y13_N12
\inst25|inst39|up_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst39|up_pulse~0_combout\ = (\inst25|inst39|btn1_reg~q\ & ((\inst1|crono_q\(1)) # ((!\inst20|inst1|ff3~q\) # (!\inst1|crono_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst1|crono_q\(2),
	datac => \inst25|inst39|btn1_reg~q\,
	datad => \inst20|inst1|ff3~q\,
	combout => \inst25|inst39|up_pulse~0_combout\);

-- Location: LCCOMB_X21_Y10_N6
\inst25|inst39|q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst39|q[1]~0_combout\ = (\inst25|inst39|op_1~0_combout\ & (((\inst25|inst39|up_pulse~0_combout\)))) # (!\inst25|inst39|op_1~0_combout\ & (\inst25|inst39|btn2_reg~q\ & (!\inst15|deb1_out_c2~1_combout\ & !\inst25|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst39|btn2_reg~q\,
	datab => \inst25|inst39|op_1~0_combout\,
	datac => \inst15|deb1_out_c2~1_combout\,
	datad => \inst25|inst39|up_pulse~0_combout\,
	combout => \inst25|inst39|q[1]~0_combout\);

-- Location: LCCOMB_X21_Y10_N12
\inst25|inst39|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst39|q[1]~2_combout\ = (\inst25|inst22|reset_cont~2_combout\ & ((\inst25|inst39|q[1]~0_combout\) # ((\inst25|inst39|q\(1) & \inst25|inst39|q[1]~1_combout\)))) # (!\inst25|inst22|reset_cont~2_combout\ & (((\inst25|inst39|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst39|q[1]~0_combout\,
	datab => \inst25|inst22|reset_cont~2_combout\,
	datac => \inst25|inst39|q\(1),
	datad => \inst25|inst39|q[1]~1_combout\,
	combout => \inst25|inst39|q[1]~2_combout\);

-- Location: FF_X21_Y10_N13
\inst25|inst39|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst39|q[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst39|q\(1));

-- Location: LCCOMB_X21_Y10_N30
\inst25|inst37|aux_dig[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst37|aux_dig[4]~3_combout\ = (\inst25|inst37|_~3_combout\) # ((!\inst25|inst39|q\(1) & (\inst25|inst39|q\(0) & \inst25|inst22|reset_cont~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst39|q\(1),
	datab => \inst25|inst39|q\(0),
	datac => \inst25|inst22|reset_cont~2_combout\,
	datad => \inst25|inst37|_~3_combout\,
	combout => \inst25|inst37|aux_dig[4]~3_combout\);

-- Location: FF_X21_Y10_N31
\inst25|inst37|aux_dig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst37|aux_dig[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst37|aux_dig\(4));

-- Location: LCCOMB_X25_Y10_N24
\inst15|menu_out_c2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|menu_out_c2[0]~3_combout\ = (\inst23|q\(0) & (\inst1|crono_q\(2) & !\inst1|crono_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(0),
	datac => \inst1|crono_q\(2),
	datad => \inst1|crono_q\(1),
	combout => \inst15|menu_out_c2[0]~3_combout\);

-- Location: LCCOMB_X25_Y10_N12
\inst15|menu_out_c2[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|menu_out_c2[1]~2_combout\ = (!\inst1|crono_q\(1) & (\inst1|crono_q\(2) & \inst23|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datac => \inst1|crono_q\(2),
	datad => \inst23|q\(1),
	combout => \inst15|menu_out_c2[1]~2_combout\);

-- Location: LCCOMB_X21_Y10_N10
\inst25|inst37|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst37|_~3_combout\ = (\inst25|inst37|aux_dig\(4) & (!\inst15|menu_out_c2[0]~3_combout\ & \inst15|menu_out_c2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst37|aux_dig\(4),
	datac => \inst15|menu_out_c2[0]~3_combout\,
	datad => \inst15|menu_out_c2[1]~2_combout\,
	combout => \inst25|inst37|_~3_combout\);

-- Location: FF_X21_Y10_N11
\inst25|inst37|digsel_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst37|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst37|digsel_q\(4));

-- Location: FF_X25_Y10_N27
\inst25|inst22|menu_in_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|menu_out_c2[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst22|menu_in_reg\(0));

-- Location: FF_X25_Y10_N21
\inst25|inst22|menu_in_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|menu_out_c2[1]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst22|menu_in_reg\(1));

-- Location: LCCOMB_X25_Y10_N4
\inst25|inst22|reset_cont\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst22|reset_cont~combout\ = (!\inst25|inst22|menu_in_reg\(0) & (\inst25|inst22|reset_cont~2_combout\ & !\inst25|inst22|menu_in_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst22|menu_in_reg\(0),
	datac => \inst25|inst22|reset_cont~2_combout\,
	datad => \inst25|inst22|menu_in_reg\(1),
	combout => \inst25|inst22|reset_cont~combout\);

-- Location: FF_X25_Y10_N5
\inst25|inst25|reset_novo_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst22|reset_cont~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst25|reset_novo_reg~q\);

-- Location: LCCOMB_X25_Y10_N16
\inst25|inst22|reset_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst22|reset_cont~3_combout\ = (!\inst25|inst22|menu_in_reg\(0) & !\inst25|inst22|menu_in_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|inst22|menu_in_reg\(0),
	datad => \inst25|inst22|menu_in_reg\(1),
	combout => \inst25|inst22|reset_cont~3_combout\);

-- Location: LCCOMB_X24_Y10_N14
\inst25|inst23|reset_final_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|reset_final_pulse~combout\ = (\inst1|reset_c_pulse\(2)) # ((!\inst25|inst25|reset_novo_reg~q\ & (\inst25|inst22|reset_cont~3_combout\ & \inst25|inst22|reset_cont~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|reset_novo_reg~q\,
	datab => \inst25|inst22|reset_cont~3_combout\,
	datac => \inst25|inst22|reset_cont~2_combout\,
	datad => \inst1|reset_c_pulse\(2),
	combout => \inst25|inst23|reset_final_pulse~combout\);

-- Location: LCCOMB_X22_Y14_N22
\inst25|inst28|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|q[3]~1_combout\ = (!\inst25|inst23|reset_final_pulse~combout\ & ((!\inst25|inst39|up_pulse~0_combout\) # (!\inst25|inst37|digsel_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst37|digsel_q\(4),
	datac => \inst25|inst39|up_pulse~0_combout\,
	datad => \inst25|inst23|reset_final_pulse~combout\,
	combout => \inst25|inst28|q[3]~1_combout\);

-- Location: LCCOMB_X22_Y14_N26
\inst25|inst28|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|op_1~2_combout\ = \inst25|inst28|q\(1) $ (\inst25|inst28|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(1),
	datac => \inst25|inst28|q\(0),
	combout => \inst25|inst28|op_1~2_combout\);

-- Location: LCCOMB_X21_Y13_N10
\inst25|inst28|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|_~1_combout\ = (\inst25|inst39|btn2_reg~q\ & (\inst25|inst37|digsel_q\(4) & !\inst15|deb1_out_c2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst39|btn2_reg~q\,
	datac => \inst25|inst37|digsel_q\(4),
	datad => \inst15|deb1_out_c2~1_combout\,
	combout => \inst25|inst28|_~1_combout\);

-- Location: LCCOMB_X22_Y14_N12
\inst25|inst28|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|q[1]~5_combout\ = (\inst25|inst28|_~1_combout\ & (!\inst25|inst28|_~0_combout\ & (\inst25|inst28|q\(0) $ (!\inst25|inst28|q\(1))))) # (!\inst25|inst28|_~1_combout\ & (((\inst25|inst28|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(0),
	datab => \inst25|inst28|_~0_combout\,
	datac => \inst25|inst28|q\(1),
	datad => \inst25|inst28|_~1_combout\,
	combout => \inst25|inst28|q[1]~5_combout\);

-- Location: LCCOMB_X22_Y14_N4
\inst25|inst28|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|q[1]~6_combout\ = (\inst25|inst28|q[3]~1_combout\ & ((\inst25|inst28|q[1]~5_combout\) # ((\inst25|inst28|_~3_combout\ & \inst25|inst28|op_1~2_combout\)))) # (!\inst25|inst28|q[3]~1_combout\ & (\inst25|inst28|_~3_combout\ & 
-- (\inst25|inst28|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q[3]~1_combout\,
	datab => \inst25|inst28|_~3_combout\,
	datac => \inst25|inst28|op_1~2_combout\,
	datad => \inst25|inst28|q[1]~5_combout\,
	combout => \inst25|inst28|q[1]~6_combout\);

-- Location: FF_X22_Y14_N5
\inst25|inst28|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst28|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst28|q\(1));

-- Location: LCCOMB_X22_Y14_N10
\inst25|inst28|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|op_1~1_combout\ = \inst25|inst28|q\(2) $ (((\inst25|inst28|q\(1) & \inst25|inst28|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(1),
	datab => \inst25|inst28|q\(0),
	datac => \inst25|inst28|q\(2),
	combout => \inst25|inst28|op_1~1_combout\);

-- Location: LCCOMB_X22_Y14_N2
\inst25|inst28|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|op_2~0_combout\ = (!\inst25|inst28|q\(1) & !\inst25|inst28|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(1),
	datac => \inst25|inst28|q\(0),
	combout => \inst25|inst28|op_2~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\inst25|inst28|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|q[2]~3_combout\ = (\inst25|inst28|_~1_combout\ & (!\inst25|inst28|_~0_combout\ & (\inst25|inst28|op_2~0_combout\ $ (\inst25|inst28|q\(2))))) # (!\inst25|inst28|_~1_combout\ & (((\inst25|inst28|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|op_2~0_combout\,
	datab => \inst25|inst28|_~0_combout\,
	datac => \inst25|inst28|q\(2),
	datad => \inst25|inst28|_~1_combout\,
	combout => \inst25|inst28|q[2]~3_combout\);

-- Location: LCCOMB_X22_Y14_N14
\inst25|inst28|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|q[2]~4_combout\ = (\inst25|inst28|q[3]~1_combout\ & ((\inst25|inst28|q[2]~3_combout\) # ((\inst25|inst28|_~3_combout\ & \inst25|inst28|op_1~1_combout\)))) # (!\inst25|inst28|q[3]~1_combout\ & (\inst25|inst28|_~3_combout\ & 
-- (\inst25|inst28|op_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q[3]~1_combout\,
	datab => \inst25|inst28|_~3_combout\,
	datac => \inst25|inst28|op_1~1_combout\,
	datad => \inst25|inst28|q[2]~3_combout\,
	combout => \inst25|inst28|q[2]~4_combout\);

-- Location: FF_X22_Y14_N15
\inst25|inst28|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst28|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst28|q\(2));

-- Location: LCCOMB_X22_Y14_N20
\inst25|inst28|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|op_1~0_combout\ = \inst25|inst28|q\(3) $ (((\inst25|inst28|q\(0) & (\inst25|inst28|q\(2) & \inst25|inst28|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(0),
	datab => \inst25|inst28|q\(2),
	datac => \inst25|inst28|q\(3),
	datad => \inst25|inst28|q\(1),
	combout => \inst25|inst28|op_1~0_combout\);

-- Location: LCCOMB_X22_Y14_N8
\inst25|inst28|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|q[3]~0_combout\ = \inst25|inst28|q\(3) $ (((!\inst25|inst28|q\(2) & (\inst25|inst28|op_2~0_combout\ & \inst25|inst28|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(3),
	datab => \inst25|inst28|q\(2),
	datac => \inst25|inst28|op_2~0_combout\,
	datad => \inst25|inst28|_~1_combout\,
	combout => \inst25|inst28|q[3]~0_combout\);

-- Location: LCCOMB_X22_Y14_N24
\inst25|inst28|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|q[3]~2_combout\ = (\inst25|inst28|q[3]~1_combout\ & ((\inst25|inst28|q[3]~0_combout\) # ((\inst25|inst28|op_1~0_combout\ & \inst25|inst28|_~3_combout\)))) # (!\inst25|inst28|q[3]~1_combout\ & (\inst25|inst28|op_1~0_combout\ & 
-- ((\inst25|inst28|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q[3]~1_combout\,
	datab => \inst25|inst28|op_1~0_combout\,
	datac => \inst25|inst28|q[3]~0_combout\,
	datad => \inst25|inst28|_~3_combout\,
	combout => \inst25|inst28|q[3]~2_combout\);

-- Location: FF_X22_Y14_N25
\inst25|inst28|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst28|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst28|q\(3));

-- Location: LCCOMB_X22_Y14_N0
\inst25|inst28|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|_~2_combout\ = ((\inst25|inst28|q\(2)) # ((\inst25|inst28|q\(1)) # (!\inst25|inst28|q\(3)))) # (!\inst25|inst28|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(0),
	datab => \inst25|inst28|q\(2),
	datac => \inst25|inst28|q\(3),
	datad => \inst25|inst28|q\(1),
	combout => \inst25|inst28|_~2_combout\);

-- Location: LCCOMB_X22_Y14_N18
\inst25|inst28|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|_~3_combout\ = (\inst25|inst37|digsel_q\(4) & (\inst25|inst28|_~2_combout\ & (\inst25|inst39|up_pulse~0_combout\ & !\inst25|inst23|reset_final_pulse~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst37|digsel_q\(4),
	datab => \inst25|inst28|_~2_combout\,
	datac => \inst25|inst39|up_pulse~0_combout\,
	datad => \inst25|inst23|reset_final_pulse~combout\,
	combout => \inst25|inst28|_~3_combout\);

-- Location: LCCOMB_X22_Y14_N6
\inst25|inst28|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|q[0]~7_combout\ = (\inst25|inst28|q\(0) & (\inst25|inst28|q[3]~1_combout\ & ((!\inst25|inst28|_~1_combout\)))) # (!\inst25|inst28|q\(0) & ((\inst25|inst28|_~3_combout\) # ((\inst25|inst28|q[3]~1_combout\ & \inst25|inst28|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q[3]~1_combout\,
	datab => \inst25|inst28|_~3_combout\,
	datac => \inst25|inst28|q\(0),
	datad => \inst25|inst28|_~1_combout\,
	combout => \inst25|inst28|q[0]~7_combout\);

-- Location: FF_X22_Y14_N7
\inst25|inst28|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst28|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst28|q\(0));

-- Location: LCCOMB_X22_Y14_N16
\inst25|inst28|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst28|_~0_combout\ = (!\inst25|inst28|q\(0) & (!\inst25|inst28|q\(2) & (!\inst25|inst28|q\(1) & !\inst25|inst28|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(0),
	datab => \inst25|inst28|q\(2),
	datac => \inst25|inst28|q\(1),
	datad => \inst25|inst28|q\(3),
	combout => \inst25|inst28|_~0_combout\);

-- Location: LCCOMB_X21_Y10_N20
\inst25|inst37|aux_dig[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst37|aux_dig[2]~1_combout\ = (\inst25|inst37|_~1_combout\) # ((\inst25|inst39|q\(1) & (\inst25|inst39|q\(0) & \inst25|inst22|reset_cont~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst39|q\(1),
	datab => \inst25|inst39|q\(0),
	datac => \inst25|inst22|reset_cont~2_combout\,
	datad => \inst25|inst37|_~1_combout\,
	combout => \inst25|inst37|aux_dig[2]~1_combout\);

-- Location: FF_X21_Y10_N21
\inst25|inst37|aux_dig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst37|aux_dig[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst37|aux_dig\(2));

-- Location: LCCOMB_X21_Y10_N2
\inst25|inst37|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst37|_~1_combout\ = (\inst25|inst37|aux_dig\(2) & (!\inst15|menu_out_c2[0]~3_combout\ & \inst15|menu_out_c2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst37|aux_dig\(2),
	datac => \inst15|menu_out_c2[0]~3_combout\,
	datad => \inst15|menu_out_c2[1]~2_combout\,
	combout => \inst25|inst37|_~1_combout\);

-- Location: FF_X21_Y10_N3
\inst25|inst37|digsel_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst37|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst37|digsel_q\(2));

-- Location: LCCOMB_X22_Y15_N30
\inst25|inst26|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|_~1_combout\ = (\inst1|crono_q\(1)) # (!\inst1|crono_q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datac => \inst1|crono_q\(2),
	combout => \inst25|inst26|_~1_combout\);

-- Location: LCCOMB_X23_Y14_N28
\inst25|inst26|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|_~2_combout\ = (\inst25|inst37|digsel_q\(2) & (\inst25|inst39|btn2_reg~q\ & ((\inst25|inst26|_~1_combout\) # (!\inst20|inst|ff3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst37|digsel_q\(2),
	datab => \inst25|inst26|_~1_combout\,
	datac => \inst25|inst39|btn2_reg~q\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst25|inst26|_~2_combout\);

-- Location: LCCOMB_X23_Y14_N12
\inst25|inst26|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|q[3]~1_combout\ = (!\inst25|inst23|reset_final_pulse~combout\ & ((!\inst25|inst39|up_pulse~0_combout\) # (!\inst25|inst37|digsel_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst23|reset_final_pulse~combout\,
	datac => \inst25|inst37|digsel_q\(2),
	datad => \inst25|inst39|up_pulse~0_combout\,
	combout => \inst25|inst26|q[3]~1_combout\);

-- Location: LCCOMB_X21_Y13_N18
\inst25|inst26|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|op_1~2_combout\ = \inst25|inst26|q\(1) $ (\inst25|inst26|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst26|q\(1),
	datad => \inst25|inst26|q\(0),
	combout => \inst25|inst26|op_1~2_combout\);

-- Location: LCCOMB_X23_Y14_N6
\inst25|inst26|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|q[1]~5_combout\ = (\inst25|inst26|_~2_combout\ & (!\inst25|inst26|_~0_combout\ & (\inst25|inst26|q\(1) $ (!\inst25|inst26|q\(0))))) # (!\inst25|inst26|_~2_combout\ & (\inst25|inst26|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|q\(1),
	datab => \inst25|inst26|_~0_combout\,
	datac => \inst25|inst26|q\(0),
	datad => \inst25|inst26|_~2_combout\,
	combout => \inst25|inst26|q[1]~5_combout\);

-- Location: LCCOMB_X23_Y14_N4
\inst25|inst26|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|q[1]~6_combout\ = (\inst25|inst26|q[3]~1_combout\ & ((\inst25|inst26|q[1]~5_combout\) # ((\inst25|inst26|op_1~2_combout\ & \inst25|inst26|_~4_combout\)))) # (!\inst25|inst26|q[3]~1_combout\ & (\inst25|inst26|op_1~2_combout\ & 
-- (\inst25|inst26|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|q[3]~1_combout\,
	datab => \inst25|inst26|op_1~2_combout\,
	datac => \inst25|inst26|_~4_combout\,
	datad => \inst25|inst26|q[1]~5_combout\,
	combout => \inst25|inst26|q[1]~6_combout\);

-- Location: FF_X23_Y14_N5
\inst25|inst26|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst26|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst26|q\(1));

-- Location: LCCOMB_X21_Y13_N8
\inst25|inst26|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|op_2~0_combout\ = (!\inst25|inst26|q\(1) & !\inst25|inst26|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst26|q\(1),
	datad => \inst25|inst26|q\(0),
	combout => \inst25|inst26|op_2~0_combout\);

-- Location: LCCOMB_X23_Y14_N22
\inst25|inst26|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|q[2]~3_combout\ = (\inst25|inst26|_~2_combout\ & (!\inst25|inst26|_~0_combout\ & (\inst25|inst26|op_2~0_combout\ $ (\inst25|inst26|q\(2))))) # (!\inst25|inst26|_~2_combout\ & (((\inst25|inst26|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|op_2~0_combout\,
	datab => \inst25|inst26|_~0_combout\,
	datac => \inst25|inst26|q\(2),
	datad => \inst25|inst26|_~2_combout\,
	combout => \inst25|inst26|q[2]~3_combout\);

-- Location: LCCOMB_X23_Y14_N16
\inst25|inst26|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|op_1~1_combout\ = \inst25|inst26|q\(2) $ (((\inst25|inst26|q\(0) & \inst25|inst26|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst26|q\(2),
	datac => \inst25|inst26|q\(0),
	datad => \inst25|inst26|q\(1),
	combout => \inst25|inst26|op_1~1_combout\);

-- Location: LCCOMB_X23_Y14_N14
\inst25|inst26|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|q[2]~4_combout\ = (\inst25|inst26|q[2]~3_combout\ & ((\inst25|inst26|q[3]~1_combout\) # ((\inst25|inst26|op_1~1_combout\ & \inst25|inst26|_~4_combout\)))) # (!\inst25|inst26|q[2]~3_combout\ & (\inst25|inst26|op_1~1_combout\ & 
-- (\inst25|inst26|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|q[2]~3_combout\,
	datab => \inst25|inst26|op_1~1_combout\,
	datac => \inst25|inst26|_~4_combout\,
	datad => \inst25|inst26|q[3]~1_combout\,
	combout => \inst25|inst26|q[2]~4_combout\);

-- Location: FF_X23_Y14_N15
\inst25|inst26|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst26|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst26|q\(2));

-- Location: LCCOMB_X23_Y14_N10
\inst25|inst26|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|q[3]~0_combout\ = \inst25|inst26|q\(3) $ (((\inst25|inst26|op_2~0_combout\ & (!\inst25|inst26|q\(2) & \inst25|inst26|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|op_2~0_combout\,
	datab => \inst25|inst26|q\(3),
	datac => \inst25|inst26|q\(2),
	datad => \inst25|inst26|_~2_combout\,
	combout => \inst25|inst26|q[3]~0_combout\);

-- Location: LCCOMB_X23_Y14_N30
\inst25|inst26|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|op_1~0_combout\ = \inst25|inst26|q\(3) $ (((\inst25|inst26|q\(0) & (\inst25|inst26|q\(2) & \inst25|inst26|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|q\(0),
	datab => \inst25|inst26|q\(3),
	datac => \inst25|inst26|q\(2),
	datad => \inst25|inst26|q\(1),
	combout => \inst25|inst26|op_1~0_combout\);

-- Location: LCCOMB_X23_Y14_N20
\inst25|inst26|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|q[3]~2_combout\ = (\inst25|inst26|q[3]~0_combout\ & ((\inst25|inst26|q[3]~1_combout\) # ((\inst25|inst26|op_1~0_combout\ & \inst25|inst26|_~4_combout\)))) # (!\inst25|inst26|q[3]~0_combout\ & (\inst25|inst26|op_1~0_combout\ & 
-- (\inst25|inst26|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|q[3]~0_combout\,
	datab => \inst25|inst26|op_1~0_combout\,
	datac => \inst25|inst26|_~4_combout\,
	datad => \inst25|inst26|q[3]~1_combout\,
	combout => \inst25|inst26|q[3]~2_combout\);

-- Location: FF_X23_Y14_N21
\inst25|inst26|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst26|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst26|q\(3));

-- Location: LCCOMB_X23_Y14_N18
\inst25|inst26|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|_~3_combout\ = (((\inst25|inst26|q\(2)) # (\inst25|inst26|q\(1))) # (!\inst25|inst26|q\(3))) # (!\inst25|inst26|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|q\(0),
	datab => \inst25|inst26|q\(3),
	datac => \inst25|inst26|q\(2),
	datad => \inst25|inst26|q\(1),
	combout => \inst25|inst26|_~3_combout\);

-- Location: LCCOMB_X23_Y14_N8
\inst25|inst26|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|_~4_combout\ = (\inst25|inst26|_~3_combout\ & (!\inst25|inst23|reset_final_pulse~combout\ & (\inst25|inst37|digsel_q\(2) & \inst25|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|_~3_combout\,
	datab => \inst25|inst23|reset_final_pulse~combout\,
	datac => \inst25|inst37|digsel_q\(2),
	datad => \inst25|inst39|up_pulse~0_combout\,
	combout => \inst25|inst26|_~4_combout\);

-- Location: LCCOMB_X23_Y14_N26
\inst25|inst26|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|q[0]~7_combout\ = (\inst25|inst26|q\(0) & (!\inst25|inst26|_~2_combout\ & ((\inst25|inst26|q[3]~1_combout\)))) # (!\inst25|inst26|q\(0) & ((\inst25|inst26|_~4_combout\) # ((\inst25|inst26|_~2_combout\ & \inst25|inst26|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|_~2_combout\,
	datab => \inst25|inst26|_~4_combout\,
	datac => \inst25|inst26|q\(0),
	datad => \inst25|inst26|q[3]~1_combout\,
	combout => \inst25|inst26|q[0]~7_combout\);

-- Location: FF_X23_Y14_N27
\inst25|inst26|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst26|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst26|q\(0));

-- Location: LCCOMB_X23_Y14_N2
\inst25|inst26|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst26|_~0_combout\ = (!\inst25|inst26|q\(0) & (!\inst25|inst26|q\(1) & (!\inst25|inst26|q\(2) & !\inst25|inst26|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|q\(0),
	datab => \inst25|inst26|q\(1),
	datac => \inst25|inst26|q\(2),
	datad => \inst25|inst26|q\(3),
	combout => \inst25|inst26|_~0_combout\);

-- Location: LCCOMB_X21_Y10_N16
\inst25|inst37|aux_dig[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst37|aux_dig[1]~0_combout\ = (\inst25|inst37|_~0_combout\) # ((!\inst25|inst39|q\(1) & (!\inst25|inst39|q\(0) & \inst25|inst22|reset_cont~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst39|q\(1),
	datab => \inst25|inst39|q\(0),
	datac => \inst25|inst22|reset_cont~2_combout\,
	datad => \inst25|inst37|_~0_combout\,
	combout => \inst25|inst37|aux_dig[1]~0_combout\);

-- Location: FF_X21_Y10_N17
\inst25|inst37|aux_dig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst37|aux_dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst37|aux_dig\(1));

-- Location: LCCOMB_X21_Y10_N18
\inst25|inst37|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst37|_~0_combout\ = (\inst25|inst37|aux_dig\(1) & (!\inst15|menu_out_c2[0]~3_combout\ & \inst15|menu_out_c2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst37|aux_dig\(1),
	datac => \inst15|menu_out_c2[0]~3_combout\,
	datad => \inst15|menu_out_c2[1]~2_combout\,
	combout => \inst25|inst37|_~0_combout\);

-- Location: LCCOMB_X21_Y10_N22
\inst25|inst37|digsel_q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst37|digsel_q[1]~feeder_combout\ = \inst25|inst37|_~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst25|inst37|_~0_combout\,
	combout => \inst25|inst37|digsel_q[1]~feeder_combout\);

-- Location: FF_X21_Y10_N23
\inst25|inst37|digsel_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst37|digsel_q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst37|digsel_q\(1));

-- Location: LCCOMB_X24_Y14_N10
\inst25|inst25|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|q[3]~1_combout\ = (!\inst25|inst23|reset_final_pulse~combout\ & ((!\inst25|inst37|digsel_q\(1)) # (!\inst25|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst23|reset_final_pulse~combout\,
	datac => \inst25|inst39|up_pulse~0_combout\,
	datad => \inst25|inst37|digsel_q\(1),
	combout => \inst25|inst25|q[3]~1_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst25|inst25|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|_~1_combout\ = (\inst25|inst37|digsel_q\(1) & (\inst25|inst39|btn2_reg~q\ & !\inst15|deb1_out_c2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst37|digsel_q\(1),
	datac => \inst25|inst39|btn2_reg~q\,
	datad => \inst15|deb1_out_c2~1_combout\,
	combout => \inst25|inst25|_~1_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst25|inst25|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|q[0]~7_combout\ = (\inst25|inst25|q\(0) & (!\inst25|inst25|_~1_combout\ & ((\inst25|inst25|q[3]~1_combout\)))) # (!\inst25|inst25|q\(0) & ((\inst25|inst25|_~3_combout\) # ((\inst25|inst25|_~1_combout\ & \inst25|inst25|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|_~1_combout\,
	datab => \inst25|inst25|_~3_combout\,
	datac => \inst25|inst25|q\(0),
	datad => \inst25|inst25|q[3]~1_combout\,
	combout => \inst25|inst25|q[0]~7_combout\);

-- Location: FF_X24_Y14_N7
\inst25|inst25|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst25|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst25|q\(0));

-- Location: LCCOMB_X24_Y14_N22
\inst25|inst25|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|op_1~2_combout\ = \inst25|inst25|q\(1) $ (\inst25|inst25|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|inst25|q\(1),
	datad => \inst25|inst25|q\(0),
	combout => \inst25|inst25|op_1~2_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst25|inst25|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|q[1]~5_combout\ = (\inst25|inst25|_~1_combout\ & (!\inst25|inst25|_~0_combout\ & (\inst25|inst25|q\(1) $ (!\inst25|inst25|q\(0))))) # (!\inst25|inst25|_~1_combout\ & (\inst25|inst25|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|q\(1),
	datab => \inst25|inst25|q\(0),
	datac => \inst25|inst25|_~1_combout\,
	datad => \inst25|inst25|_~0_combout\,
	combout => \inst25|inst25|q[1]~5_combout\);

-- Location: LCCOMB_X24_Y14_N16
\inst25|inst25|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|q[1]~6_combout\ = (\inst25|inst25|q[3]~1_combout\ & ((\inst25|inst25|q[1]~5_combout\) # ((\inst25|inst25|_~3_combout\ & \inst25|inst25|op_1~2_combout\)))) # (!\inst25|inst25|q[3]~1_combout\ & (\inst25|inst25|_~3_combout\ & 
-- (\inst25|inst25|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|q[3]~1_combout\,
	datab => \inst25|inst25|_~3_combout\,
	datac => \inst25|inst25|op_1~2_combout\,
	datad => \inst25|inst25|q[1]~5_combout\,
	combout => \inst25|inst25|q[1]~6_combout\);

-- Location: FF_X24_Y14_N17
\inst25|inst25|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst25|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst25|q\(1));

-- Location: LCCOMB_X24_Y14_N12
\inst25|inst25|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|op_1~0_combout\ = \inst25|inst25|q\(3) $ (((\inst25|inst25|q\(2) & (\inst25|inst25|q\(0) & \inst25|inst25|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|q\(2),
	datab => \inst25|inst25|q\(0),
	datac => \inst25|inst25|q\(1),
	datad => \inst25|inst25|q\(3),
	combout => \inst25|inst25|op_1~0_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst25|inst25|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|op_2~0_combout\ = (!\inst25|inst25|q\(1) & !\inst25|inst25|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|inst25|q\(1),
	datad => \inst25|inst25|q\(0),
	combout => \inst25|inst25|op_2~0_combout\);

-- Location: LCCOMB_X24_Y14_N8
\inst25|inst25|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|q[3]~0_combout\ = \inst25|inst25|q\(3) $ (((\inst25|inst25|op_2~0_combout\ & (!\inst25|inst25|q\(2) & \inst25|inst25|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|op_2~0_combout\,
	datab => \inst25|inst25|q\(2),
	datac => \inst25|inst25|_~1_combout\,
	datad => \inst25|inst25|q\(3),
	combout => \inst25|inst25|q[3]~0_combout\);

-- Location: LCCOMB_X24_Y14_N4
\inst25|inst25|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|q[3]~2_combout\ = (\inst25|inst25|q[3]~1_combout\ & ((\inst25|inst25|q[3]~0_combout\) # ((\inst25|inst25|op_1~0_combout\ & \inst25|inst25|_~3_combout\)))) # (!\inst25|inst25|q[3]~1_combout\ & (\inst25|inst25|op_1~0_combout\ & 
-- ((\inst25|inst25|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|q[3]~1_combout\,
	datab => \inst25|inst25|op_1~0_combout\,
	datac => \inst25|inst25|q[3]~0_combout\,
	datad => \inst25|inst25|_~3_combout\,
	combout => \inst25|inst25|q[3]~2_combout\);

-- Location: FF_X24_Y14_N5
\inst25|inst25|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst25|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst25|q\(3));

-- Location: LCCOMB_X24_Y14_N0
\inst25|inst25|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|_~2_combout\ = (((\inst25|inst25|q\(1)) # (\inst25|inst25|q\(2))) # (!\inst25|inst25|q\(3))) # (!\inst25|inst25|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|q\(0),
	datab => \inst25|inst25|q\(3),
	datac => \inst25|inst25|q\(1),
	datad => \inst25|inst25|q\(2),
	combout => \inst25|inst25|_~2_combout\);

-- Location: LCCOMB_X24_Y14_N18
\inst25|inst25|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|_~3_combout\ = (\inst25|inst25|_~2_combout\ & (!\inst25|inst23|reset_final_pulse~combout\ & (\inst25|inst39|up_pulse~0_combout\ & \inst25|inst37|digsel_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|_~2_combout\,
	datab => \inst25|inst23|reset_final_pulse~combout\,
	datac => \inst25|inst39|up_pulse~0_combout\,
	datad => \inst25|inst37|digsel_q\(1),
	combout => \inst25|inst25|_~3_combout\);

-- Location: LCCOMB_X24_Y14_N14
\inst25|inst25|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|op_1~1_combout\ = \inst25|inst25|q\(2) $ (((\inst25|inst25|q\(0) & \inst25|inst25|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst25|q\(0),
	datac => \inst25|inst25|q\(1),
	datad => \inst25|inst25|q\(2),
	combout => \inst25|inst25|op_1~1_combout\);

-- Location: LCCOMB_X24_Y14_N28
\inst25|inst25|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|q[2]~3_combout\ = (\inst25|inst25|_~1_combout\ & (!\inst25|inst25|_~0_combout\ & (\inst25|inst25|op_2~0_combout\ $ (\inst25|inst25|q\(2))))) # (!\inst25|inst25|_~1_combout\ & (((\inst25|inst25|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|op_2~0_combout\,
	datab => \inst25|inst25|_~0_combout\,
	datac => \inst25|inst25|_~1_combout\,
	datad => \inst25|inst25|q\(2),
	combout => \inst25|inst25|q[2]~3_combout\);

-- Location: LCCOMB_X24_Y14_N26
\inst25|inst25|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|q[2]~4_combout\ = (\inst25|inst25|q[3]~1_combout\ & ((\inst25|inst25|q[2]~3_combout\) # ((\inst25|inst25|_~3_combout\ & \inst25|inst25|op_1~1_combout\)))) # (!\inst25|inst25|q[3]~1_combout\ & (\inst25|inst25|_~3_combout\ & 
-- (\inst25|inst25|op_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|q[3]~1_combout\,
	datab => \inst25|inst25|_~3_combout\,
	datac => \inst25|inst25|op_1~1_combout\,
	datad => \inst25|inst25|q[2]~3_combout\,
	combout => \inst25|inst25|q[2]~4_combout\);

-- Location: FF_X24_Y14_N27
\inst25|inst25|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst25|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst25|q\(2));

-- Location: LCCOMB_X24_Y14_N20
\inst25|inst25|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst25|_~0_combout\ = (!\inst25|inst25|q\(2) & (!\inst25|inst25|q\(1) & (!\inst25|inst25|q\(3) & !\inst25|inst25|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|q\(2),
	datab => \inst25|inst25|q\(1),
	datac => \inst25|inst25|q\(3),
	datad => \inst25|inst25|q\(0),
	combout => \inst25|inst25|_~0_combout\);

-- Location: LCCOMB_X21_Y10_N26
\inst25|inst37|aux_dig[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst37|aux_dig[3]~2_combout\ = (\inst25|inst37|_~2_combout\) # ((\inst25|inst39|q\(1) & (!\inst25|inst39|q\(0) & \inst25|inst22|reset_cont~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst39|q\(1),
	datab => \inst25|inst39|q\(0),
	datac => \inst25|inst37|_~2_combout\,
	datad => \inst25|inst22|reset_cont~2_combout\,
	combout => \inst25|inst37|aux_dig[3]~2_combout\);

-- Location: FF_X21_Y10_N27
\inst25|inst37|aux_dig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst37|aux_dig[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst37|aux_dig\(3));

-- Location: LCCOMB_X21_Y10_N8
\inst25|inst37|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst37|_~2_combout\ = (\inst25|inst37|aux_dig\(3) & (!\inst15|menu_out_c2[0]~3_combout\ & \inst15|menu_out_c2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst37|aux_dig\(3),
	datac => \inst15|menu_out_c2[0]~3_combout\,
	datad => \inst15|menu_out_c2[1]~2_combout\,
	combout => \inst25|inst37|_~2_combout\);

-- Location: FF_X21_Y10_N29
\inst25|inst37|digsel_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst25|inst37|_~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst37|digsel_q\(3));

-- Location: LCCOMB_X22_Y10_N6
\inst25|inst27|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|q[3]~1_combout\ = (!\inst25|inst23|reset_final_pulse~combout\ & ((!\inst25|inst39|up_pulse~0_combout\) # (!\inst25|inst37|digsel_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst37|digsel_q\(3),
	datac => \inst25|inst23|reset_final_pulse~combout\,
	datad => \inst25|inst39|up_pulse~0_combout\,
	combout => \inst25|inst27|q[3]~1_combout\);

-- Location: LCCOMB_X21_Y13_N16
\inst25|inst27|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|_~1_combout\ = (\inst25|inst37|digsel_q\(3) & (\inst25|inst39|btn2_reg~q\ & !\inst15|deb1_out_c2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst37|digsel_q\(3),
	datab => \inst25|inst39|btn2_reg~q\,
	datad => \inst15|deb1_out_c2~1_combout\,
	combout => \inst25|inst27|_~1_combout\);

-- Location: LCCOMB_X22_Y10_N26
\inst25|inst27|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|q[0]~7_combout\ = (\inst25|inst27|q\(0) & (\inst25|inst27|q[3]~1_combout\ & ((!\inst25|inst27|_~1_combout\)))) # (!\inst25|inst27|q\(0) & ((\inst25|inst27|_~3_combout\) # ((\inst25|inst27|q[3]~1_combout\ & \inst25|inst27|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q[3]~1_combout\,
	datab => \inst25|inst27|_~3_combout\,
	datac => \inst25|inst27|q\(0),
	datad => \inst25|inst27|_~1_combout\,
	combout => \inst25|inst27|q[0]~7_combout\);

-- Location: FF_X22_Y10_N27
\inst25|inst27|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst27|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst27|q\(0));

-- Location: LCCOMB_X23_Y10_N28
\inst25|inst27|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|op_1~2_combout\ = \inst25|inst27|q\(1) $ (\inst25|inst27|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst27|q\(1),
	datac => \inst25|inst27|q\(0),
	combout => \inst25|inst27|op_1~2_combout\);

-- Location: LCCOMB_X23_Y10_N26
\inst25|inst27|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|q[1]~5_combout\ = (\inst25|inst27|_~1_combout\ & (!\inst25|inst27|_~0_combout\ & (\inst25|inst27|q\(0) $ (!\inst25|inst27|q\(1))))) # (!\inst25|inst27|_~1_combout\ & (((\inst25|inst27|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q\(0),
	datab => \inst25|inst27|_~0_combout\,
	datac => \inst25|inst27|q\(1),
	datad => \inst25|inst27|_~1_combout\,
	combout => \inst25|inst27|q[1]~5_combout\);

-- Location: LCCOMB_X23_Y10_N14
\inst25|inst27|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|q[1]~6_combout\ = (\inst25|inst27|op_1~2_combout\ & ((\inst25|inst27|_~3_combout\) # ((\inst25|inst27|q[3]~1_combout\ & \inst25|inst27|q[1]~5_combout\)))) # (!\inst25|inst27|op_1~2_combout\ & (\inst25|inst27|q[3]~1_combout\ & 
-- (\inst25|inst27|q[1]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|op_1~2_combout\,
	datab => \inst25|inst27|q[3]~1_combout\,
	datac => \inst25|inst27|q[1]~5_combout\,
	datad => \inst25|inst27|_~3_combout\,
	combout => \inst25|inst27|q[1]~6_combout\);

-- Location: FF_X23_Y10_N15
\inst25|inst27|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst27|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst27|q\(1));

-- Location: LCCOMB_X21_Y10_N4
\inst25|inst27|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|op_2~0_combout\ = (!\inst25|inst27|q\(1) & !\inst25|inst27|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|inst27|q\(1),
	datad => \inst25|inst27|q\(0),
	combout => \inst25|inst27|op_2~0_combout\);

-- Location: LCCOMB_X22_Y10_N8
\inst25|inst27|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|q[3]~0_combout\ = \inst25|inst27|q\(3) $ (((!\inst25|inst27|q\(2) & (\inst25|inst27|op_2~0_combout\ & \inst25|inst27|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q\(3),
	datab => \inst25|inst27|q\(2),
	datac => \inst25|inst27|op_2~0_combout\,
	datad => \inst25|inst27|_~1_combout\,
	combout => \inst25|inst27|q[3]~0_combout\);

-- Location: LCCOMB_X22_Y10_N22
\inst25|inst27|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|op_1~0_combout\ = \inst25|inst27|q\(3) $ (((\inst25|inst27|q\(0) & (\inst25|inst27|q\(1) & \inst25|inst27|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q\(0),
	datab => \inst25|inst27|q\(3),
	datac => \inst25|inst27|q\(1),
	datad => \inst25|inst27|q\(2),
	combout => \inst25|inst27|op_1~0_combout\);

-- Location: LCCOMB_X22_Y10_N20
\inst25|inst27|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|q[3]~2_combout\ = (\inst25|inst27|q[3]~1_combout\ & ((\inst25|inst27|q[3]~0_combout\) # ((\inst25|inst27|op_1~0_combout\ & \inst25|inst27|_~3_combout\)))) # (!\inst25|inst27|q[3]~1_combout\ & (((\inst25|inst27|op_1~0_combout\ & 
-- \inst25|inst27|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q[3]~1_combout\,
	datab => \inst25|inst27|q[3]~0_combout\,
	datac => \inst25|inst27|op_1~0_combout\,
	datad => \inst25|inst27|_~3_combout\,
	combout => \inst25|inst27|q[3]~2_combout\);

-- Location: FF_X22_Y10_N21
\inst25|inst27|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst27|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst27|q\(3));

-- Location: LCCOMB_X22_Y10_N4
\inst25|inst27|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|_~2_combout\ = (((\inst25|inst27|q\(1)) # (\inst25|inst27|q\(2))) # (!\inst25|inst27|q\(3))) # (!\inst25|inst27|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q\(0),
	datab => \inst25|inst27|q\(3),
	datac => \inst25|inst27|q\(1),
	datad => \inst25|inst27|q\(2),
	combout => \inst25|inst27|_~2_combout\);

-- Location: LCCOMB_X22_Y10_N2
\inst25|inst27|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|_~3_combout\ = (!\inst25|inst23|reset_final_pulse~combout\ & (\inst25|inst37|digsel_q\(3) & (\inst25|inst27|_~2_combout\ & \inst25|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|reset_final_pulse~combout\,
	datab => \inst25|inst37|digsel_q\(3),
	datac => \inst25|inst27|_~2_combout\,
	datad => \inst25|inst39|up_pulse~0_combout\,
	combout => \inst25|inst27|_~3_combout\);

-- Location: LCCOMB_X22_Y10_N14
\inst25|inst27|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|op_1~1_combout\ = \inst25|inst27|q\(2) $ (((\inst25|inst27|q\(0) & \inst25|inst27|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q\(0),
	datab => \inst25|inst27|q\(2),
	datac => \inst25|inst27|q\(1),
	combout => \inst25|inst27|op_1~1_combout\);

-- Location: LCCOMB_X22_Y10_N24
\inst25|inst27|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|q[2]~3_combout\ = (\inst25|inst27|_~1_combout\ & (!\inst25|inst27|_~0_combout\ & (\inst25|inst27|q\(2) $ (\inst25|inst27|op_2~0_combout\)))) # (!\inst25|inst27|_~1_combout\ & (((\inst25|inst27|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|_~0_combout\,
	datab => \inst25|inst27|q\(2),
	datac => \inst25|inst27|op_2~0_combout\,
	datad => \inst25|inst27|_~1_combout\,
	combout => \inst25|inst27|q[2]~3_combout\);

-- Location: LCCOMB_X22_Y10_N18
\inst25|inst27|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|q[2]~4_combout\ = (\inst25|inst27|q[3]~1_combout\ & ((\inst25|inst27|q[2]~3_combout\) # ((\inst25|inst27|_~3_combout\ & \inst25|inst27|op_1~1_combout\)))) # (!\inst25|inst27|q[3]~1_combout\ & (\inst25|inst27|_~3_combout\ & 
-- (\inst25|inst27|op_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q[3]~1_combout\,
	datab => \inst25|inst27|_~3_combout\,
	datac => \inst25|inst27|op_1~1_combout\,
	datad => \inst25|inst27|q[2]~3_combout\,
	combout => \inst25|inst27|q[2]~4_combout\);

-- Location: FF_X22_Y10_N19
\inst25|inst27|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst27|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst27|q\(2));

-- Location: LCCOMB_X23_Y14_N24
\inst25|inst27|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst27|_~0_combout\ = (!\inst25|inst27|q\(2) & (!\inst25|inst27|q\(1) & (!\inst25|inst27|q\(0) & !\inst25|inst27|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q\(2),
	datab => \inst25|inst27|q\(1),
	datac => \inst25|inst27|q\(0),
	datad => \inst25|inst27|q\(3),
	combout => \inst25|inst27|_~0_combout\);

-- Location: LCCOMB_X23_Y14_N0
\inst25|inst40|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|_~0_combout\ = (\inst25|inst28|_~0_combout\ & (\inst25|inst26|_~0_combout\ & (\inst25|inst25|_~0_combout\ & \inst25|inst27|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|_~0_combout\,
	datab => \inst25|inst26|_~0_combout\,
	datac => \inst25|inst25|_~0_combout\,
	datad => \inst25|inst27|_~0_combout\,
	combout => \inst25|inst40|_~0_combout\);

-- Location: FF_X25_Y10_N29
\inst23|reset_c_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst25|inst50|resetcont_q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|reset_c_reg\(2));

-- Location: LCCOMB_X25_Y10_N10
\inst25|inst31|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|_~1_combout\ = (\inst1|crono_q\(2) & (!\inst1|crono_q\(1) & ((\inst23|q\(0)) # (\inst23|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(2),
	datab => \inst23|q\(0),
	datac => \inst1|crono_q\(1),
	datad => \inst23|q\(1),
	combout => \inst25|inst31|_~1_combout\);

-- Location: LCCOMB_X24_Y13_N12
\inst15|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~0_combout\ = (\inst1|crono_q\(2) & !\inst1|crono_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|crono_q\(2),
	datad => \inst1|crono_q\(1),
	combout => \inst15|_~0_combout\);

-- Location: LCCOMB_X25_Y10_N14
\inst25|inst50|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst50|_~1_combout\ = (\inst1|crono_q\(2) & (\inst23|q\(0) & (\inst23|q\(1) & !\inst1|crono_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(2),
	datab => \inst23|q\(0),
	datac => \inst23|q\(1),
	datad => \inst1|crono_q\(1),
	combout => \inst25|inst50|_~1_combout\);

-- Location: FF_X25_Y10_N23
\inst25|inst21|menu4_ativo_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst25|inst50|_~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst21|menu4_ativo_reg~q\);

-- Location: LCCOMB_X25_Y10_N22
\inst25|inst21|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst21|_~0_combout\ = (\inst25|inst50|_~0_combout\ & ((\inst25|inst21|menu4_visitado_q~q\) # ((\inst15|_~0_combout\ & !\inst25|inst21|menu4_ativo_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~0_combout\,
	datab => \inst25|inst21|menu4_visitado_q~q\,
	datac => \inst25|inst21|menu4_ativo_reg~q\,
	datad => \inst25|inst50|_~0_combout\,
	combout => \inst25|inst21|_~0_combout\);

-- Location: LCCOMB_X25_Y10_N2
\inst25|inst21|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst21|_~1_combout\ = (!\inst1|reset_c_pulse\(2) & ((\inst25|inst21|_~0_combout\) # ((!\inst25|inst31|_~1_combout\ & \inst25|inst21|menu4_visitado_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reset_c_pulse\(2),
	datab => \inst25|inst31|_~1_combout\,
	datac => \inst25|inst21|menu4_visitado_q~q\,
	datad => \inst25|inst21|_~0_combout\,
	combout => \inst25|inst21|_~1_combout\);

-- Location: FF_X25_Y10_N3
\inst25|inst21|menu4_visitado_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst21|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst21|menu4_visitado_q~q\);

-- Location: LCCOMB_X25_Y10_N28
\inst25|inst21|comp_flag_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst21|comp_flag_q~0_combout\ = (\inst25|inst21|comp_flag_q~q\ & (((\inst23|reset_c_reg\(2))) # (!\inst25|inst50|resetcont_q~q\))) # (!\inst25|inst21|comp_flag_q~q\ & (\inst25|inst21|menu4_visitado_q~q\ & ((\inst23|reset_c_reg\(2)) # 
-- (!\inst25|inst50|resetcont_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst21|comp_flag_q~q\,
	datab => \inst25|inst50|resetcont_q~q\,
	datac => \inst23|reset_c_reg\(2),
	datad => \inst25|inst21|menu4_visitado_q~q\,
	combout => \inst25|inst21|comp_flag_q~0_combout\);

-- Location: LCCOMB_X25_Y10_N0
\inst25|inst21|comp_flag_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst21|comp_flag_q~1_combout\ = (\inst25|inst21|comp_flag_q~0_combout\ & (\inst15|menu_out_c2[1]~2_combout\ $ (!\inst15|menu_out_c2[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|menu_out_c2[1]~2_combout\,
	datac => \inst15|menu_out_c2[0]~3_combout\,
	datad => \inst25|inst21|comp_flag_q~0_combout\,
	combout => \inst25|inst21|comp_flag_q~1_combout\);

-- Location: FF_X25_Y10_N1
\inst25|inst21|comp_flag_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst21|comp_flag_q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst21|comp_flag_q~q\);

-- Location: LCCOMB_X33_Y13_N18
\inst8|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|aux_tff~1_combout\ = !\inst8|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|aux_tff~q\,
	combout => \inst8|aux_tff~1_combout\);

-- Location: LCCOMB_X33_Y13_N30
\inst8|aux_tff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|aux_tff~feeder_combout\ = \inst8|aux_tff~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|aux_tff~1_combout\,
	combout => \inst8|aux_tff~feeder_combout\);

-- Location: FF_X33_Y13_N31
\inst8|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|aux_tff~feeder_combout\,
	ena => \inst11|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|aux_tff~q\);

-- Location: CLKCTRL_G6
\inst8|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst8|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst8|aux_tff~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y10_N24
\inst25|inst50|pausa_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst50|pausa_q~0_combout\ = (\inst25|inst50|_~1_combout\ & (\inst25|inst50|pausa_q~q\ $ (((\inst25|inst39|btn1_reg~q\ & !\inst15|deb2_out_c2~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst39|btn1_reg~q\,
	datab => \inst25|inst50|_~1_combout\,
	datac => \inst25|inst50|pausa_q~q\,
	datad => \inst15|deb2_out_c2~1_combout\,
	combout => \inst25|inst50|pausa_q~0_combout\);

-- Location: FF_X21_Y10_N25
\inst25|inst50|pausa_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst50|pausa_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst50|pausa_q~q\);

-- Location: LCCOMB_X24_Y10_N6
\inst25|inst23|unidade_q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|unidade_q[0]~2_combout\ = \inst25|inst23|unidade_q\(0) $ (((!\inst25|inst50|pausa_q~q\ & (\inst25|inst21|comp_flag_q~q\ & !\inst25|inst40|final_cont~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst50|pausa_q~q\,
	datab => \inst25|inst21|comp_flag_q~q\,
	datac => \inst25|inst23|unidade_q\(0),
	datad => \inst25|inst40|final_cont~14_combout\,
	combout => \inst25|inst23|unidade_q[0]~2_combout\);

-- Location: FF_X24_Y10_N7
\inst25|inst23|unidade_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|unidade_q[0]~2_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|unidade_q\(0));

-- Location: LCCOMB_X25_Y10_N6
\inst25|inst23|pode_contar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|pode_contar~0_combout\ = (!\inst25|inst50|pausa_q~q\ & \inst25|inst21|comp_flag_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|inst50|pausa_q~q\,
	datad => \inst25|inst21|comp_flag_q~q\,
	combout => \inst25|inst23|pode_contar~0_combout\);

-- Location: LCCOMB_X24_Y10_N20
\inst25|inst23|dezena_q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|dezena_q[0]~3_combout\ = \inst25|inst23|dezena_q\(0) $ (((\inst25|inst23|_~0_combout\ & \inst25|inst23|pode_contar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst23|_~0_combout\,
	datac => \inst25|inst23|dezena_q\(0),
	datad => \inst25|inst23|pode_contar~combout\,
	combout => \inst25|inst23|dezena_q[0]~3_combout\);

-- Location: FF_X24_Y10_N21
\inst25|inst23|dezena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|dezena_q[0]~3_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|dezena_q\(0));

-- Location: LCCOMB_X23_Y11_N12
\inst25|inst23|dezena_q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|dezena_q[1]~0_combout\ = (\inst25|inst23|_~0_combout\ & (\inst25|inst21|comp_flag_q~q\ & (!\inst25|inst50|pausa_q~q\ & !\inst25|inst40|final_cont~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|_~0_combout\,
	datab => \inst25|inst21|comp_flag_q~q\,
	datac => \inst25|inst50|pausa_q~q\,
	datad => \inst25|inst40|final_cont~14_combout\,
	combout => \inst25|inst23|dezena_q[1]~0_combout\);

-- Location: LCCOMB_X24_Y10_N26
\inst25|inst23|dezena_q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|dezena_q[1]~4_combout\ = (\inst25|inst23|dezena_q[1]~0_combout\ & (!\inst25|inst23|_~1_combout\ & (\inst25|inst23|dezena_q\(0) $ (\inst25|inst23|dezena_q\(1))))) # (!\inst25|inst23|dezena_q[1]~0_combout\ & (((\inst25|inst23|dezena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|_~1_combout\,
	datab => \inst25|inst23|dezena_q\(0),
	datac => \inst25|inst23|dezena_q\(1),
	datad => \inst25|inst23|dezena_q[1]~0_combout\,
	combout => \inst25|inst23|dezena_q[1]~4_combout\);

-- Location: FF_X24_Y10_N27
\inst25|inst23|dezena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|dezena_q[1]~4_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|dezena_q\(1));

-- Location: LCCOMB_X23_Y10_N16
\inst25|inst23|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|op_2~0_combout\ = \inst25|inst23|dezena_q\(2) $ (((\inst25|inst23|dezena_q\(1) & \inst25|inst23|dezena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst23|dezena_q\(1),
	datac => \inst25|inst23|dezena_q\(0),
	datad => \inst25|inst23|dezena_q\(2),
	combout => \inst25|inst23|op_2~0_combout\);

-- Location: LCCOMB_X23_Y10_N12
\inst25|inst23|dezena_q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|dezena_q[2]~1_combout\ = (\inst25|inst23|dezena_q[1]~0_combout\ & (!\inst25|inst23|_~1_combout\ & (\inst25|inst23|op_2~0_combout\))) # (!\inst25|inst23|dezena_q[1]~0_combout\ & (((\inst25|inst23|dezena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|_~1_combout\,
	datab => \inst25|inst23|op_2~0_combout\,
	datac => \inst25|inst23|dezena_q\(2),
	datad => \inst25|inst23|dezena_q[1]~0_combout\,
	combout => \inst25|inst23|dezena_q[2]~1_combout\);

-- Location: FF_X23_Y10_N13
\inst25|inst23|dezena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|dezena_q[2]~1_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|dezena_q\(2));

-- Location: LCCOMB_X23_Y10_N18
\inst25|inst23|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|op_2~1_combout\ = \inst25|inst23|dezena_q\(3) $ (((\inst25|inst23|dezena_q\(2) & (\inst25|inst23|dezena_q\(0) & \inst25|inst23|dezena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|dezena_q\(2),
	datab => \inst25|inst23|dezena_q\(0),
	datac => \inst25|inst23|dezena_q\(3),
	datad => \inst25|inst23|dezena_q\(1),
	combout => \inst25|inst23|op_2~1_combout\);

-- Location: LCCOMB_X24_Y10_N8
\inst25|inst23|dezena_q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|dezena_q[3]~2_combout\ = (\inst25|inst23|dezena_q[1]~0_combout\ & (!\inst25|inst23|_~1_combout\ & (\inst25|inst23|op_2~1_combout\))) # (!\inst25|inst23|dezena_q[1]~0_combout\ & (((\inst25|inst23|dezena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|_~1_combout\,
	datab => \inst25|inst23|op_2~1_combout\,
	datac => \inst25|inst23|dezena_q\(3),
	datad => \inst25|inst23|dezena_q[1]~0_combout\,
	combout => \inst25|inst23|dezena_q[3]~2_combout\);

-- Location: FF_X24_Y10_N9
\inst25|inst23|dezena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|dezena_q[3]~2_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|dezena_q\(3));

-- Location: LCCOMB_X23_Y10_N6
\inst25|inst23|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|_~1_combout\ = (!\inst25|inst23|dezena_q\(2) & (\inst25|inst23|dezena_q\(3) & (\inst25|inst23|dezena_q\(0) & !\inst25|inst23|dezena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|dezena_q\(2),
	datab => \inst25|inst23|dezena_q\(3),
	datac => \inst25|inst23|dezena_q\(0),
	datad => \inst25|inst23|dezena_q\(1),
	combout => \inst25|inst23|_~1_combout\);

-- Location: LCCOMB_X23_Y10_N24
\inst25|inst23|centena_q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|centena_q[0]~5_combout\ = \inst25|inst23|centena_q\(0) $ (((\inst25|inst23|_~1_combout\ & (\inst25|inst23|_~0_combout\ & \inst25|inst23|pode_contar~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|_~1_combout\,
	datab => \inst25|inst23|_~0_combout\,
	datac => \inst25|inst23|centena_q\(0),
	datad => \inst25|inst23|pode_contar~combout\,
	combout => \inst25|inst23|centena_q[0]~5_combout\);

-- Location: FF_X23_Y10_N25
\inst25|inst23|centena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|centena_q[0]~5_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|centena_q\(0));

-- Location: LCCOMB_X23_Y10_N4
\inst25|inst23|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|op_3~0_combout\ = \inst25|inst23|centena_q\(2) $ (((\inst25|inst23|centena_q\(1) & \inst25|inst23|centena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|centena_q\(1),
	datac => \inst25|inst23|centena_q\(2),
	datad => \inst25|inst23|centena_q\(0),
	combout => \inst25|inst23|op_3~0_combout\);

-- Location: LCCOMB_X23_Y10_N22
\inst25|inst23|milhar_q[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|milhar_q[1]~9_combout\ = (!\inst25|inst50|pausa_q~q\ & (\inst25|inst23|_~0_combout\ & (\inst25|inst21|comp_flag_q~q\ & \inst25|inst23|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst50|pausa_q~q\,
	datab => \inst25|inst23|_~0_combout\,
	datac => \inst25|inst21|comp_flag_q~q\,
	datad => \inst25|inst23|_~1_combout\,
	combout => \inst25|inst23|milhar_q[1]~9_combout\);

-- Location: LCCOMB_X22_Y10_N16
\inst25|inst23|milhar_q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|milhar_q[1]~3_combout\ = (\inst25|inst23|milhar_q[1]~9_combout\ & (!\inst25|inst40|final_cont~12_combout\ & ((!\inst25|inst40|final_cont~13_combout\) # (!\inst25|inst40|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|milhar_q[1]~9_combout\,
	datab => \inst25|inst40|_~0_combout\,
	datac => \inst25|inst40|final_cont~12_combout\,
	datad => \inst25|inst40|final_cont~13_combout\,
	combout => \inst25|inst23|milhar_q[1]~3_combout\);

-- Location: LCCOMB_X22_Y10_N0
\inst25|inst23|centena_q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|centena_q[2]~2_combout\ = (\inst25|inst23|milhar_q[1]~3_combout\ & (\inst25|inst23|op_3~0_combout\ & (!\inst25|inst23|_~3_combout\))) # (!\inst25|inst23|milhar_q[1]~3_combout\ & (((\inst25|inst23|centena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|op_3~0_combout\,
	datab => \inst25|inst23|_~3_combout\,
	datac => \inst25|inst23|centena_q\(2),
	datad => \inst25|inst23|milhar_q[1]~3_combout\,
	combout => \inst25|inst23|centena_q[2]~2_combout\);

-- Location: FF_X22_Y10_N1
\inst25|inst23|centena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|centena_q[2]~2_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|centena_q\(2));

-- Location: LCCOMB_X23_Y10_N10
\inst25|inst23|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|_~3_combout\ = (!\inst25|inst23|centena_q\(1) & (\inst25|inst23|centena_q\(0) & (!\inst25|inst23|centena_q\(2) & \inst25|inst23|centena_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|centena_q\(1),
	datab => \inst25|inst23|centena_q\(0),
	datac => \inst25|inst23|centena_q\(2),
	datad => \inst25|inst23|centena_q\(3),
	combout => \inst25|inst23|_~3_combout\);

-- Location: LCCOMB_X22_Y10_N12
\inst25|inst23|centena_q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|centena_q[1]~4_combout\ = (\inst25|inst23|milhar_q[1]~3_combout\ & (!\inst25|inst23|_~3_combout\ & (\inst25|inst23|centena_q\(0) $ (\inst25|inst23|centena_q\(1))))) # (!\inst25|inst23|milhar_q[1]~3_combout\ & 
-- (((\inst25|inst23|centena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|centena_q\(0),
	datab => \inst25|inst23|_~3_combout\,
	datac => \inst25|inst23|centena_q\(1),
	datad => \inst25|inst23|milhar_q[1]~3_combout\,
	combout => \inst25|inst23|centena_q[1]~4_combout\);

-- Location: FF_X22_Y10_N13
\inst25|inst23|centena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|centena_q[1]~4_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|centena_q\(1));

-- Location: LCCOMB_X22_Y10_N30
\inst25|inst23|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|op_3~1_combout\ = \inst25|inst23|centena_q\(3) $ (((\inst25|inst23|centena_q\(1) & (\inst25|inst23|centena_q\(2) & \inst25|inst23|centena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|centena_q\(1),
	datab => \inst25|inst23|centena_q\(2),
	datac => \inst25|inst23|centena_q\(0),
	datad => \inst25|inst23|centena_q\(3),
	combout => \inst25|inst23|op_3~1_combout\);

-- Location: LCCOMB_X22_Y10_N10
\inst25|inst23|centena_q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|centena_q[3]~3_combout\ = (\inst25|inst23|milhar_q[1]~3_combout\ & (\inst25|inst23|op_3~1_combout\ & (!\inst25|inst23|_~3_combout\))) # (!\inst25|inst23|milhar_q[1]~3_combout\ & (((\inst25|inst23|centena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|op_3~1_combout\,
	datab => \inst25|inst23|_~3_combout\,
	datac => \inst25|inst23|centena_q\(3),
	datad => \inst25|inst23|milhar_q[1]~3_combout\,
	combout => \inst25|inst23|centena_q[3]~3_combout\);

-- Location: FF_X22_Y10_N11
\inst25|inst23|centena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|centena_q[3]~3_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|centena_q\(3));

-- Location: LCCOMB_X22_Y10_N28
\inst25|inst40|final_cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~7_combout\ = (\inst25|inst23|centena_q\(3) & (\inst25|inst27|q\(3) & (\inst25|inst27|q\(2) $ (!\inst25|inst23|centena_q\(2))))) # (!\inst25|inst23|centena_q\(3) & (!\inst25|inst27|q\(3) & (\inst25|inst27|q\(2) $ 
-- (!\inst25|inst23|centena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|centena_q\(3),
	datab => \inst25|inst27|q\(2),
	datac => \inst25|inst27|q\(3),
	datad => \inst25|inst23|centena_q\(2),
	combout => \inst25|inst40|final_cont~7_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst25|inst40|final_cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~8_combout\ = (\inst25|inst27|q\(1) & (\inst25|inst23|centena_q\(1) & (\inst25|inst27|q\(0) $ (!\inst25|inst23|centena_q\(0))))) # (!\inst25|inst27|q\(1) & (!\inst25|inst23|centena_q\(1) & (\inst25|inst27|q\(0) $ 
-- (!\inst25|inst23|centena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q\(1),
	datab => \inst25|inst27|q\(0),
	datac => \inst25|inst23|centena_q\(0),
	datad => \inst25|inst23|centena_q\(1),
	combout => \inst25|inst40|final_cont~8_combout\);

-- Location: LCCOMB_X24_Y15_N24
\inst25|inst23|milhar_q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|milhar_q[0]~7_combout\ = \inst25|inst23|milhar_q\(0) $ (((\inst25|inst23|_~3_combout\ & (\inst25|inst23|milhar_q[1]~2_combout\ & \inst25|inst23|pode_contar~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|_~3_combout\,
	datab => \inst25|inst23|milhar_q[1]~2_combout\,
	datac => \inst25|inst23|milhar_q\(0),
	datad => \inst25|inst23|pode_contar~combout\,
	combout => \inst25|inst23|milhar_q[0]~7_combout\);

-- Location: FF_X24_Y15_N25
\inst25|inst23|milhar_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|milhar_q[0]~7_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|milhar_q\(0));

-- Location: LCCOMB_X23_Y11_N22
\inst25|inst23|milhar_q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|milhar_q[1]~4_combout\ = (\inst25|inst23|pode_contar~0_combout\ & (\inst25|inst23|milhar_q[1]~2_combout\ & (\inst25|inst23|_~3_combout\ & !\inst25|inst40|final_cont~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|pode_contar~0_combout\,
	datab => \inst25|inst23|milhar_q[1]~2_combout\,
	datac => \inst25|inst23|_~3_combout\,
	datad => \inst25|inst40|final_cont~14_combout\,
	combout => \inst25|inst23|milhar_q[1]~4_combout\);

-- Location: LCCOMB_X23_Y11_N16
\inst25|inst23|milhar_q[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|milhar_q[1]~8_combout\ = (\inst25|inst23|milhar_q[1]~4_combout\ & (!\inst25|inst23|_~2_combout\ & (\inst25|inst23|milhar_q\(1) $ (\inst25|inst23|milhar_q\(0))))) # (!\inst25|inst23|milhar_q[1]~4_combout\ & (((\inst25|inst23|milhar_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|milhar_q[1]~4_combout\,
	datab => \inst25|inst23|_~2_combout\,
	datac => \inst25|inst23|milhar_q\(1),
	datad => \inst25|inst23|milhar_q\(0),
	combout => \inst25|inst23|milhar_q[1]~8_combout\);

-- Location: FF_X23_Y11_N17
\inst25|inst23|milhar_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|milhar_q[1]~8_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|milhar_q\(1));

-- Location: LCCOMB_X24_Y15_N12
\inst25|inst23|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|op_4~0_combout\ = \inst25|inst23|milhar_q\(2) $ (((\inst25|inst23|milhar_q\(0) & \inst25|inst23|milhar_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst23|milhar_q\(2),
	datac => \inst25|inst23|milhar_q\(0),
	datad => \inst25|inst23|milhar_q\(1),
	combout => \inst25|inst23|op_4~0_combout\);

-- Location: LCCOMB_X24_Y15_N28
\inst25|inst23|milhar_q[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|milhar_q[2]~5_combout\ = (\inst25|inst23|milhar_q[1]~4_combout\ & (\inst25|inst23|op_4~0_combout\ & (!\inst25|inst23|_~2_combout\))) # (!\inst25|inst23|milhar_q[1]~4_combout\ & (((\inst25|inst23|milhar_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|op_4~0_combout\,
	datab => \inst25|inst23|_~2_combout\,
	datac => \inst25|inst23|milhar_q\(2),
	datad => \inst25|inst23|milhar_q[1]~4_combout\,
	combout => \inst25|inst23|milhar_q[2]~5_combout\);

-- Location: FF_X24_Y15_N29
\inst25|inst23|milhar_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|milhar_q[2]~5_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|milhar_q\(2));

-- Location: LCCOMB_X24_Y15_N22
\inst25|inst23|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|_~2_combout\ = (\inst25|inst23|milhar_q\(0) & (!\inst25|inst23|milhar_q\(2) & (\inst25|inst23|milhar_q\(3) & !\inst25|inst23|milhar_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|milhar_q\(0),
	datab => \inst25|inst23|milhar_q\(2),
	datac => \inst25|inst23|milhar_q\(3),
	datad => \inst25|inst23|milhar_q\(1),
	combout => \inst25|inst23|_~2_combout\);

-- Location: LCCOMB_X24_Y15_N18
\inst25|inst23|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|op_4~1_combout\ = \inst25|inst23|milhar_q\(3) $ (((\inst25|inst23|milhar_q\(0) & (\inst25|inst23|milhar_q\(2) & \inst25|inst23|milhar_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|milhar_q\(0),
	datab => \inst25|inst23|milhar_q\(2),
	datac => \inst25|inst23|milhar_q\(3),
	datad => \inst25|inst23|milhar_q\(1),
	combout => \inst25|inst23|op_4~1_combout\);

-- Location: LCCOMB_X24_Y15_N26
\inst25|inst23|milhar_q[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|milhar_q[3]~6_combout\ = (\inst25|inst23|milhar_q[1]~4_combout\ & (!\inst25|inst23|_~2_combout\ & (\inst25|inst23|op_4~1_combout\))) # (!\inst25|inst23|milhar_q[1]~4_combout\ & (((\inst25|inst23|milhar_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|_~2_combout\,
	datab => \inst25|inst23|op_4~1_combout\,
	datac => \inst25|inst23|milhar_q\(3),
	datad => \inst25|inst23|milhar_q[1]~4_combout\,
	combout => \inst25|inst23|milhar_q[3]~6_combout\);

-- Location: FF_X24_Y15_N27
\inst25|inst23|milhar_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|milhar_q[3]~6_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|milhar_q\(3));

-- Location: LCCOMB_X23_Y11_N14
\inst25|inst40|final_cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~9_combout\ = (\inst25|inst28|q\(2) & (\inst25|inst23|milhar_q\(2) & (\inst25|inst28|q\(3) $ (!\inst25|inst23|milhar_q\(3))))) # (!\inst25|inst28|q\(2) & (!\inst25|inst23|milhar_q\(2) & (\inst25|inst28|q\(3) $ 
-- (!\inst25|inst23|milhar_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(2),
	datab => \inst25|inst28|q\(3),
	datac => \inst25|inst23|milhar_q\(3),
	datad => \inst25|inst23|milhar_q\(2),
	combout => \inst25|inst40|final_cont~9_combout\);

-- Location: LCCOMB_X23_Y11_N2
\inst25|inst40|final_cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~10_combout\ = (\inst25|inst28|q\(1) & (\inst25|inst23|milhar_q\(1) & (\inst25|inst28|q\(0) $ (!\inst25|inst23|milhar_q\(0))))) # (!\inst25|inst28|q\(1) & (!\inst25|inst23|milhar_q\(1) & (\inst25|inst28|q\(0) $ 
-- (!\inst25|inst23|milhar_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(1),
	datab => \inst25|inst23|milhar_q\(1),
	datac => \inst25|inst28|q\(0),
	datad => \inst25|inst23|milhar_q\(0),
	combout => \inst25|inst40|final_cont~10_combout\);

-- Location: LCCOMB_X23_Y11_N4
\inst25|inst40|final_cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~11_combout\ = (\inst25|inst40|final_cont~7_combout\ & (\inst25|inst40|final_cont~8_combout\ & (\inst25|inst40|final_cont~9_combout\ & \inst25|inst40|final_cont~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst40|final_cont~7_combout\,
	datab => \inst25|inst40|final_cont~8_combout\,
	datac => \inst25|inst40|final_cont~9_combout\,
	datad => \inst25|inst40|final_cont~10_combout\,
	combout => \inst25|inst40|final_cont~11_combout\);

-- Location: LCCOMB_X24_Y10_N30
\inst25|inst40|final_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~3_combout\ = (\inst25|inst25|q\(1) & (\inst25|inst23|unidade_q\(1) & (\inst25|inst25|q\(0) $ (!\inst25|inst23|unidade_q\(0))))) # (!\inst25|inst25|q\(1) & (!\inst25|inst23|unidade_q\(1) & (\inst25|inst25|q\(0) $ 
-- (!\inst25|inst23|unidade_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|q\(1),
	datab => \inst25|inst23|unidade_q\(1),
	datac => \inst25|inst25|q\(0),
	datad => \inst25|inst23|unidade_q\(0),
	combout => \inst25|inst40|final_cont~3_combout\);

-- Location: LCCOMB_X24_Y10_N18
\inst25|inst23|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|op_1~1_combout\ = \inst25|inst23|unidade_q\(3) $ (((\inst25|inst23|unidade_q\(2) & (\inst25|inst23|unidade_q\(0) & \inst25|inst23|unidade_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|unidade_q\(2),
	datab => \inst25|inst23|unidade_q\(3),
	datac => \inst25|inst23|unidade_q\(0),
	datad => \inst25|inst23|unidade_q\(1),
	combout => \inst25|inst23|op_1~1_combout\);

-- Location: LCCOMB_X24_Y10_N10
\inst25|inst23|unidade_q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|unidade_q[3]~1_combout\ = (\inst25|inst23|pode_contar~combout\ & (\inst25|inst23|op_1~1_combout\ & (!\inst25|inst23|_~0_combout\))) # (!\inst25|inst23|pode_contar~combout\ & (((\inst25|inst23|unidade_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|op_1~1_combout\,
	datab => \inst25|inst23|_~0_combout\,
	datac => \inst25|inst23|unidade_q\(3),
	datad => \inst25|inst23|pode_contar~combout\,
	combout => \inst25|inst23|unidade_q[3]~1_combout\);

-- Location: FF_X24_Y10_N11
\inst25|inst23|unidade_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|unidade_q[3]~1_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|unidade_q\(3));

-- Location: LCCOMB_X24_Y10_N4
\inst25|inst40|final_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~2_combout\ = (\inst25|inst23|unidade_q\(3) & (\inst25|inst25|q\(3) & (\inst25|inst23|unidade_q\(2) $ (!\inst25|inst25|q\(2))))) # (!\inst25|inst23|unidade_q\(3) & (!\inst25|inst25|q\(3) & (\inst25|inst23|unidade_q\(2) $ 
-- (!\inst25|inst25|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|unidade_q\(3),
	datab => \inst25|inst23|unidade_q\(2),
	datac => \inst25|inst25|q\(2),
	datad => \inst25|inst25|q\(3),
	combout => \inst25|inst40|final_cont~2_combout\);

-- Location: LCCOMB_X24_Y10_N22
\inst25|inst40|final_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~4_combout\ = (\inst25|inst26|q\(2) & (\inst25|inst23|dezena_q\(2) & (\inst25|inst23|dezena_q\(3) $ (!\inst25|inst26|q\(3))))) # (!\inst25|inst26|q\(2) & (!\inst25|inst23|dezena_q\(2) & (\inst25|inst23|dezena_q\(3) $ 
-- (!\inst25|inst26|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst26|q\(2),
	datab => \inst25|inst23|dezena_q\(3),
	datac => \inst25|inst26|q\(3),
	datad => \inst25|inst23|dezena_q\(2),
	combout => \inst25|inst40|final_cont~4_combout\);

-- Location: LCCOMB_X24_Y10_N28
\inst25|inst40|final_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~5_combout\ = (\inst25|inst23|dezena_q\(1) & (\inst25|inst26|q\(1) & (\inst25|inst23|dezena_q\(0) $ (!\inst25|inst26|q\(0))))) # (!\inst25|inst23|dezena_q\(1) & (!\inst25|inst26|q\(1) & (\inst25|inst23|dezena_q\(0) $ 
-- (!\inst25|inst26|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|dezena_q\(1),
	datab => \inst25|inst23|dezena_q\(0),
	datac => \inst25|inst26|q\(1),
	datad => \inst25|inst26|q\(0),
	combout => \inst25|inst40|final_cont~5_combout\);

-- Location: LCCOMB_X24_Y10_N2
\inst25|inst40|final_cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~6_combout\ = (\inst25|inst40|final_cont~3_combout\ & (\inst25|inst40|final_cont~2_combout\ & (\inst25|inst40|final_cont~4_combout\ & \inst25|inst40|final_cont~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst40|final_cont~3_combout\,
	datab => \inst25|inst40|final_cont~2_combout\,
	datac => \inst25|inst40|final_cont~4_combout\,
	datad => \inst25|inst40|final_cont~5_combout\,
	combout => \inst25|inst40|final_cont~6_combout\);

-- Location: LCCOMB_X23_Y11_N10
\inst25|inst40|final_cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~12_combout\ = (\inst25|inst21|comp_flag_q~q\ & (!\inst25|inst40|_~0_combout\ & (\inst25|inst40|final_cont~11_combout\ & \inst25|inst40|final_cont~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst21|comp_flag_q~q\,
	datab => \inst25|inst40|_~0_combout\,
	datac => \inst25|inst40|final_cont~11_combout\,
	datad => \inst25|inst40|final_cont~6_combout\,
	combout => \inst25|inst40|final_cont~12_combout\);

-- Location: LCCOMB_X23_Y11_N26
\inst25|inst23|pode_contar\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|pode_contar~combout\ = (\inst25|inst23|pode_contar~0_combout\ & (!\inst25|inst40|final_cont~12_combout\ & ((!\inst25|inst40|final_cont~13_combout\) # (!\inst25|inst40|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|pode_contar~0_combout\,
	datab => \inst25|inst40|_~0_combout\,
	datac => \inst25|inst40|final_cont~13_combout\,
	datad => \inst25|inst40|final_cont~12_combout\,
	combout => \inst25|inst23|pode_contar~combout\);

-- Location: LCCOMB_X24_Y10_N24
\inst25|inst23|unidade_q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|unidade_q[1]~3_combout\ = (\inst25|inst23|pode_contar~combout\ & (!\inst25|inst23|_~0_combout\ & (\inst25|inst23|unidade_q\(0) $ (\inst25|inst23|unidade_q\(1))))) # (!\inst25|inst23|pode_contar~combout\ & (((\inst25|inst23|unidade_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|unidade_q\(0),
	datab => \inst25|inst23|_~0_combout\,
	datac => \inst25|inst23|unidade_q\(1),
	datad => \inst25|inst23|pode_contar~combout\,
	combout => \inst25|inst23|unidade_q[1]~3_combout\);

-- Location: FF_X24_Y10_N25
\inst25|inst23|unidade_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|unidade_q[1]~3_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|unidade_q\(1));

-- Location: LCCOMB_X24_Y10_N12
\inst25|inst23|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|op_1~0_combout\ = \inst25|inst23|unidade_q\(2) $ (((\inst25|inst23|unidade_q\(0) & \inst25|inst23|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst23|unidade_q\(2),
	datac => \inst25|inst23|unidade_q\(0),
	datad => \inst25|inst23|unidade_q\(1),
	combout => \inst25|inst23|op_1~0_combout\);

-- Location: LCCOMB_X24_Y10_N16
\inst25|inst23|unidade_q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|unidade_q[2]~0_combout\ = (\inst25|inst23|pode_contar~combout\ & (\inst25|inst23|op_1~0_combout\ & (!\inst25|inst23|_~0_combout\))) # (!\inst25|inst23|pode_contar~combout\ & (((\inst25|inst23|unidade_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|op_1~0_combout\,
	datab => \inst25|inst23|_~0_combout\,
	datac => \inst25|inst23|unidade_q\(2),
	datad => \inst25|inst23|pode_contar~combout\,
	combout => \inst25|inst23|unidade_q[2]~0_combout\);

-- Location: FF_X24_Y10_N17
\inst25|inst23|unidade_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst8|aux_tff~clkctrl_outclk\,
	d => \inst25|inst23|unidade_q[2]~0_combout\,
	clrn => \inst25|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst23|unidade_q\(2));

-- Location: LCCOMB_X24_Y10_N0
\inst25|inst23|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|_~0_combout\ = (\inst25|inst23|unidade_q\(0) & (!\inst25|inst23|unidade_q\(2) & (\inst25|inst23|unidade_q\(3) & !\inst25|inst23|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|unidade_q\(0),
	datab => \inst25|inst23|unidade_q\(2),
	datac => \inst25|inst23|unidade_q\(3),
	datad => \inst25|inst23|unidade_q\(1),
	combout => \inst25|inst23|_~0_combout\);

-- Location: LCCOMB_X23_Y10_N0
\inst25|inst23|milhar_q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst23|milhar_q[1]~2_combout\ = (\inst25|inst23|_~0_combout\ & \inst25|inst23|_~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|inst23|_~0_combout\,
	datad => \inst25|inst23|_~1_combout\,
	combout => \inst25|inst23|milhar_q[1]~2_combout\);

-- Location: LCCOMB_X23_Y11_N8
\inst25|inst40|final_cont~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~13_combout\ = (\inst25|inst21|comp_flag_q~q\ & (\inst25|inst23|milhar_q[1]~2_combout\ & (\inst25|inst23|_~3_combout\ & \inst25|inst23|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst21|comp_flag_q~q\,
	datab => \inst25|inst23|milhar_q[1]~2_combout\,
	datac => \inst25|inst23|_~3_combout\,
	datad => \inst25|inst23|_~2_combout\,
	combout => \inst25|inst40|final_cont~13_combout\);

-- Location: LCCOMB_X23_Y11_N18
\inst25|inst40|final_cont~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst40|final_cont~14_combout\ = (\inst25|inst40|final_cont~12_combout\) # ((\inst25|inst40|_~0_combout\ & \inst25|inst40|final_cont~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst40|_~0_combout\,
	datac => \inst25|inst40|final_cont~13_combout\,
	datad => \inst25|inst40|final_cont~12_combout\,
	combout => \inst25|inst40|final_cont~14_combout\);

-- Location: FF_X23_Y11_N19
\inst7|flag_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst40|final_cont~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|flag_reg\(2));

-- Location: LCCOMB_X23_Y11_N24
\inst7|flag_pulse[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|flag_pulse\(2) = (!\inst7|flag_reg\(2) & ((\inst25|inst40|final_cont~12_combout\) # ((\inst25|inst40|_~0_combout\ & \inst25|inst40|final_cont~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|flag_reg\(2),
	datab => \inst25|inst40|_~0_combout\,
	datac => \inst25|inst40|final_cont~13_combout\,
	datad => \inst25|inst40|final_cont~12_combout\,
	combout => \inst7|flag_pulse\(2));

-- Location: LCCOMB_X23_Y11_N30
\inst1|select_q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|select_q[1]~6_combout\ = (!\inst1|reset_c_pulse\(2) & (!\inst13|inst23|reset_pulse~combout\ & (!\inst7|flag_pulse\(1) & !\inst7|flag_pulse\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reset_c_pulse\(2),
	datab => \inst13|inst23|reset_pulse~combout\,
	datac => \inst7|flag_pulse\(1),
	datad => \inst7|flag_pulse\(2),
	combout => \inst1|select_q[1]~6_combout\);

-- Location: LCCOMB_X24_Y11_N26
\inst15|menu_out_c3[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|menu_out_c3[1]~3_combout\ = (!\inst1|crono_q\(1) & (\inst1|crono_q\(3) & (\inst23|q\(1) & !\inst1|crono_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst1|crono_q\(3),
	datac => \inst23|q\(1),
	datad => \inst1|crono_q\(2),
	combout => \inst15|menu_out_c3[1]~3_combout\);

-- Location: FF_X24_Y11_N19
\inst30|inst22|menu_in_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|menu_out_c3[1]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst22|menu_in_reg\(1));

-- Location: LCCOMB_X24_Y11_N6
\inst15|menu_out_c3[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|menu_out_c3[0]~2_combout\ = (!\inst1|crono_q\(1) & (!\inst1|crono_q\(2) & (\inst1|crono_q\(3) & \inst23|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst1|crono_q\(2),
	datac => \inst1|crono_q\(3),
	datad => \inst23|q\(0),
	combout => \inst15|menu_out_c3[0]~2_combout\);

-- Location: FF_X24_Y11_N7
\inst30|inst22|menu_in_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|menu_out_c3[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst22|menu_in_reg\(0));

-- Location: LCCOMB_X24_Y11_N18
\inst30|inst22|reset_cont\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst22|reset_cont~combout\ = (!\inst15|menu_out_c3[1]~3_combout\ & (\inst15|menu_out_c3[0]~2_combout\ & (!\inst30|inst22|menu_in_reg\(1) & !\inst30|inst22|menu_in_reg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|menu_out_c3[1]~3_combout\,
	datab => \inst15|menu_out_c3[0]~2_combout\,
	datac => \inst30|inst22|menu_in_reg\(1),
	datad => \inst30|inst22|menu_in_reg\(0),
	combout => \inst30|inst22|reset_cont~combout\);

-- Location: FF_X24_Y11_N1
\inst30|inst25|reset_novo_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst30|inst22|reset_cont~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst25|reset_novo_reg~q\);

-- Location: LCCOMB_X24_Y11_N0
\inst30|inst23|reset_final_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|reset_final_pulse~0_combout\ = (!\inst30|inst22|menu_in_reg\(1) & (!\inst30|inst25|reset_novo_reg~q\ & !\inst30|inst22|menu_in_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst22|menu_in_reg\(1),
	datac => \inst30|inst25|reset_novo_reg~q\,
	datad => \inst30|inst22|menu_in_reg\(0),
	combout => \inst30|inst23|reset_final_pulse~0_combout\);

-- Location: LCCOMB_X24_Y11_N28
\inst30|inst23|reset_final_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|reset_final_pulse~combout\ = (\inst1|reset_c_pulse\(3)) # ((\inst30|inst23|reset_final_pulse~0_combout\ & (!\inst15|menu_out_c3[1]~3_combout\ & \inst15|menu_out_c3[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reset_c_pulse\(3),
	datab => \inst30|inst23|reset_final_pulse~0_combout\,
	datac => \inst15|menu_out_c3[1]~3_combout\,
	datad => \inst15|menu_out_c3[0]~2_combout\,
	combout => \inst30|inst23|reset_final_pulse~combout\);

-- Location: LCCOMB_X21_Y13_N2
\inst15|deb1_out_c3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|deb1_out_c3~1_combout\ = (\inst1|crono_q\(3) & (!\inst1|crono_q\(2) & (\inst20|inst|ff3~q\ & !\inst1|crono_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(3),
	datab => \inst1|crono_q\(2),
	datac => \inst20|inst|ff3~q\,
	datad => \inst1|crono_q\(1),
	combout => \inst15|deb1_out_c3~1_combout\);

-- Location: LCCOMB_X21_Y13_N14
\inst15|deb2_out_c3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|deb2_out_c3~1_combout\ = (\inst1|crono_q\(3) & (!\inst1|crono_q\(2) & (!\inst1|crono_q\(1) & \inst20|inst1|ff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(3),
	datab => \inst1|crono_q\(2),
	datac => \inst1|crono_q\(1),
	datad => \inst20|inst1|ff3~q\,
	combout => \inst15|deb2_out_c3~1_combout\);

-- Location: FF_X21_Y13_N29
\inst30|inst39|btn1_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|deb2_out_c3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst39|btn1_reg~q\);

-- Location: FF_X26_Y13_N11
\inst30|inst39|btn2_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|deb1_out_c3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst39|btn2_reg~q\);

-- Location: LCCOMB_X29_Y13_N12
\inst30|inst39|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst39|q[1]~3_combout\ = (\inst15|deb1_out_c3~1_combout\ & (((\inst15|deb2_out_c3~1_combout\)) # (!\inst30|inst39|btn1_reg~q\))) # (!\inst15|deb1_out_c3~1_combout\ & (!\inst30|inst39|btn2_reg~q\ & ((\inst15|deb2_out_c3~1_combout\) # 
-- (!\inst30|inst39|btn1_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|deb1_out_c3~1_combout\,
	datab => \inst30|inst39|btn1_reg~q\,
	datac => \inst15|deb2_out_c3~1_combout\,
	datad => \inst30|inst39|btn2_reg~q\,
	combout => \inst30|inst39|q[1]~3_combout\);

-- Location: LCCOMB_X29_Y13_N26
\inst30|inst39|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst39|q[0]~5_combout\ = \inst30|inst39|q\(0) $ (((!\inst15|menu_out_c3[1]~3_combout\ & (\inst15|menu_out_c3[0]~2_combout\ & !\inst30|inst39|q[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|menu_out_c3[1]~3_combout\,
	datab => \inst15|menu_out_c3[0]~2_combout\,
	datac => \inst30|inst39|q\(0),
	datad => \inst30|inst39|q[1]~3_combout\,
	combout => \inst30|inst39|q[0]~5_combout\);

-- Location: FF_X29_Y13_N27
\inst30|inst39|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst39|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst39|q\(0));

-- Location: LCCOMB_X29_Y13_N10
\inst30|inst22|reset_cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst22|reset_cont~0_combout\ = (!\inst15|menu_out_c3[1]~3_combout\ & \inst15|menu_out_c3[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|menu_out_c3[1]~3_combout\,
	datad => \inst15|menu_out_c3[0]~2_combout\,
	combout => \inst30|inst22|reset_cont~0_combout\);

-- Location: LCCOMB_X29_Y13_N22
\inst30|inst39|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst39|op_1~0_combout\ = \inst30|inst39|q\(1) $ (\inst30|inst39|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst39|q\(1),
	datac => \inst30|inst39|q\(0),
	combout => \inst30|inst39|op_1~0_combout\);

-- Location: LCCOMB_X21_Y13_N28
\inst30|inst39|up_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst39|up_pulse~0_combout\ = (\inst30|inst39|btn1_reg~q\ & ((!\inst20|inst1|ff3~q\) # (!\inst15|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~1_combout\,
	datac => \inst30|inst39|btn1_reg~q\,
	datad => \inst20|inst1|ff3~q\,
	combout => \inst30|inst39|up_pulse~0_combout\);

-- Location: LCCOMB_X29_Y13_N0
\inst30|inst39|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst39|q[1]~2_combout\ = (\inst30|inst39|op_1~0_combout\ & (((\inst30|inst39|up_pulse~0_combout\)))) # (!\inst30|inst39|op_1~0_combout\ & (\inst30|inst39|btn2_reg~q\ & (!\inst15|deb1_out_c3~1_combout\ & !\inst30|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst39|op_1~0_combout\,
	datab => \inst30|inst39|btn2_reg~q\,
	datac => \inst15|deb1_out_c3~1_combout\,
	datad => \inst30|inst39|up_pulse~0_combout\,
	combout => \inst30|inst39|q[1]~2_combout\);

-- Location: LCCOMB_X29_Y13_N4
\inst30|inst39|q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst39|q[1]~4_combout\ = (\inst30|inst22|reset_cont~0_combout\ & ((\inst30|inst39|q[1]~2_combout\) # ((\inst30|inst39|q\(1) & \inst30|inst39|q[1]~3_combout\)))) # (!\inst30|inst22|reset_cont~0_combout\ & (((\inst30|inst39|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst22|reset_cont~0_combout\,
	datab => \inst30|inst39|q[1]~2_combout\,
	datac => \inst30|inst39|q\(1),
	datad => \inst30|inst39|q[1]~3_combout\,
	combout => \inst30|inst39|q[1]~4_combout\);

-- Location: FF_X29_Y13_N5
\inst30|inst39|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst39|q[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst39|q\(1));

-- Location: LCCOMB_X29_Y13_N16
\inst30|inst37|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|_~1_combout\ = (!\inst30|inst39|q\(0) & (\inst30|inst39|q\(1) & (!\inst15|menu_out_c3[1]~3_combout\ & \inst15|menu_out_c3[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst39|q\(0),
	datab => \inst30|inst39|q\(1),
	datac => \inst15|menu_out_c3[1]~3_combout\,
	datad => \inst15|menu_out_c3[0]~2_combout\,
	combout => \inst30|inst37|_~1_combout\);

-- Location: LCCOMB_X29_Y13_N24
\inst30|inst37|aux_dig[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|aux_dig[3]~2_combout\ = (\inst30|inst37|_~1_combout\) # ((\inst15|menu_out_c3[1]~3_combout\ & (\inst30|inst37|aux_dig\(3) & !\inst15|menu_out_c3[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|menu_out_c3[1]~3_combout\,
	datab => \inst30|inst37|_~1_combout\,
	datac => \inst30|inst37|aux_dig\(3),
	datad => \inst15|menu_out_c3[0]~2_combout\,
	combout => \inst30|inst37|aux_dig[3]~2_combout\);

-- Location: FF_X29_Y13_N25
\inst30|inst37|aux_dig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst37|aux_dig[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst37|aux_dig\(3));

-- Location: LCCOMB_X29_Y13_N2
\inst30|inst37|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|_~5_combout\ = (\inst30|inst37|aux_dig\(3) & (\inst15|menu_out_c3[1]~3_combout\ & !\inst15|menu_out_c3[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst37|aux_dig\(3),
	datac => \inst15|menu_out_c3[1]~3_combout\,
	datad => \inst15|menu_out_c3[0]~2_combout\,
	combout => \inst30|inst37|_~5_combout\);

-- Location: FF_X29_Y13_N3
\inst30|inst37|digsel_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst37|_~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst37|digsel_q\(3));

-- Location: LCCOMB_X25_Y14_N8
\inst30|inst27|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|q[3]~1_combout\ = (!\inst30|inst23|reset_final_pulse~combout\ & ((!\inst30|inst39|up_pulse~0_combout\) # (!\inst30|inst37|digsel_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst23|reset_final_pulse~combout\,
	datac => \inst30|inst37|digsel_q\(3),
	datad => \inst30|inst39|up_pulse~0_combout\,
	combout => \inst30|inst27|q[3]~1_combout\);

-- Location: LCCOMB_X25_Y14_N28
\inst30|inst27|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|_~1_combout\ = (\inst30|inst39|btn2_reg~q\ & (\inst30|inst37|digsel_q\(3) & !\inst15|deb1_out_c3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst39|btn2_reg~q\,
	datab => \inst30|inst37|digsel_q\(3),
	datad => \inst15|deb1_out_c3~1_combout\,
	combout => \inst30|inst27|_~1_combout\);

-- Location: LCCOMB_X25_Y14_N12
\inst30|inst27|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|op_1~1_combout\ = \inst30|inst27|q\(2) $ (((\inst30|inst27|q\(0) & \inst30|inst27|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst27|q\(0),
	datac => \inst30|inst27|q\(2),
	datad => \inst30|inst27|q\(1),
	combout => \inst30|inst27|op_1~1_combout\);

-- Location: LCCOMB_X28_Y14_N8
\inst30|inst27|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|op_2~0_combout\ = (!\inst30|inst27|q\(0) & !\inst30|inst27|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst27|q\(0),
	datad => \inst30|inst27|q\(1),
	combout => \inst30|inst27|op_2~0_combout\);

-- Location: LCCOMB_X25_Y14_N10
\inst30|inst27|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|q[2]~3_combout\ = (\inst30|inst27|_~1_combout\ & (!\inst30|inst27|_~0_combout\ & (\inst30|inst27|q\(2) $ (\inst30|inst27|op_2~0_combout\)))) # (!\inst30|inst27|_~1_combout\ & (((\inst30|inst27|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|_~0_combout\,
	datab => \inst30|inst27|q\(2),
	datac => \inst30|inst27|op_2~0_combout\,
	datad => \inst30|inst27|_~1_combout\,
	combout => \inst30|inst27|q[2]~3_combout\);

-- Location: LCCOMB_X25_Y14_N14
\inst30|inst27|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|q[2]~4_combout\ = (\inst30|inst27|op_1~1_combout\ & ((\inst30|inst27|_~3_combout\) # ((\inst30|inst27|q[3]~1_combout\ & \inst30|inst27|q[2]~3_combout\)))) # (!\inst30|inst27|op_1~1_combout\ & (((\inst30|inst27|q[3]~1_combout\ & 
-- \inst30|inst27|q[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|op_1~1_combout\,
	datab => \inst30|inst27|_~3_combout\,
	datac => \inst30|inst27|q[3]~1_combout\,
	datad => \inst30|inst27|q[2]~3_combout\,
	combout => \inst30|inst27|q[2]~4_combout\);

-- Location: FF_X25_Y14_N15
\inst30|inst27|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst27|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst27|q\(2));

-- Location: LCCOMB_X25_Y14_N22
\inst30|inst27|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|op_1~0_combout\ = \inst30|inst27|q\(3) $ (((\inst30|inst27|q\(0) & (\inst30|inst27|q\(2) & \inst30|inst27|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|q\(3),
	datab => \inst30|inst27|q\(0),
	datac => \inst30|inst27|q\(2),
	datad => \inst30|inst27|q\(1),
	combout => \inst30|inst27|op_1~0_combout\);

-- Location: LCCOMB_X25_Y14_N2
\inst30|inst27|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|q[3]~0_combout\ = \inst30|inst27|q\(3) $ (((!\inst30|inst27|q\(2) & (\inst30|inst27|op_2~0_combout\ & \inst30|inst27|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|q\(3),
	datab => \inst30|inst27|q\(2),
	datac => \inst30|inst27|op_2~0_combout\,
	datad => \inst30|inst27|_~1_combout\,
	combout => \inst30|inst27|q[3]~0_combout\);

-- Location: LCCOMB_X25_Y14_N16
\inst30|inst27|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|q[3]~2_combout\ = (\inst30|inst27|op_1~0_combout\ & ((\inst30|inst27|_~3_combout\) # ((\inst30|inst27|q[3]~1_combout\ & \inst30|inst27|q[3]~0_combout\)))) # (!\inst30|inst27|op_1~0_combout\ & (\inst30|inst27|q[3]~1_combout\ & 
-- ((\inst30|inst27|q[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|op_1~0_combout\,
	datab => \inst30|inst27|q[3]~1_combout\,
	datac => \inst30|inst27|_~3_combout\,
	datad => \inst30|inst27|q[3]~0_combout\,
	combout => \inst30|inst27|q[3]~2_combout\);

-- Location: FF_X25_Y14_N17
\inst30|inst27|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst27|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst27|q\(3));

-- Location: LCCOMB_X25_Y14_N26
\inst30|inst27|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|_~2_combout\ = (((\inst30|inst27|q\(2)) # (\inst30|inst27|q\(1))) # (!\inst30|inst27|q\(0))) # (!\inst30|inst27|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|q\(3),
	datab => \inst30|inst27|q\(0),
	datac => \inst30|inst27|q\(2),
	datad => \inst30|inst27|q\(1),
	combout => \inst30|inst27|_~2_combout\);

-- Location: LCCOMB_X25_Y14_N4
\inst30|inst27|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|_~3_combout\ = (\inst30|inst27|_~2_combout\ & (\inst30|inst37|digsel_q\(3) & (!\inst30|inst23|reset_final_pulse~combout\ & \inst30|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|_~2_combout\,
	datab => \inst30|inst37|digsel_q\(3),
	datac => \inst30|inst23|reset_final_pulse~combout\,
	datad => \inst30|inst39|up_pulse~0_combout\,
	combout => \inst30|inst27|_~3_combout\);

-- Location: LCCOMB_X25_Y14_N24
\inst30|inst27|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|q[0]~7_combout\ = (\inst30|inst27|q\(0) & (!\inst30|inst27|_~1_combout\ & ((\inst30|inst27|q[3]~1_combout\)))) # (!\inst30|inst27|q\(0) & ((\inst30|inst27|_~3_combout\) # ((\inst30|inst27|_~1_combout\ & \inst30|inst27|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|_~1_combout\,
	datab => \inst30|inst27|_~3_combout\,
	datac => \inst30|inst27|q\(0),
	datad => \inst30|inst27|q[3]~1_combout\,
	combout => \inst30|inst27|q[0]~7_combout\);

-- Location: FF_X25_Y14_N25
\inst30|inst27|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst27|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst27|q\(0));

-- Location: LCCOMB_X28_Y14_N6
\inst30|inst27|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|op_1~2_combout\ = \inst30|inst27|q\(0) $ (\inst30|inst27|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst27|q\(0),
	datad => \inst30|inst27|q\(1),
	combout => \inst30|inst27|op_1~2_combout\);

-- Location: LCCOMB_X25_Y14_N18
\inst30|inst27|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|q[1]~5_combout\ = (\inst30|inst27|_~1_combout\ & (!\inst30|inst27|_~0_combout\ & (\inst30|inst27|q\(1) $ (!\inst30|inst27|q\(0))))) # (!\inst30|inst27|_~1_combout\ & (\inst30|inst27|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|q\(1),
	datab => \inst30|inst27|_~0_combout\,
	datac => \inst30|inst27|q\(0),
	datad => \inst30|inst27|_~1_combout\,
	combout => \inst30|inst27|q[1]~5_combout\);

-- Location: LCCOMB_X25_Y14_N30
\inst30|inst27|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|q[1]~6_combout\ = (\inst30|inst27|q[3]~1_combout\ & ((\inst30|inst27|q[1]~5_combout\) # ((\inst30|inst27|op_1~2_combout\ & \inst30|inst27|_~3_combout\)))) # (!\inst30|inst27|q[3]~1_combout\ & (\inst30|inst27|op_1~2_combout\ & 
-- (\inst30|inst27|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|q[3]~1_combout\,
	datab => \inst30|inst27|op_1~2_combout\,
	datac => \inst30|inst27|_~3_combout\,
	datad => \inst30|inst27|q[1]~5_combout\,
	combout => \inst30|inst27|q[1]~6_combout\);

-- Location: FF_X25_Y14_N31
\inst30|inst27|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst27|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst27|q\(1));

-- Location: LCCOMB_X25_Y14_N20
\inst30|inst27|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst27|_~0_combout\ = (!\inst30|inst27|q\(1) & (!\inst30|inst27|q\(0) & (!\inst30|inst27|q\(2) & !\inst30|inst27|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|q\(1),
	datab => \inst30|inst27|q\(0),
	datac => \inst30|inst27|q\(2),
	datad => \inst30|inst27|q\(3),
	combout => \inst30|inst27|_~0_combout\);

-- Location: LCCOMB_X29_Y13_N20
\inst30|inst37|blinkdig1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|blinkdig1~1_combout\ = (!\inst30|inst39|q\(0) & (!\inst30|inst39|q\(1) & (!\inst15|menu_out_c3[1]~3_combout\ & \inst15|menu_out_c3[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst39|q\(0),
	datab => \inst30|inst39|q\(1),
	datac => \inst15|menu_out_c3[1]~3_combout\,
	datad => \inst15|menu_out_c3[0]~2_combout\,
	combout => \inst30|inst37|blinkdig1~1_combout\);

-- Location: LCCOMB_X29_Y13_N8
\inst30|inst37|aux_dig[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|aux_dig[1]~0_combout\ = (\inst30|inst37|blinkdig1~1_combout\) # ((\inst15|menu_out_c3[1]~3_combout\ & (!\inst15|menu_out_c3[0]~2_combout\ & \inst30|inst37|aux_dig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|menu_out_c3[1]~3_combout\,
	datab => \inst15|menu_out_c3[0]~2_combout\,
	datac => \inst30|inst37|aux_dig\(1),
	datad => \inst30|inst37|blinkdig1~1_combout\,
	combout => \inst30|inst37|aux_dig[1]~0_combout\);

-- Location: FF_X29_Y13_N9
\inst30|inst37|aux_dig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst37|aux_dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst37|aux_dig\(1));

-- Location: LCCOMB_X29_Y13_N30
\inst30|inst37|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|_~3_combout\ = (\inst15|menu_out_c3[1]~3_combout\ & (\inst30|inst37|aux_dig\(1) & !\inst15|menu_out_c3[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|menu_out_c3[1]~3_combout\,
	datac => \inst30|inst37|aux_dig\(1),
	datad => \inst15|menu_out_c3[0]~2_combout\,
	combout => \inst30|inst37|_~3_combout\);

-- Location: FF_X29_Y13_N31
\inst30|inst37|digsel_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst37|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst37|digsel_q\(1));

-- Location: LCCOMB_X25_Y12_N16
\inst30|inst25|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|_~1_combout\ = (\inst30|inst39|btn2_reg~q\ & (\inst30|inst37|digsel_q\(1) & !\inst15|deb1_out_c3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst39|btn2_reg~q\,
	datac => \inst30|inst37|digsel_q\(1),
	datad => \inst15|deb1_out_c3~1_combout\,
	combout => \inst30|inst25|_~1_combout\);

-- Location: LCCOMB_X25_Y12_N4
\inst30|inst25|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|q[3]~1_combout\ = (!\inst30|inst23|reset_final_pulse~combout\ & ((!\inst30|inst39|up_pulse~0_combout\) # (!\inst30|inst37|digsel_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|reset_final_pulse~combout\,
	datac => \inst30|inst37|digsel_q\(1),
	datad => \inst30|inst39|up_pulse~0_combout\,
	combout => \inst30|inst25|q[3]~1_combout\);

-- Location: LCCOMB_X25_Y12_N2
\inst30|inst25|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|op_2~0_combout\ = (!\inst30|inst25|q\(0) & !\inst30|inst25|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst25|q\(0),
	datad => \inst30|inst25|q\(1),
	combout => \inst30|inst25|op_2~0_combout\);

-- Location: LCCOMB_X25_Y12_N26
\inst30|inst25|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|q[3]~0_combout\ = \inst30|inst25|q\(3) $ (((!\inst30|inst25|q\(2) & (\inst30|inst25|op_2~0_combout\ & \inst30|inst25|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|q\(2),
	datab => \inst30|inst25|op_2~0_combout\,
	datac => \inst30|inst25|q\(3),
	datad => \inst30|inst25|_~1_combout\,
	combout => \inst30|inst25|q[3]~0_combout\);

-- Location: LCCOMB_X25_Y12_N24
\inst30|inst25|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|op_1~0_combout\ = \inst30|inst25|q\(3) $ (((\inst30|inst25|q\(1) & (\inst30|inst25|q\(0) & \inst30|inst25|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|q\(1),
	datab => \inst30|inst25|q\(0),
	datac => \inst30|inst25|q\(3),
	datad => \inst30|inst25|q\(2),
	combout => \inst30|inst25|op_1~0_combout\);

-- Location: LCCOMB_X25_Y12_N0
\inst30|inst25|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|q[3]~2_combout\ = (\inst30|inst25|q[3]~0_combout\ & ((\inst30|inst25|q[3]~1_combout\) # ((\inst30|inst25|op_1~0_combout\ & \inst30|inst25|_~3_combout\)))) # (!\inst30|inst25|q[3]~0_combout\ & (\inst30|inst25|op_1~0_combout\ & 
-- ((\inst30|inst25|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|q[3]~0_combout\,
	datab => \inst30|inst25|op_1~0_combout\,
	datac => \inst30|inst25|q[3]~1_combout\,
	datad => \inst30|inst25|_~3_combout\,
	combout => \inst30|inst25|q[3]~2_combout\);

-- Location: FF_X25_Y12_N1
\inst30|inst25|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst25|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst25|q\(3));

-- Location: LCCOMB_X25_Y12_N22
\inst30|inst25|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|_~2_combout\ = (\inst30|inst25|q\(1)) # (((\inst30|inst25|q\(2)) # (!\inst30|inst25|q\(3))) # (!\inst30|inst25|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|q\(1),
	datab => \inst30|inst25|q\(0),
	datac => \inst30|inst25|q\(3),
	datad => \inst30|inst25|q\(2),
	combout => \inst30|inst25|_~2_combout\);

-- Location: LCCOMB_X25_Y12_N28
\inst30|inst25|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|_~3_combout\ = (!\inst30|inst23|reset_final_pulse~combout\ & (\inst30|inst25|_~2_combout\ & (\inst30|inst37|digsel_q\(1) & \inst30|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|reset_final_pulse~combout\,
	datab => \inst30|inst25|_~2_combout\,
	datac => \inst30|inst37|digsel_q\(1),
	datad => \inst30|inst39|up_pulse~0_combout\,
	combout => \inst30|inst25|_~3_combout\);

-- Location: LCCOMB_X25_Y12_N6
\inst30|inst25|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|q[0]~7_combout\ = (\inst30|inst25|q\(0) & (!\inst30|inst25|_~1_combout\ & (\inst30|inst25|q[3]~1_combout\))) # (!\inst30|inst25|q\(0) & ((\inst30|inst25|_~3_combout\) # ((\inst30|inst25|_~1_combout\ & \inst30|inst25|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|_~1_combout\,
	datab => \inst30|inst25|q[3]~1_combout\,
	datac => \inst30|inst25|q\(0),
	datad => \inst30|inst25|_~3_combout\,
	combout => \inst30|inst25|q[0]~7_combout\);

-- Location: FF_X25_Y12_N7
\inst30|inst25|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst25|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst25|q\(0));

-- Location: LCCOMB_X25_Y8_N2
\inst30|inst25|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|op_1~2_combout\ = \inst30|inst25|q\(0) $ (\inst30|inst25|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|q\(0),
	datad => \inst30|inst25|q\(1),
	combout => \inst30|inst25|op_1~2_combout\);

-- Location: LCCOMB_X25_Y12_N10
\inst30|inst25|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|q[1]~5_combout\ = (\inst30|inst25|_~1_combout\ & (!\inst30|inst25|_~0_combout\ & (\inst30|inst25|q\(1) $ (!\inst30|inst25|q\(0))))) # (!\inst30|inst25|_~1_combout\ & (\inst30|inst25|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|q\(1),
	datab => \inst30|inst25|_~0_combout\,
	datac => \inst30|inst25|q\(0),
	datad => \inst30|inst25|_~1_combout\,
	combout => \inst30|inst25|q[1]~5_combout\);

-- Location: LCCOMB_X25_Y12_N8
\inst30|inst25|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|q[1]~6_combout\ = (\inst30|inst25|op_1~2_combout\ & ((\inst30|inst25|_~3_combout\) # ((\inst30|inst25|q[3]~1_combout\ & \inst30|inst25|q[1]~5_combout\)))) # (!\inst30|inst25|op_1~2_combout\ & (((\inst30|inst25|q[3]~1_combout\ & 
-- \inst30|inst25|q[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|op_1~2_combout\,
	datab => \inst30|inst25|_~3_combout\,
	datac => \inst30|inst25|q[3]~1_combout\,
	datad => \inst30|inst25|q[1]~5_combout\,
	combout => \inst30|inst25|q[1]~6_combout\);

-- Location: FF_X25_Y12_N9
\inst30|inst25|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst25|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst25|q\(1));

-- Location: LCCOMB_X25_Y12_N12
\inst30|inst25|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|op_1~1_combout\ = \inst30|inst25|q\(2) $ (((\inst30|inst25|q\(1) & \inst30|inst25|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|q\(1),
	datac => \inst30|inst25|q\(0),
	datad => \inst30|inst25|q\(2),
	combout => \inst30|inst25|op_1~1_combout\);

-- Location: LCCOMB_X25_Y12_N14
\inst30|inst25|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|q[2]~3_combout\ = (\inst30|inst25|_~1_combout\ & (!\inst30|inst25|_~0_combout\ & (\inst30|inst25|op_2~0_combout\ $ (\inst30|inst25|q\(2))))) # (!\inst30|inst25|_~1_combout\ & (((\inst30|inst25|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|_~0_combout\,
	datab => \inst30|inst25|op_2~0_combout\,
	datac => \inst30|inst25|q\(2),
	datad => \inst30|inst25|_~1_combout\,
	combout => \inst30|inst25|q[2]~3_combout\);

-- Location: LCCOMB_X25_Y12_N30
\inst30|inst25|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|q[2]~4_combout\ = (\inst30|inst25|op_1~1_combout\ & ((\inst30|inst25|_~3_combout\) # ((\inst30|inst25|q[3]~1_combout\ & \inst30|inst25|q[2]~3_combout\)))) # (!\inst30|inst25|op_1~1_combout\ & (\inst30|inst25|q[3]~1_combout\ & 
-- (\inst30|inst25|q[2]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|op_1~1_combout\,
	datab => \inst30|inst25|q[3]~1_combout\,
	datac => \inst30|inst25|q[2]~3_combout\,
	datad => \inst30|inst25|_~3_combout\,
	combout => \inst30|inst25|q[2]~4_combout\);

-- Location: FF_X25_Y12_N31
\inst30|inst25|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst25|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst25|q\(2));

-- Location: LCCOMB_X25_Y12_N18
\inst30|inst25|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst25|_~0_combout\ = (!\inst30|inst25|q\(2) & (!\inst30|inst25|q\(3) & (!\inst30|inst25|q\(1) & !\inst30|inst25|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|q\(2),
	datab => \inst30|inst25|q\(3),
	datac => \inst30|inst25|q\(1),
	datad => \inst30|inst25|q\(0),
	combout => \inst30|inst25|_~0_combout\);

-- Location: LCCOMB_X29_Y13_N6
\inst30|inst37|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|_~0_combout\ = (\inst30|inst39|q\(0) & (\inst30|inst39|q\(1) & (!\inst15|menu_out_c3[1]~3_combout\ & \inst15|menu_out_c3[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst39|q\(0),
	datab => \inst30|inst39|q\(1),
	datac => \inst15|menu_out_c3[1]~3_combout\,
	datad => \inst15|menu_out_c3[0]~2_combout\,
	combout => \inst30|inst37|_~0_combout\);

-- Location: LCCOMB_X29_Y13_N14
\inst30|inst37|aux_dig[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|aux_dig[2]~1_combout\ = (\inst30|inst37|_~0_combout\) # ((\inst15|menu_out_c3[1]~3_combout\ & (\inst30|inst37|aux_dig\(2) & !\inst15|menu_out_c3[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|menu_out_c3[1]~3_combout\,
	datab => \inst30|inst37|_~0_combout\,
	datac => \inst30|inst37|aux_dig\(2),
	datad => \inst15|menu_out_c3[0]~2_combout\,
	combout => \inst30|inst37|aux_dig[2]~1_combout\);

-- Location: FF_X29_Y13_N15
\inst30|inst37|aux_dig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst37|aux_dig[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst37|aux_dig\(2));

-- Location: LCCOMB_X29_Y13_N28
\inst30|inst37|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|_~4_combout\ = (\inst15|menu_out_c3[1]~3_combout\ & (\inst30|inst37|aux_dig\(2) & !\inst15|menu_out_c3[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|menu_out_c3[1]~3_combout\,
	datac => \inst30|inst37|aux_dig\(2),
	datad => \inst15|menu_out_c3[0]~2_combout\,
	combout => \inst30|inst37|_~4_combout\);

-- Location: FF_X29_Y13_N29
\inst30|inst37|digsel_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst37|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst37|digsel_q\(2));

-- Location: LCCOMB_X30_Y11_N6
\inst30|inst26|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|_~1_combout\ = (\inst30|inst37|digsel_q\(2) & (\inst30|inst39|btn2_reg~q\ & !\inst15|deb1_out_c3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst37|digsel_q\(2),
	datac => \inst30|inst39|btn2_reg~q\,
	datad => \inst15|deb1_out_c3~1_combout\,
	combout => \inst30|inst26|_~1_combout\);

-- Location: LCCOMB_X30_Y11_N26
\inst30|inst26|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|q[3]~1_combout\ = (!\inst30|inst23|reset_final_pulse~combout\ & ((!\inst30|inst39|up_pulse~0_combout\) # (!\inst30|inst37|digsel_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|reset_final_pulse~combout\,
	datab => \inst30|inst37|digsel_q\(2),
	datad => \inst30|inst39|up_pulse~0_combout\,
	combout => \inst30|inst26|q[3]~1_combout\);

-- Location: LCCOMB_X30_Y11_N16
\inst30|inst26|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|q[0]~7_combout\ = (\inst30|inst26|q\(0) & (((!\inst30|inst26|_~1_combout\ & \inst30|inst26|q[3]~1_combout\)))) # (!\inst30|inst26|q\(0) & ((\inst30|inst26|_~3_combout\) # ((\inst30|inst26|_~1_combout\ & \inst30|inst26|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|_~3_combout\,
	datab => \inst30|inst26|_~1_combout\,
	datac => \inst30|inst26|q\(0),
	datad => \inst30|inst26|q[3]~1_combout\,
	combout => \inst30|inst26|q[0]~7_combout\);

-- Location: FF_X30_Y11_N17
\inst30|inst26|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst26|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst26|q\(0));

-- Location: LCCOMB_X26_Y11_N14
\inst30|inst26|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|op_1~2_combout\ = \inst30|inst26|q\(0) $ (\inst30|inst26|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst26|q\(0),
	datad => \inst30|inst26|q\(1),
	combout => \inst30|inst26|op_1~2_combout\);

-- Location: LCCOMB_X30_Y11_N18
\inst30|inst26|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|q[1]~5_combout\ = (\inst30|inst26|_~1_combout\ & (!\inst30|inst26|_~0_combout\ & (\inst30|inst26|q\(1) $ (!\inst30|inst26|q\(0))))) # (!\inst30|inst26|_~1_combout\ & (((\inst30|inst26|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|_~0_combout\,
	datab => \inst30|inst26|q\(1),
	datac => \inst30|inst26|q\(0),
	datad => \inst30|inst26|_~1_combout\,
	combout => \inst30|inst26|q[1]~5_combout\);

-- Location: LCCOMB_X30_Y11_N22
\inst30|inst26|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|q[1]~6_combout\ = (\inst30|inst26|_~3_combout\ & ((\inst30|inst26|op_1~2_combout\) # ((\inst30|inst26|q[3]~1_combout\ & \inst30|inst26|q[1]~5_combout\)))) # (!\inst30|inst26|_~3_combout\ & (((\inst30|inst26|q[3]~1_combout\ & 
-- \inst30|inst26|q[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|_~3_combout\,
	datab => \inst30|inst26|op_1~2_combout\,
	datac => \inst30|inst26|q[3]~1_combout\,
	datad => \inst30|inst26|q[1]~5_combout\,
	combout => \inst30|inst26|q[1]~6_combout\);

-- Location: FF_X30_Y11_N23
\inst30|inst26|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst26|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst26|q\(1));

-- Location: LCCOMB_X30_Y11_N14
\inst30|inst26|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|op_1~0_combout\ = \inst30|inst26|q\(3) $ (((\inst30|inst26|q\(0) & (\inst30|inst26|q\(2) & \inst30|inst26|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|q\(0),
	datab => \inst30|inst26|q\(3),
	datac => \inst30|inst26|q\(2),
	datad => \inst30|inst26|q\(1),
	combout => \inst30|inst26|op_1~0_combout\);

-- Location: LCCOMB_X30_Y11_N24
\inst30|inst26|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|op_2~0_combout\ = (!\inst30|inst26|q\(0) & !\inst30|inst26|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|q\(0),
	datad => \inst30|inst26|q\(1),
	combout => \inst30|inst26|op_2~0_combout\);

-- Location: LCCOMB_X30_Y11_N0
\inst30|inst26|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|q[3]~0_combout\ = \inst30|inst26|q\(3) $ (((\inst30|inst26|op_2~0_combout\ & (!\inst30|inst26|q\(2) & \inst30|inst26|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|op_2~0_combout\,
	datab => \inst30|inst26|q\(3),
	datac => \inst30|inst26|q\(2),
	datad => \inst30|inst26|_~1_combout\,
	combout => \inst30|inst26|q[3]~0_combout\);

-- Location: LCCOMB_X30_Y11_N4
\inst30|inst26|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|q[3]~2_combout\ = (\inst30|inst26|_~3_combout\ & ((\inst30|inst26|op_1~0_combout\) # ((\inst30|inst26|q[3]~1_combout\ & \inst30|inst26|q[3]~0_combout\)))) # (!\inst30|inst26|_~3_combout\ & (((\inst30|inst26|q[3]~1_combout\ & 
-- \inst30|inst26|q[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|_~3_combout\,
	datab => \inst30|inst26|op_1~0_combout\,
	datac => \inst30|inst26|q[3]~1_combout\,
	datad => \inst30|inst26|q[3]~0_combout\,
	combout => \inst30|inst26|q[3]~2_combout\);

-- Location: FF_X30_Y11_N5
\inst30|inst26|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst26|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst26|q\(3));

-- Location: LCCOMB_X30_Y11_N28
\inst30|inst26|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|_~2_combout\ = (((\inst30|inst26|q\(2)) # (\inst30|inst26|q\(1))) # (!\inst30|inst26|q\(3))) # (!\inst30|inst26|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|q\(0),
	datab => \inst30|inst26|q\(3),
	datac => \inst30|inst26|q\(2),
	datad => \inst30|inst26|q\(1),
	combout => \inst30|inst26|_~2_combout\);

-- Location: LCCOMB_X30_Y11_N30
\inst30|inst26|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|_~3_combout\ = (!\inst30|inst23|reset_final_pulse~combout\ & (\inst30|inst37|digsel_q\(2) & (\inst30|inst26|_~2_combout\ & \inst30|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|reset_final_pulse~combout\,
	datab => \inst30|inst37|digsel_q\(2),
	datac => \inst30|inst26|_~2_combout\,
	datad => \inst30|inst39|up_pulse~0_combout\,
	combout => \inst30|inst26|_~3_combout\);

-- Location: LCCOMB_X26_Y11_N20
\inst30|inst26|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|op_1~1_combout\ = \inst30|inst26|q\(2) $ (((\inst30|inst26|q\(1) & \inst30|inst26|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|q\(2),
	datab => \inst30|inst26|q\(1),
	datad => \inst30|inst26|q\(0),
	combout => \inst30|inst26|op_1~1_combout\);

-- Location: LCCOMB_X30_Y11_N20
\inst30|inst26|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|q[2]~3_combout\ = (\inst30|inst26|_~1_combout\ & (!\inst30|inst26|_~0_combout\ & (\inst30|inst26|op_2~0_combout\ $ (\inst30|inst26|q\(2))))) # (!\inst30|inst26|_~1_combout\ & (((\inst30|inst26|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|op_2~0_combout\,
	datab => \inst30|inst26|q\(2),
	datac => \inst30|inst26|_~0_combout\,
	datad => \inst30|inst26|_~1_combout\,
	combout => \inst30|inst26|q[2]~3_combout\);

-- Location: LCCOMB_X30_Y11_N2
\inst30|inst26|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|q[2]~4_combout\ = (\inst30|inst26|_~3_combout\ & ((\inst30|inst26|op_1~1_combout\) # ((\inst30|inst26|q[3]~1_combout\ & \inst30|inst26|q[2]~3_combout\)))) # (!\inst30|inst26|_~3_combout\ & (((\inst30|inst26|q[3]~1_combout\ & 
-- \inst30|inst26|q[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|_~3_combout\,
	datab => \inst30|inst26|op_1~1_combout\,
	datac => \inst30|inst26|q[3]~1_combout\,
	datad => \inst30|inst26|q[2]~3_combout\,
	combout => \inst30|inst26|q[2]~4_combout\);

-- Location: FF_X30_Y11_N3
\inst30|inst26|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst26|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst26|q\(2));

-- Location: LCCOMB_X30_Y11_N12
\inst30|inst26|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst26|_~0_combout\ = (!\inst30|inst26|q\(2) & (!\inst30|inst26|q\(3) & (!\inst30|inst26|q\(1) & !\inst30|inst26|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|q\(2),
	datab => \inst30|inst26|q\(3),
	datac => \inst30|inst26|q\(1),
	datad => \inst30|inst26|q\(0),
	combout => \inst30|inst26|_~0_combout\);

-- Location: LCCOMB_X25_Y9_N24
\inst30|inst37|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|_~2_combout\ = (\inst30|inst39|q\(0) & (!\inst15|menu_out_c3[1]~3_combout\ & (\inst15|menu_out_c3[0]~2_combout\ & !\inst30|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst39|q\(0),
	datab => \inst15|menu_out_c3[1]~3_combout\,
	datac => \inst15|menu_out_c3[0]~2_combout\,
	datad => \inst30|inst39|q\(1),
	combout => \inst30|inst37|_~2_combout\);

-- Location: LCCOMB_X25_Y9_N28
\inst30|inst37|aux_dig[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|aux_dig[4]~3_combout\ = (\inst30|inst37|_~2_combout\) # ((!\inst15|menu_out_c3[0]~2_combout\ & (\inst15|menu_out_c3[1]~3_combout\ & \inst30|inst37|aux_dig\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|menu_out_c3[0]~2_combout\,
	datab => \inst15|menu_out_c3[1]~3_combout\,
	datac => \inst30|inst37|aux_dig\(4),
	datad => \inst30|inst37|_~2_combout\,
	combout => \inst30|inst37|aux_dig[4]~3_combout\);

-- Location: FF_X25_Y9_N29
\inst30|inst37|aux_dig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst37|aux_dig[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst37|aux_dig\(4));

-- Location: LCCOMB_X25_Y9_N18
\inst30|inst37|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst37|_~6_combout\ = (\inst30|inst37|aux_dig\(4) & (!\inst15|menu_out_c3[0]~2_combout\ & \inst15|menu_out_c3[1]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst37|aux_dig\(4),
	datac => \inst15|menu_out_c3[0]~2_combout\,
	datad => \inst15|menu_out_c3[1]~3_combout\,
	combout => \inst30|inst37|_~6_combout\);

-- Location: FF_X25_Y9_N19
\inst30|inst37|digsel_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst37|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst37|digsel_q\(4));

-- Location: LCCOMB_X26_Y13_N12
\inst30|inst28|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|q[3]~1_combout\ = (!\inst30|inst23|reset_final_pulse~combout\ & ((!\inst30|inst39|up_pulse~0_combout\) # (!\inst30|inst37|digsel_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|reset_final_pulse~combout\,
	datab => \inst30|inst37|digsel_q\(4),
	datad => \inst30|inst39|up_pulse~0_combout\,
	combout => \inst30|inst28|q[3]~1_combout\);

-- Location: LCCOMB_X26_Y13_N8
\inst30|inst28|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|op_1~1_combout\ = \inst30|inst28|q\(2) $ (((\inst30|inst28|q\(0) & \inst30|inst28|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|q\(2),
	datab => \inst30|inst28|q\(0),
	datad => \inst30|inst28|q\(1),
	combout => \inst30|inst28|op_1~1_combout\);

-- Location: LCCOMB_X28_Y13_N8
\inst30|inst28|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|op_2~0_combout\ = (!\inst30|inst28|q\(0) & !\inst30|inst28|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst28|q\(0),
	datad => \inst30|inst28|q\(1),
	combout => \inst30|inst28|op_2~0_combout\);

-- Location: LCCOMB_X26_Y13_N10
\inst30|inst28|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|_~1_combout\ = (\inst30|inst37|digsel_q\(4) & (\inst30|inst39|btn2_reg~q\ & !\inst15|deb1_out_c3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst37|digsel_q\(4),
	datac => \inst30|inst39|btn2_reg~q\,
	datad => \inst15|deb1_out_c3~1_combout\,
	combout => \inst30|inst28|_~1_combout\);

-- Location: LCCOMB_X26_Y13_N14
\inst30|inst28|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|q[2]~3_combout\ = (\inst30|inst28|_~1_combout\ & (!\inst30|inst28|_~0_combout\ & (\inst30|inst28|op_2~0_combout\ $ (\inst30|inst28|q\(2))))) # (!\inst30|inst28|_~1_combout\ & (((\inst30|inst28|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|op_2~0_combout\,
	datab => \inst30|inst28|_~0_combout\,
	datac => \inst30|inst28|q\(2),
	datad => \inst30|inst28|_~1_combout\,
	combout => \inst30|inst28|q[2]~3_combout\);

-- Location: LCCOMB_X26_Y13_N2
\inst30|inst28|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|q[2]~4_combout\ = (\inst30|inst28|q[3]~1_combout\ & ((\inst30|inst28|q[2]~3_combout\) # ((\inst30|inst28|op_1~1_combout\ & \inst30|inst28|_~3_combout\)))) # (!\inst30|inst28|q[3]~1_combout\ & (\inst30|inst28|op_1~1_combout\ & 
-- ((\inst30|inst28|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|q[3]~1_combout\,
	datab => \inst30|inst28|op_1~1_combout\,
	datac => \inst30|inst28|q[2]~3_combout\,
	datad => \inst30|inst28|_~3_combout\,
	combout => \inst30|inst28|q[2]~4_combout\);

-- Location: FF_X26_Y13_N3
\inst30|inst28|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst28|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst28|q\(2));

-- Location: LCCOMB_X26_Y13_N24
\inst30|inst28|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|op_1~0_combout\ = \inst30|inst28|q\(3) $ (((\inst30|inst28|q\(2) & (\inst30|inst28|q\(0) & \inst30|inst28|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|q\(2),
	datab => \inst30|inst28|q\(0),
	datac => \inst30|inst28|q\(3),
	datad => \inst30|inst28|q\(1),
	combout => \inst30|inst28|op_1~0_combout\);

-- Location: LCCOMB_X26_Y13_N26
\inst30|inst28|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|q[3]~0_combout\ = \inst30|inst28|q\(3) $ (((\inst30|inst28|op_2~0_combout\ & (!\inst30|inst28|q\(2) & \inst30|inst28|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|op_2~0_combout\,
	datab => \inst30|inst28|q\(3),
	datac => \inst30|inst28|q\(2),
	datad => \inst30|inst28|_~1_combout\,
	combout => \inst30|inst28|q[3]~0_combout\);

-- Location: LCCOMB_X26_Y13_N4
\inst30|inst28|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|q[3]~2_combout\ = (\inst30|inst28|q[3]~1_combout\ & ((\inst30|inst28|q[3]~0_combout\) # ((\inst30|inst28|op_1~0_combout\ & \inst30|inst28|_~3_combout\)))) # (!\inst30|inst28|q[3]~1_combout\ & (\inst30|inst28|op_1~0_combout\ & 
-- ((\inst30|inst28|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|q[3]~1_combout\,
	datab => \inst30|inst28|op_1~0_combout\,
	datac => \inst30|inst28|q[3]~0_combout\,
	datad => \inst30|inst28|_~3_combout\,
	combout => \inst30|inst28|q[3]~2_combout\);

-- Location: FF_X26_Y13_N5
\inst30|inst28|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst28|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst28|q\(3));

-- Location: LCCOMB_X26_Y13_N18
\inst30|inst28|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|_~2_combout\ = (\inst30|inst28|q\(2)) # (((\inst30|inst28|q\(1)) # (!\inst30|inst28|q\(3))) # (!\inst30|inst28|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|q\(2),
	datab => \inst30|inst28|q\(0),
	datac => \inst30|inst28|q\(3),
	datad => \inst30|inst28|q\(1),
	combout => \inst30|inst28|_~2_combout\);

-- Location: LCCOMB_X26_Y13_N28
\inst30|inst28|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|_~3_combout\ = (!\inst30|inst23|reset_final_pulse~combout\ & (\inst30|inst28|_~2_combout\ & (\inst30|inst37|digsel_q\(4) & \inst30|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|reset_final_pulse~combout\,
	datab => \inst30|inst28|_~2_combout\,
	datac => \inst30|inst37|digsel_q\(4),
	datad => \inst30|inst39|up_pulse~0_combout\,
	combout => \inst30|inst28|_~3_combout\);

-- Location: LCCOMB_X26_Y13_N0
\inst30|inst28|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|q[0]~7_combout\ = (\inst30|inst28|q\(0) & (\inst30|inst28|q[3]~1_combout\ & ((!\inst30|inst28|_~1_combout\)))) # (!\inst30|inst28|q\(0) & ((\inst30|inst28|_~3_combout\) # ((\inst30|inst28|q[3]~1_combout\ & \inst30|inst28|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|q[3]~1_combout\,
	datab => \inst30|inst28|_~3_combout\,
	datac => \inst30|inst28|q\(0),
	datad => \inst30|inst28|_~1_combout\,
	combout => \inst30|inst28|q[0]~7_combout\);

-- Location: FF_X26_Y13_N1
\inst30|inst28|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst28|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst28|q\(0));

-- Location: LCCOMB_X28_Y13_N6
\inst30|inst28|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|op_1~2_combout\ = \inst30|inst28|q\(0) $ (\inst30|inst28|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst28|q\(0),
	datad => \inst30|inst28|q\(1),
	combout => \inst30|inst28|op_1~2_combout\);

-- Location: LCCOMB_X26_Y13_N30
\inst30|inst28|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|q[1]~5_combout\ = (\inst30|inst28|_~1_combout\ & (!\inst30|inst28|_~0_combout\ & (\inst30|inst28|q\(1) $ (!\inst30|inst28|q\(0))))) # (!\inst30|inst28|_~1_combout\ & (\inst30|inst28|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|q\(1),
	datab => \inst30|inst28|_~0_combout\,
	datac => \inst30|inst28|q\(0),
	datad => \inst30|inst28|_~1_combout\,
	combout => \inst30|inst28|q[1]~5_combout\);

-- Location: LCCOMB_X26_Y13_N22
\inst30|inst28|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|q[1]~6_combout\ = (\inst30|inst28|op_1~2_combout\ & ((\inst30|inst28|_~3_combout\) # ((\inst30|inst28|q[1]~5_combout\ & \inst30|inst28|q[3]~1_combout\)))) # (!\inst30|inst28|op_1~2_combout\ & (((\inst30|inst28|q[1]~5_combout\ & 
-- \inst30|inst28|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|op_1~2_combout\,
	datab => \inst30|inst28|_~3_combout\,
	datac => \inst30|inst28|q[1]~5_combout\,
	datad => \inst30|inst28|q[3]~1_combout\,
	combout => \inst30|inst28|q[1]~6_combout\);

-- Location: FF_X26_Y13_N23
\inst30|inst28|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst28|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst28|q\(1));

-- Location: LCCOMB_X26_Y13_N16
\inst30|inst28|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst28|_~0_combout\ = (!\inst30|inst28|q\(1) & (!\inst30|inst28|q\(2) & (!\inst30|inst28|q\(3) & !\inst30|inst28|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|q\(1),
	datab => \inst30|inst28|q\(2),
	datac => \inst30|inst28|q\(3),
	datad => \inst30|inst28|q\(0),
	combout => \inst30|inst28|_~0_combout\);

-- Location: LCCOMB_X25_Y11_N22
\inst30|inst40|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|_~0_combout\ = (\inst30|inst27|_~0_combout\ & (\inst30|inst25|_~0_combout\ & (\inst30|inst26|_~0_combout\ & \inst30|inst28|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|_~0_combout\,
	datab => \inst30|inst25|_~0_combout\,
	datac => \inst30|inst26|_~0_combout\,
	datad => \inst30|inst28|_~0_combout\,
	combout => \inst30|inst40|_~0_combout\);

-- Location: LCCOMB_X7_Y9_N10
\inst26|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|aux_tff~1_combout\ = !\inst26|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst26|aux_tff~q\,
	combout => \inst26|aux_tff~1_combout\);

-- Location: LCCOMB_X7_Y9_N12
\inst26|aux_tff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst26|aux_tff~feeder_combout\ = \inst26|aux_tff~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst26|aux_tff~1_combout\,
	combout => \inst26|aux_tff~feeder_combout\);

-- Location: FF_X7_Y9_N13
\inst26|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst26|aux_tff~feeder_combout\,
	ena => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst26|aux_tff~q\);

-- Location: CLKCTRL_G5
\inst26|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst26|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst26|aux_tff~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y13_N4
\inst30|inst50|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst50|_~5_combout\ = (\inst25|inst50|_~0_combout\ & (!\inst1|crono_q\(1) & (\inst1|crono_q\(3) & !\inst1|crono_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst50|_~0_combout\,
	datab => \inst1|crono_q\(1),
	datac => \inst1|crono_q\(3),
	datad => \inst1|crono_q\(2),
	combout => \inst30|inst50|_~5_combout\);

-- Location: FF_X19_Y13_N5
\inst30|inst21|menu4_ativo_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst50|_~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst21|menu4_ativo_reg~q\);

-- Location: LCCOMB_X19_Y13_N2
\inst30|inst21|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst21|_~0_combout\ = (\inst15|_~1_combout\ & ((\inst25|inst50|_~0_combout\ & ((!\inst30|inst21|menu4_ativo_reg~q\))) # (!\inst25|inst50|_~0_combout\ & (\inst32|inst31|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~0_combout\,
	datab => \inst30|inst21|menu4_ativo_reg~q\,
	datac => \inst25|inst50|_~0_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst30|inst21|_~0_combout\);

-- Location: LCCOMB_X19_Y13_N28
\inst30|inst21|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst21|_~1_combout\ = (!\inst1|reset_c_pulse\(3) & ((\inst30|inst21|_~0_combout\ & (\inst25|inst50|_~0_combout\)) # (!\inst30|inst21|_~0_combout\ & ((\inst30|inst21|menu4_visitado_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst50|_~0_combout\,
	datab => \inst1|reset_c_pulse\(3),
	datac => \inst30|inst21|menu4_visitado_q~q\,
	datad => \inst30|inst21|_~0_combout\,
	combout => \inst30|inst21|_~1_combout\);

-- Location: FF_X19_Y13_N29
\inst30|inst21|menu4_visitado_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst21|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst21|menu4_visitado_q~q\);

-- Location: LCCOMB_X25_Y9_N2
\inst30|inst21|comp_flag_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst21|comp_flag_q~0_combout\ = (\inst23|reset_c_reg\(3) & ((\inst30|inst21|comp_flag_q~q\) # ((\inst30|inst21|menu4_visitado_q~q\)))) # (!\inst23|reset_c_reg\(3) & (!\inst30|inst50|resetcont_q~q\ & ((\inst30|inst21|comp_flag_q~q\) # 
-- (\inst30|inst21|menu4_visitado_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|reset_c_reg\(3),
	datab => \inst30|inst21|comp_flag_q~q\,
	datac => \inst30|inst21|menu4_visitado_q~q\,
	datad => \inst30|inst50|resetcont_q~q\,
	combout => \inst30|inst21|comp_flag_q~0_combout\);

-- Location: LCCOMB_X25_Y9_N12
\inst30|inst21|comp_flag_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst21|comp_flag_q~1_combout\ = (\inst30|inst21|comp_flag_q~0_combout\ & (\inst15|menu_out_c3[1]~3_combout\ $ (!\inst15|menu_out_c3[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|menu_out_c3[1]~3_combout\,
	datac => \inst15|menu_out_c3[0]~2_combout\,
	datad => \inst30|inst21|comp_flag_q~0_combout\,
	combout => \inst30|inst21|comp_flag_q~1_combout\);

-- Location: FF_X25_Y11_N9
\inst30|inst21|comp_flag_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst30|inst21|comp_flag_q~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst21|comp_flag_q~q\);

-- Location: LCCOMB_X26_Y11_N0
\inst30|inst50|pausa_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst50|pausa_q~0_combout\ = (\inst15|_~1_combout\ & (\inst25|inst50|_~0_combout\ & (\inst30|inst50|pausa_q~q\ $ (\inst30|inst39|up_pulse~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~1_combout\,
	datab => \inst25|inst50|_~0_combout\,
	datac => \inst30|inst50|pausa_q~q\,
	datad => \inst30|inst39|up_pulse~0_combout\,
	combout => \inst30|inst50|pausa_q~0_combout\);

-- Location: FF_X26_Y11_N1
\inst30|inst50|pausa_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst50|pausa_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst50|pausa_q~q\);

-- Location: LCCOMB_X26_Y11_N26
\inst30|inst23|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|op_1~0_combout\ = \inst30|inst23|unidade_q\(2) $ (((\inst30|inst23|unidade_q\(0) & \inst30|inst23|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst23|unidade_q\(0),
	datac => \inst30|inst23|unidade_q\(2),
	datad => \inst30|inst23|unidade_q\(1),
	combout => \inst30|inst23|op_1~0_combout\);

-- Location: LCCOMB_X25_Y11_N8
\inst30|inst23|pode_contar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|pode_contar~0_combout\ = (!\inst30|inst50|pausa_q~q\ & \inst30|inst21|comp_flag_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst50|pausa_q~q\,
	datac => \inst30|inst21|comp_flag_q~q\,
	combout => \inst30|inst23|pode_contar~0_combout\);

-- Location: LCCOMB_X29_Y11_N0
\inst30|inst23|dezena_q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|dezena_q[0]~4_combout\ = \inst30|inst23|dezena_q\(0) $ (((\inst30|inst23|_~3_combout\ & \inst30|inst23|pode_contar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~3_combout\,
	datac => \inst30|inst23|dezena_q\(0),
	datad => \inst30|inst23|pode_contar~combout\,
	combout => \inst30|inst23|dezena_q[0]~4_combout\);

-- Location: FF_X29_Y11_N1
\inst30|inst23|dezena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|dezena_q[0]~4_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|dezena_q\(0));

-- Location: LCCOMB_X26_Y11_N16
\inst30|inst23|dezena_q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|dezena_q[1]~0_combout\ = (\inst30|inst23|_~3_combout\ & (\inst30|inst21|comp_flag_q~q\ & !\inst30|inst50|pausa_q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst23|_~3_combout\,
	datac => \inst30|inst21|comp_flag_q~q\,
	datad => \inst30|inst50|pausa_q~q\,
	combout => \inst30|inst23|dezena_q[1]~0_combout\);

-- Location: LCCOMB_X29_Y11_N10
\inst30|inst23|dezena_q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|dezena_q[1]~1_combout\ = (\inst30|inst23|dezena_q[1]~0_combout\ & (!\inst30|inst40|final_cont~12_combout\ & ((!\inst30|inst40|_~0_combout\) # (!\inst30|inst40|final_cont~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|dezena_q[1]~0_combout\,
	datab => \inst30|inst40|final_cont~14_combout\,
	datac => \inst30|inst40|_~0_combout\,
	datad => \inst30|inst40|final_cont~12_combout\,
	combout => \inst30|inst23|dezena_q[1]~1_combout\);

-- Location: LCCOMB_X29_Y11_N6
\inst30|inst23|dezena_q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|dezena_q[1]~5_combout\ = (\inst30|inst23|dezena_q[1]~1_combout\ & (!\inst30|inst23|_~2_combout\ & (\inst30|inst23|dezena_q\(0) $ (\inst30|inst23|dezena_q\(1))))) # (!\inst30|inst23|dezena_q[1]~1_combout\ & (((\inst30|inst23|dezena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~2_combout\,
	datab => \inst30|inst23|dezena_q\(0),
	datac => \inst30|inst23|dezena_q\(1),
	datad => \inst30|inst23|dezena_q[1]~1_combout\,
	combout => \inst30|inst23|dezena_q[1]~5_combout\);

-- Location: FF_X29_Y11_N7
\inst30|inst23|dezena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|dezena_q[1]~5_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|dezena_q\(1));

-- Location: LCCOMB_X29_Y11_N4
\inst30|inst23|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|op_2~0_combout\ = \inst30|inst23|dezena_q\(2) $ (((\inst30|inst23|dezena_q\(1) & \inst30|inst23|dezena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|dezena_q\(1),
	datab => \inst30|inst23|dezena_q\(0),
	datad => \inst30|inst23|dezena_q\(2),
	combout => \inst30|inst23|op_2~0_combout\);

-- Location: LCCOMB_X29_Y11_N16
\inst30|inst23|dezena_q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|dezena_q[2]~2_combout\ = (\inst30|inst23|dezena_q[1]~1_combout\ & (!\inst30|inst23|_~2_combout\ & (\inst30|inst23|op_2~0_combout\))) # (!\inst30|inst23|dezena_q[1]~1_combout\ & (((\inst30|inst23|dezena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~2_combout\,
	datab => \inst30|inst23|op_2~0_combout\,
	datac => \inst30|inst23|dezena_q\(2),
	datad => \inst30|inst23|dezena_q[1]~1_combout\,
	combout => \inst30|inst23|dezena_q[2]~2_combout\);

-- Location: FF_X29_Y11_N17
\inst30|inst23|dezena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|dezena_q[2]~2_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|dezena_q\(2));

-- Location: LCCOMB_X29_Y11_N28
\inst30|inst23|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|op_2~1_combout\ = \inst30|inst23|dezena_q\(3) $ (((\inst30|inst23|dezena_q\(1) & (\inst30|inst23|dezena_q\(0) & \inst30|inst23|dezena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|dezena_q\(1),
	datab => \inst30|inst23|dezena_q\(0),
	datac => \inst30|inst23|dezena_q\(3),
	datad => \inst30|inst23|dezena_q\(2),
	combout => \inst30|inst23|op_2~1_combout\);

-- Location: LCCOMB_X29_Y11_N26
\inst30|inst23|dezena_q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|dezena_q[3]~3_combout\ = (\inst30|inst23|dezena_q[1]~1_combout\ & (!\inst30|inst23|_~2_combout\ & (\inst30|inst23|op_2~1_combout\))) # (!\inst30|inst23|dezena_q[1]~1_combout\ & (((\inst30|inst23|dezena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~2_combout\,
	datab => \inst30|inst23|op_2~1_combout\,
	datac => \inst30|inst23|dezena_q\(3),
	datad => \inst30|inst23|dezena_q[1]~1_combout\,
	combout => \inst30|inst23|dezena_q[3]~3_combout\);

-- Location: FF_X29_Y11_N27
\inst30|inst23|dezena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|dezena_q[3]~3_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|dezena_q\(3));

-- Location: LCCOMB_X29_Y11_N12
\inst30|inst23|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|_~2_combout\ = (!\inst30|inst23|dezena_q\(1) & (!\inst30|inst23|dezena_q\(2) & (\inst30|inst23|dezena_q\(3) & \inst30|inst23|dezena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|dezena_q\(1),
	datab => \inst30|inst23|dezena_q\(2),
	datac => \inst30|inst23|dezena_q\(3),
	datad => \inst30|inst23|dezena_q\(0),
	combout => \inst30|inst23|_~2_combout\);

-- Location: LCCOMB_X26_Y11_N12
\inst30|inst23|centena_q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|centena_q[0]~5_combout\ = \inst30|inst23|centena_q\(0) $ (((\inst30|inst23|_~2_combout\ & (\inst30|inst23|_~3_combout\ & \inst30|inst23|pode_contar~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~2_combout\,
	datab => \inst30|inst23|_~3_combout\,
	datac => \inst30|inst23|centena_q\(0),
	datad => \inst30|inst23|pode_contar~combout\,
	combout => \inst30|inst23|centena_q[0]~5_combout\);

-- Location: FF_X26_Y11_N13
\inst30|inst23|centena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|centena_q[0]~5_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|centena_q\(0));

-- Location: LCCOMB_X29_Y11_N18
\inst30|inst23|milhar_q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|milhar_q[1]~2_combout\ = (\inst30|inst23|_~2_combout\ & \inst30|inst23|_~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~2_combout\,
	datad => \inst30|inst23|_~3_combout\,
	combout => \inst30|inst23|milhar_q[1]~2_combout\);

-- Location: LCCOMB_X25_Y11_N4
\inst30|inst23|milhar_q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|milhar_q[1]~3_combout\ = (\inst30|inst21|comp_flag_q~q\ & ((!\inst30|inst40|final_cont~14_combout\) # (!\inst30|inst40|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst21|comp_flag_q~q\,
	datac => \inst30|inst40|_~0_combout\,
	datad => \inst30|inst40|final_cont~14_combout\,
	combout => \inst30|inst23|milhar_q[1]~3_combout\);

-- Location: LCCOMB_X25_Y11_N2
\inst30|inst23|milhar_q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|milhar_q[1]~4_combout\ = (!\inst30|inst50|pausa_q~q\ & (\inst30|inst23|milhar_q[1]~2_combout\ & (\inst30|inst23|milhar_q[1]~3_combout\ & !\inst30|inst40|final_cont~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst50|pausa_q~q\,
	datab => \inst30|inst23|milhar_q[1]~2_combout\,
	datac => \inst30|inst23|milhar_q[1]~3_combout\,
	datad => \inst30|inst40|final_cont~12_combout\,
	combout => \inst30|inst23|milhar_q[1]~4_combout\);

-- Location: LCCOMB_X26_Y12_N24
\inst30|inst23|centena_q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|centena_q[1]~4_combout\ = (\inst30|inst23|milhar_q[1]~4_combout\ & (!\inst30|inst23|_~1_combout\ & (\inst30|inst23|centena_q\(0) $ (\inst30|inst23|centena_q\(1))))) # (!\inst30|inst23|milhar_q[1]~4_combout\ & 
-- (((\inst30|inst23|centena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~1_combout\,
	datab => \inst30|inst23|centena_q\(0),
	datac => \inst30|inst23|centena_q\(1),
	datad => \inst30|inst23|milhar_q[1]~4_combout\,
	combout => \inst30|inst23|centena_q[1]~4_combout\);

-- Location: FF_X26_Y12_N25
\inst30|inst23|centena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|centena_q[1]~4_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|centena_q\(1));

-- Location: LCCOMB_X26_Y12_N28
\inst30|inst23|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|op_3~0_combout\ = \inst30|inst23|centena_q\(2) $ (((\inst30|inst23|centena_q\(1) & \inst30|inst23|centena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|centena_q\(2),
	datab => \inst30|inst23|centena_q\(1),
	datad => \inst30|inst23|centena_q\(0),
	combout => \inst30|inst23|op_3~0_combout\);

-- Location: LCCOMB_X26_Y12_N12
\inst30|inst23|centena_q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|centena_q[2]~2_combout\ = (\inst30|inst23|milhar_q[1]~4_combout\ & (!\inst30|inst23|_~1_combout\ & (\inst30|inst23|op_3~0_combout\))) # (!\inst30|inst23|milhar_q[1]~4_combout\ & (((\inst30|inst23|centena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~1_combout\,
	datab => \inst30|inst23|op_3~0_combout\,
	datac => \inst30|inst23|centena_q\(2),
	datad => \inst30|inst23|milhar_q[1]~4_combout\,
	combout => \inst30|inst23|centena_q[2]~2_combout\);

-- Location: FF_X26_Y12_N13
\inst30|inst23|centena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|centena_q[2]~2_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|centena_q\(2));

-- Location: LCCOMB_X26_Y12_N2
\inst30|inst23|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|op_3~1_combout\ = \inst30|inst23|centena_q\(3) $ (((\inst30|inst23|centena_q\(0) & (\inst30|inst23|centena_q\(1) & \inst30|inst23|centena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|centena_q\(0),
	datab => \inst30|inst23|centena_q\(1),
	datac => \inst30|inst23|centena_q\(3),
	datad => \inst30|inst23|centena_q\(2),
	combout => \inst30|inst23|op_3~1_combout\);

-- Location: LCCOMB_X26_Y12_N30
\inst30|inst23|centena_q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|centena_q[3]~3_combout\ = (\inst30|inst23|milhar_q[1]~4_combout\ & (!\inst30|inst23|_~1_combout\ & (\inst30|inst23|op_3~1_combout\))) # (!\inst30|inst23|milhar_q[1]~4_combout\ & (((\inst30|inst23|centena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~1_combout\,
	datab => \inst30|inst23|op_3~1_combout\,
	datac => \inst30|inst23|centena_q\(3),
	datad => \inst30|inst23|milhar_q[1]~4_combout\,
	combout => \inst30|inst23|centena_q[3]~3_combout\);

-- Location: FF_X26_Y12_N31
\inst30|inst23|centena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|centena_q[3]~3_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|centena_q\(3));

-- Location: LCCOMB_X26_Y12_N18
\inst30|inst23|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|_~1_combout\ = (!\inst30|inst23|centena_q\(2) & (!\inst30|inst23|centena_q\(1) & (\inst30|inst23|centena_q\(3) & \inst30|inst23|centena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|centena_q\(2),
	datab => \inst30|inst23|centena_q\(1),
	datac => \inst30|inst23|centena_q\(3),
	datad => \inst30|inst23|centena_q\(0),
	combout => \inst30|inst23|_~1_combout\);

-- Location: LCCOMB_X25_Y11_N6
\inst30|inst23|milhar_q[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|milhar_q[0]~8_combout\ = \inst30|inst23|milhar_q\(0) $ (((\inst30|inst23|pode_contar~combout\ & (\inst30|inst23|_~1_combout\ & \inst30|inst23|milhar_q[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|pode_contar~combout\,
	datab => \inst30|inst23|_~1_combout\,
	datac => \inst30|inst23|milhar_q\(0),
	datad => \inst30|inst23|milhar_q[1]~2_combout\,
	combout => \inst30|inst23|milhar_q[0]~8_combout\);

-- Location: FF_X25_Y11_N7
\inst30|inst23|milhar_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|milhar_q[0]~8_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|milhar_q\(0));

-- Location: LCCOMB_X25_Y11_N26
\inst30|inst23|milhar_q[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|milhar_q[1]~10_combout\ = (!\inst30|inst50|pausa_q~q\ & (\inst30|inst21|comp_flag_q~q\ & ((!\inst30|inst40|_~0_combout\) # (!\inst30|inst40|final_cont~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst50|pausa_q~q\,
	datab => \inst30|inst40|final_cont~14_combout\,
	datac => \inst30|inst40|_~0_combout\,
	datad => \inst30|inst21|comp_flag_q~q\,
	combout => \inst30|inst23|milhar_q[1]~10_combout\);

-- Location: LCCOMB_X25_Y11_N0
\inst30|inst23|milhar_q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|milhar_q[1]~5_combout\ = (\inst30|inst23|milhar_q[1]~2_combout\ & (\inst30|inst23|_~1_combout\ & (\inst30|inst23|milhar_q[1]~10_combout\ & !\inst30|inst40|final_cont~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|milhar_q[1]~2_combout\,
	datab => \inst30|inst23|_~1_combout\,
	datac => \inst30|inst23|milhar_q[1]~10_combout\,
	datad => \inst30|inst40|final_cont~12_combout\,
	combout => \inst30|inst23|milhar_q[1]~5_combout\);

-- Location: LCCOMB_X28_Y11_N0
\inst30|inst23|milhar_q[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|milhar_q[1]~9_combout\ = (\inst30|inst23|milhar_q[1]~5_combout\ & (!\inst30|inst23|_~0_combout\ & (\inst30|inst23|milhar_q\(0) $ (\inst30|inst23|milhar_q\(1))))) # (!\inst30|inst23|milhar_q[1]~5_combout\ & (((\inst30|inst23|milhar_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~0_combout\,
	datab => \inst30|inst23|milhar_q\(0),
	datac => \inst30|inst23|milhar_q\(1),
	datad => \inst30|inst23|milhar_q[1]~5_combout\,
	combout => \inst30|inst23|milhar_q[1]~9_combout\);

-- Location: FF_X28_Y11_N1
\inst30|inst23|milhar_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|milhar_q[1]~9_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|milhar_q\(1));

-- Location: LCCOMB_X28_Y11_N22
\inst30|inst23|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|op_4~1_combout\ = \inst30|inst23|milhar_q\(3) $ (((\inst30|inst23|milhar_q\(1) & (\inst30|inst23|milhar_q\(2) & \inst30|inst23|milhar_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|milhar_q\(1),
	datab => \inst30|inst23|milhar_q\(2),
	datac => \inst30|inst23|milhar_q\(3),
	datad => \inst30|inst23|milhar_q\(0),
	combout => \inst30|inst23|op_4~1_combout\);

-- Location: LCCOMB_X28_Y11_N26
\inst30|inst23|milhar_q[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|milhar_q[3]~7_combout\ = (\inst30|inst23|milhar_q[1]~5_combout\ & (\inst30|inst23|op_4~1_combout\ & (!\inst30|inst23|_~0_combout\))) # (!\inst30|inst23|milhar_q[1]~5_combout\ & (((\inst30|inst23|milhar_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|op_4~1_combout\,
	datab => \inst30|inst23|_~0_combout\,
	datac => \inst30|inst23|milhar_q\(3),
	datad => \inst30|inst23|milhar_q[1]~5_combout\,
	combout => \inst30|inst23|milhar_q[3]~7_combout\);

-- Location: FF_X28_Y11_N27
\inst30|inst23|milhar_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|milhar_q[3]~7_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|milhar_q\(3));

-- Location: LCCOMB_X28_Y11_N14
\inst30|inst23|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|_~0_combout\ = (!\inst30|inst23|milhar_q\(1) & (!\inst30|inst23|milhar_q\(2) & (\inst30|inst23|milhar_q\(3) & \inst30|inst23|milhar_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|milhar_q\(1),
	datab => \inst30|inst23|milhar_q\(2),
	datac => \inst30|inst23|milhar_q\(3),
	datad => \inst30|inst23|milhar_q\(0),
	combout => \inst30|inst23|_~0_combout\);

-- Location: LCCOMB_X28_Y11_N24
\inst30|inst23|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|op_4~0_combout\ = \inst30|inst23|milhar_q\(2) $ (((\inst30|inst23|milhar_q\(1) & \inst30|inst23|milhar_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst23|milhar_q\(2),
	datac => \inst30|inst23|milhar_q\(1),
	datad => \inst30|inst23|milhar_q\(0),
	combout => \inst30|inst23|op_4~0_combout\);

-- Location: LCCOMB_X28_Y11_N20
\inst30|inst23|milhar_q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|milhar_q[2]~6_combout\ = (\inst30|inst23|milhar_q[1]~5_combout\ & (!\inst30|inst23|_~0_combout\ & (\inst30|inst23|op_4~0_combout\))) # (!\inst30|inst23|milhar_q[1]~5_combout\ & (((\inst30|inst23|milhar_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|_~0_combout\,
	datab => \inst30|inst23|op_4~0_combout\,
	datac => \inst30|inst23|milhar_q\(2),
	datad => \inst30|inst23|milhar_q[1]~5_combout\,
	combout => \inst30|inst23|milhar_q[2]~6_combout\);

-- Location: FF_X28_Y11_N21
\inst30|inst23|milhar_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|milhar_q[2]~6_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|milhar_q\(2));

-- Location: LCCOMB_X26_Y13_N20
\inst30|inst40|final_cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~9_combout\ = (\inst30|inst23|milhar_q\(2) & (\inst30|inst28|q\(2) & (\inst30|inst28|q\(3) $ (!\inst30|inst23|milhar_q\(3))))) # (!\inst30|inst23|milhar_q\(2) & (!\inst30|inst28|q\(2) & (\inst30|inst28|q\(3) $ 
-- (!\inst30|inst23|milhar_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|milhar_q\(2),
	datab => \inst30|inst28|q\(3),
	datac => \inst30|inst23|milhar_q\(3),
	datad => \inst30|inst28|q\(2),
	combout => \inst30|inst40|final_cont~9_combout\);

-- Location: LCCOMB_X25_Y14_N6
\inst30|inst40|final_cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~8_combout\ = (\inst30|inst23|centena_q\(1) & (\inst30|inst27|q\(1) & (\inst30|inst23|centena_q\(0) $ (!\inst30|inst27|q\(0))))) # (!\inst30|inst23|centena_q\(1) & (!\inst30|inst27|q\(1) & (\inst30|inst23|centena_q\(0) $ 
-- (!\inst30|inst27|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|centena_q\(1),
	datab => \inst30|inst23|centena_q\(0),
	datac => \inst30|inst27|q\(1),
	datad => \inst30|inst27|q\(0),
	combout => \inst30|inst40|final_cont~8_combout\);

-- Location: LCCOMB_X25_Y14_N0
\inst30|inst40|final_cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~7_combout\ = (\inst30|inst23|centena_q\(3) & (\inst30|inst27|q\(3) & (\inst30|inst23|centena_q\(2) $ (!\inst30|inst27|q\(2))))) # (!\inst30|inst23|centena_q\(3) & (!\inst30|inst27|q\(3) & (\inst30|inst23|centena_q\(2) $ 
-- (!\inst30|inst27|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|centena_q\(3),
	datab => \inst30|inst23|centena_q\(2),
	datac => \inst30|inst27|q\(2),
	datad => \inst30|inst27|q\(3),
	combout => \inst30|inst40|final_cont~7_combout\);

-- Location: LCCOMB_X26_Y13_N6
\inst30|inst40|final_cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~10_combout\ = (\inst30|inst23|milhar_q\(0) & (\inst30|inst28|q\(0) & (\inst30|inst28|q\(1) $ (!\inst30|inst23|milhar_q\(1))))) # (!\inst30|inst23|milhar_q\(0) & (!\inst30|inst28|q\(0) & (\inst30|inst28|q\(1) $ 
-- (!\inst30|inst23|milhar_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|milhar_q\(0),
	datab => \inst30|inst28|q\(1),
	datac => \inst30|inst23|milhar_q\(1),
	datad => \inst30|inst28|q\(0),
	combout => \inst30|inst40|final_cont~10_combout\);

-- Location: LCCOMB_X25_Y11_N24
\inst30|inst40|final_cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~11_combout\ = (\inst30|inst40|final_cont~9_combout\ & (\inst30|inst40|final_cont~8_combout\ & (\inst30|inst40|final_cont~7_combout\ & \inst30|inst40|final_cont~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst40|final_cont~9_combout\,
	datab => \inst30|inst40|final_cont~8_combout\,
	datac => \inst30|inst40|final_cont~7_combout\,
	datad => \inst30|inst40|final_cont~10_combout\,
	combout => \inst30|inst40|final_cont~11_combout\);

-- Location: LCCOMB_X25_Y11_N20
\inst30|inst40|final_cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~12_combout\ = (\inst30|inst21|comp_flag_q~q\ & (\inst30|inst40|final_cont~6_combout\ & (!\inst30|inst40|_~0_combout\ & \inst30|inst40|final_cont~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst21|comp_flag_q~q\,
	datab => \inst30|inst40|final_cont~6_combout\,
	datac => \inst30|inst40|_~0_combout\,
	datad => \inst30|inst40|final_cont~11_combout\,
	combout => \inst30|inst40|final_cont~12_combout\);

-- Location: LCCOMB_X25_Y11_N10
\inst30|inst23|pode_contar\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|pode_contar~combout\ = (\inst30|inst23|pode_contar~0_combout\ & (!\inst30|inst40|final_cont~12_combout\ & ((!\inst30|inst40|_~0_combout\) # (!\inst30|inst40|final_cont~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|pode_contar~0_combout\,
	datab => \inst30|inst40|final_cont~14_combout\,
	datac => \inst30|inst40|_~0_combout\,
	datad => \inst30|inst40|final_cont~12_combout\,
	combout => \inst30|inst23|pode_contar~combout\);

-- Location: LCCOMB_X26_Y11_N4
\inst30|inst23|unidade_q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|unidade_q[2]~0_combout\ = (\inst30|inst23|pode_contar~combout\ & (\inst30|inst23|op_1~0_combout\ & (!\inst30|inst23|_~3_combout\))) # (!\inst30|inst23|pode_contar~combout\ & (((\inst30|inst23|unidade_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|op_1~0_combout\,
	datab => \inst30|inst23|_~3_combout\,
	datac => \inst30|inst23|unidade_q\(2),
	datad => \inst30|inst23|pode_contar~combout\,
	combout => \inst30|inst23|unidade_q[2]~0_combout\);

-- Location: FF_X26_Y11_N5
\inst30|inst23|unidade_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|unidade_q[2]~0_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|unidade_q\(2));

-- Location: LCCOMB_X26_Y11_N22
\inst30|inst23|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|op_1~1_combout\ = \inst30|inst23|unidade_q\(3) $ (((\inst30|inst23|unidade_q\(1) & (\inst30|inst23|unidade_q\(2) & \inst30|inst23|unidade_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|unidade_q\(1),
	datab => \inst30|inst23|unidade_q\(3),
	datac => \inst30|inst23|unidade_q\(2),
	datad => \inst30|inst23|unidade_q\(0),
	combout => \inst30|inst23|op_1~1_combout\);

-- Location: LCCOMB_X26_Y11_N6
\inst30|inst23|unidade_q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|unidade_q[3]~1_combout\ = (\inst30|inst23|pode_contar~combout\ & (\inst30|inst23|op_1~1_combout\ & (!\inst30|inst23|_~3_combout\))) # (!\inst30|inst23|pode_contar~combout\ & (((\inst30|inst23|unidade_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|op_1~1_combout\,
	datab => \inst30|inst23|_~3_combout\,
	datac => \inst30|inst23|unidade_q\(3),
	datad => \inst30|inst23|pode_contar~combout\,
	combout => \inst30|inst23|unidade_q[3]~1_combout\);

-- Location: FF_X26_Y11_N7
\inst30|inst23|unidade_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|unidade_q[3]~1_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|unidade_q\(3));

-- Location: LCCOMB_X26_Y11_N18
\inst30|inst23|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|_~3_combout\ = (\inst30|inst23|unidade_q\(3) & (\inst30|inst23|unidade_q\(0) & (!\inst30|inst23|unidade_q\(2) & !\inst30|inst23|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|unidade_q\(3),
	datab => \inst30|inst23|unidade_q\(0),
	datac => \inst30|inst23|unidade_q\(2),
	datad => \inst30|inst23|unidade_q\(1),
	combout => \inst30|inst23|_~3_combout\);

-- Location: LCCOMB_X25_Y11_N30
\inst30|inst40|final_cont~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~13_combout\ = (\inst30|inst21|comp_flag_q~q\ & \inst30|inst23|_~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst21|comp_flag_q~q\,
	datad => \inst30|inst23|_~3_combout\,
	combout => \inst30|inst40|final_cont~13_combout\);

-- Location: LCCOMB_X25_Y11_N16
\inst30|inst40|final_cont~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~14_combout\ = (\inst30|inst40|final_cont~13_combout\ & (\inst30|inst23|_~2_combout\ & (\inst30|inst23|_~0_combout\ & \inst30|inst23|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst40|final_cont~13_combout\,
	datab => \inst30|inst23|_~2_combout\,
	datac => \inst30|inst23|_~0_combout\,
	datad => \inst30|inst23|_~1_combout\,
	combout => \inst30|inst40|final_cont~14_combout\);

-- Location: LCCOMB_X26_Y11_N8
\inst30|inst40|final_cont~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~15_combout\ = (\inst30|inst40|final_cont~12_combout\) # ((\inst30|inst40|_~0_combout\ & \inst30|inst40|final_cont~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst40|_~0_combout\,
	datac => \inst30|inst40|final_cont~14_combout\,
	datad => \inst30|inst40|final_cont~12_combout\,
	combout => \inst30|inst40|final_cont~15_combout\);

-- Location: LCCOMB_X26_Y11_N24
\inst30|inst23|unidade_q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|unidade_q[0]~2_combout\ = \inst30|inst23|unidade_q\(0) $ (((\inst30|inst21|comp_flag_q~q\ & (!\inst30|inst50|pausa_q~q\ & !\inst30|inst40|final_cont~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst21|comp_flag_q~q\,
	datab => \inst30|inst50|pausa_q~q\,
	datac => \inst30|inst23|unidade_q\(0),
	datad => \inst30|inst40|final_cont~15_combout\,
	combout => \inst30|inst23|unidade_q[0]~2_combout\);

-- Location: FF_X26_Y11_N25
\inst30|inst23|unidade_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|unidade_q[0]~2_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|unidade_q\(0));

-- Location: LCCOMB_X26_Y11_N10
\inst30|inst23|unidade_q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst23|unidade_q[1]~3_combout\ = (\inst30|inst23|pode_contar~combout\ & (!\inst30|inst23|_~3_combout\ & (\inst30|inst23|unidade_q\(0) $ (\inst30|inst23|unidade_q\(1))))) # (!\inst30|inst23|pode_contar~combout\ & (((\inst30|inst23|unidade_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|unidade_q\(0),
	datab => \inst30|inst23|_~3_combout\,
	datac => \inst30|inst23|unidade_q\(1),
	datad => \inst30|inst23|pode_contar~combout\,
	combout => \inst30|inst23|unidade_q[1]~3_combout\);

-- Location: FF_X26_Y11_N11
\inst30|inst23|unidade_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst26|aux_tff~clkctrl_outclk\,
	d => \inst30|inst23|unidade_q[1]~3_combout\,
	clrn => \inst30|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst23|unidade_q\(1));

-- Location: LCCOMB_X25_Y12_N20
\inst30|inst40|final_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~3_combout\ = (\inst30|inst23|unidade_q\(1) & (\inst30|inst25|q\(1) & (\inst30|inst23|unidade_q\(0) $ (!\inst30|inst25|q\(0))))) # (!\inst30|inst23|unidade_q\(1) & (!\inst30|inst25|q\(1) & (\inst30|inst23|unidade_q\(0) $ 
-- (!\inst30|inst25|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|unidade_q\(1),
	datab => \inst30|inst23|unidade_q\(0),
	datac => \inst30|inst25|q\(1),
	datad => \inst30|inst25|q\(0),
	combout => \inst30|inst40|final_cont~3_combout\);

-- Location: LCCOMB_X25_Y11_N18
\inst30|inst40|final_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~2_combout\ = (\inst30|inst23|unidade_q\(3) & (\inst30|inst25|q\(3) & (\inst30|inst23|unidade_q\(2) $ (!\inst30|inst25|q\(2))))) # (!\inst30|inst23|unidade_q\(3) & (!\inst30|inst25|q\(3) & (\inst30|inst23|unidade_q\(2) $ 
-- (!\inst30|inst25|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|unidade_q\(3),
	datab => \inst30|inst23|unidade_q\(2),
	datac => \inst30|inst25|q\(3),
	datad => \inst30|inst25|q\(2),
	combout => \inst30|inst40|final_cont~2_combout\);

-- Location: LCCOMB_X30_Y11_N8
\inst30|inst40|final_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~4_combout\ = (\inst30|inst23|dezena_q\(3) & (\inst30|inst26|q\(3) & (\inst30|inst23|dezena_q\(2) $ (!\inst30|inst26|q\(2))))) # (!\inst30|inst23|dezena_q\(3) & (!\inst30|inst26|q\(3) & (\inst30|inst23|dezena_q\(2) $ 
-- (!\inst30|inst26|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|dezena_q\(3),
	datab => \inst30|inst23|dezena_q\(2),
	datac => \inst30|inst26|q\(3),
	datad => \inst30|inst26|q\(2),
	combout => \inst30|inst40|final_cont~4_combout\);

-- Location: LCCOMB_X30_Y11_N10
\inst30|inst40|final_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~5_combout\ = (\inst30|inst23|dezena_q\(0) & (\inst30|inst26|q\(0) & (\inst30|inst23|dezena_q\(1) $ (!\inst30|inst26|q\(1))))) # (!\inst30|inst23|dezena_q\(0) & (!\inst30|inst26|q\(0) & (\inst30|inst23|dezena_q\(1) $ 
-- (!\inst30|inst26|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|dezena_q\(0),
	datab => \inst30|inst23|dezena_q\(1),
	datac => \inst30|inst26|q\(1),
	datad => \inst30|inst26|q\(0),
	combout => \inst30|inst40|final_cont~5_combout\);

-- Location: LCCOMB_X25_Y11_N28
\inst30|inst40|final_cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst40|final_cont~6_combout\ = (\inst30|inst40|final_cont~3_combout\ & (\inst30|inst40|final_cont~2_combout\ & (\inst30|inst40|final_cont~4_combout\ & \inst30|inst40|final_cont~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst40|final_cont~3_combout\,
	datab => \inst30|inst40|final_cont~2_combout\,
	datac => \inst30|inst40|final_cont~4_combout\,
	datad => \inst30|inst40|final_cont~5_combout\,
	combout => \inst30|inst40|final_cont~6_combout\);

-- Location: FF_X26_Y11_N21
\inst7|flag_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst30|inst40|final_cont~15_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|flag_reg\(3));

-- Location: LCCOMB_X25_Y11_N14
\inst7|flag_pulse[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|flag_pulse[3]~0_combout\ = (!\inst7|flag_reg\(3) & ((\inst30|inst40|_~0_combout\ & ((\inst30|inst40|final_cont~14_combout\))) # (!\inst30|inst40|_~0_combout\ & (\inst30|inst21|comp_flag_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst40|_~0_combout\,
	datab => \inst30|inst21|comp_flag_q~q\,
	datac => \inst7|flag_reg\(3),
	datad => \inst30|inst40|final_cont~14_combout\,
	combout => \inst7|flag_pulse[3]~0_combout\);

-- Location: LCCOMB_X25_Y11_N12
\inst7|flag_pulse[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|flag_pulse\(3) = (\inst7|flag_pulse[3]~0_combout\ & ((\inst30|inst40|_~0_combout\) # ((\inst30|inst40|final_cont~6_combout\ & \inst30|inst40|final_cont~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst40|_~0_combout\,
	datab => \inst30|inst40|final_cont~6_combout\,
	datac => \inst7|flag_pulse[3]~0_combout\,
	datad => \inst30|inst40|final_cont~11_combout\,
	combout => \inst7|flag_pulse\(3));

-- Location: LCCOMB_X18_Y13_N16
\inst23|reset_c_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|reset_c_reg[4]~feeder_combout\ = \inst32|inst50|resetcont_q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst32|inst50|resetcont_q~q\,
	combout => \inst23|reset_c_reg[4]~feeder_combout\);

-- Location: FF_X18_Y13_N17
\inst23|reset_c_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst23|reset_c_reg[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|reset_c_reg\(4));

-- Location: LCCOMB_X19_Y13_N8
\inst32|inst50|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst50|_~3_combout\ = (\inst23|q\(0) & (\inst23|q\(1) & \inst15|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(0),
	datab => \inst23|q\(1),
	datad => \inst15|_~2_combout\,
	combout => \inst32|inst50|_~3_combout\);

-- Location: FF_X19_Y13_N9
\inst32|inst21|menu4_ativo_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst50|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst21|menu4_ativo_reg~q\);

-- Location: LCCOMB_X19_Y13_N18
\inst32|inst21|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst21|_~0_combout\ = (\inst15|_~2_combout\ & ((\inst25|inst50|_~0_combout\ & ((!\inst32|inst21|menu4_ativo_reg~q\))) # (!\inst25|inst50|_~0_combout\ & (\inst32|inst31|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~0_combout\,
	datab => \inst32|inst21|menu4_ativo_reg~q\,
	datac => \inst25|inst50|_~0_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst32|inst21|_~0_combout\);

-- Location: LCCOMB_X18_Y13_N26
\inst32|inst21|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst21|_~1_combout\ = (!\inst1|reset_c_pulse\(4) & ((\inst32|inst21|_~0_combout\ & (\inst25|inst50|_~0_combout\)) # (!\inst32|inst21|_~0_combout\ & ((\inst32|inst21|menu4_visitado_q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst50|_~0_combout\,
	datab => \inst1|reset_c_pulse\(4),
	datac => \inst32|inst21|menu4_visitado_q~q\,
	datad => \inst32|inst21|_~0_combout\,
	combout => \inst32|inst21|_~1_combout\);

-- Location: FF_X18_Y13_N27
\inst32|inst21|menu4_visitado_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst21|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst21|menu4_visitado_q~q\);

-- Location: LCCOMB_X18_Y13_N12
\inst32|inst21|comp_flag_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst21|comp_flag_q~0_combout\ = (\inst32|inst21|menu4_visitado_q~q\ & ((\inst23|reset_c_reg\(4)) # ((!\inst32|inst50|resetcont_q~q\)))) # (!\inst32|inst21|menu4_visitado_q~q\ & (\inst32|inst21|comp_flag_q~q\ & ((\inst23|reset_c_reg\(4)) # 
-- (!\inst32|inst50|resetcont_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst21|menu4_visitado_q~q\,
	datab => \inst23|reset_c_reg\(4),
	datac => \inst32|inst50|resetcont_q~q\,
	datad => \inst32|inst21|comp_flag_q~q\,
	combout => \inst32|inst21|comp_flag_q~0_combout\);

-- Location: LCCOMB_X19_Y13_N24
\inst32|inst21|comp_flag_q~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst21|comp_flag_q~1_combout\ = (\inst32|inst21|comp_flag_q~0_combout\ & ((\inst23|q\(0) $ (!\inst23|q\(1))) # (!\inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datab => \inst32|inst21|comp_flag_q~0_combout\,
	datac => \inst23|q\(0),
	datad => \inst23|q\(1),
	combout => \inst32|inst21|comp_flag_q~1_combout\);

-- Location: FF_X19_Y13_N25
\inst32|inst21|comp_flag_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst21|comp_flag_q~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst21|comp_flag_q~q\);

-- Location: LCCOMB_X7_Y9_N20
\inst31|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|aux_tff~1_combout\ = !\inst31|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst31|aux_tff~q\,
	combout => \inst31|aux_tff~1_combout\);

-- Location: FF_X7_Y9_N29
\inst31|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst31|aux_tff~1_combout\,
	sload => VCC,
	ena => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst31|aux_tff~q\);

-- Location: CLKCTRL_G9
\inst31|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst31|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst31|aux_tff~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y13_N26
\inst15|deb2_out_c4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|deb2_out_c4~1_combout\ = (\inst15|_~2_combout\ & \inst20|inst1|ff3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|_~2_combout\,
	datad => \inst20|inst1|ff3~q\,
	combout => \inst15|deb2_out_c4~1_combout\);

-- Location: FF_X21_Y13_N21
\inst32|inst39|btn1_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|deb2_out_c4~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst39|btn1_reg~q\);

-- Location: LCCOMB_X19_Y13_N0
\inst32|inst50|pausa_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst50|pausa_q~0_combout\ = (\inst32|inst50|_~3_combout\ & (\inst32|inst50|pausa_q~q\ $ (((\inst32|inst39|btn1_reg~q\ & !\inst15|deb2_out_c4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst50|_~3_combout\,
	datab => \inst32|inst39|btn1_reg~q\,
	datac => \inst32|inst50|pausa_q~q\,
	datad => \inst15|deb2_out_c4~1_combout\,
	combout => \inst32|inst50|pausa_q~0_combout\);

-- Location: FF_X19_Y13_N1
\inst32|inst50|pausa_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst50|pausa_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst50|pausa_q~q\);

-- Location: LCCOMB_X19_Y13_N6
\inst32|inst23|pode_contar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|pode_contar~0_combout\ = (\inst32|inst21|comp_flag_q~q\ & !\inst32|inst50|pausa_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst21|comp_flag_q~q\,
	datad => \inst32|inst50|pausa_q~q\,
	combout => \inst32|inst23|pode_contar~0_combout\);

-- Location: LCCOMB_X21_Y13_N20
\inst32|inst39|up_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst39|up_pulse~0_combout\ = (\inst32|inst39|btn1_reg~q\ & ((!\inst20|inst1|ff3~q\) # (!\inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|_~2_combout\,
	datac => \inst32|inst39|btn1_reg~q\,
	datad => \inst20|inst1|ff3~q\,
	combout => \inst32|inst39|up_pulse~0_combout\);

-- Location: LCCOMB_X19_Y14_N4
\inst32|inst22|reset_cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst22|reset_cont~0_combout\ = (\inst15|_~2_combout\ & (!\inst23|q\(1) & \inst23|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datac => \inst23|q\(1),
	datad => \inst23|q\(0),
	combout => \inst32|inst22|reset_cont~0_combout\);

-- Location: LCCOMB_X18_Y13_N30
\inst15|deb1_out_c4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|deb1_out_c4~1_combout\ = (\inst15|_~2_combout\ & \inst20|inst|ff3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|_~2_combout\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst15|deb1_out_c4~1_combout\);

-- Location: FF_X18_Y13_N31
\inst32|inst39|btn2_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|deb1_out_c4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst39|btn2_reg~q\);

-- Location: LCCOMB_X19_Y14_N16
\inst32|inst39|down_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst39|down_pulse~0_combout\ = (\inst32|inst39|btn2_reg~q\ & ((!\inst20|inst|ff3~q\) # (!\inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst39|btn2_reg~q\,
	datac => \inst15|_~2_combout\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst32|inst39|down_pulse~0_combout\);

-- Location: LCCOMB_X19_Y14_N0
\inst32|inst39|q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst39|q[0]~3_combout\ = \inst32|inst39|q\(0) $ (((\inst32|inst22|reset_cont~0_combout\ & ((\inst32|inst39|up_pulse~0_combout\) # (\inst32|inst39|down_pulse~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst39|up_pulse~0_combout\,
	datab => \inst32|inst22|reset_cont~0_combout\,
	datac => \inst32|inst39|q\(0),
	datad => \inst32|inst39|down_pulse~0_combout\,
	combout => \inst32|inst39|q[0]~3_combout\);

-- Location: FF_X19_Y14_N1
\inst32|inst39|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst39|q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst39|q\(0));

-- Location: LCCOMB_X19_Y14_N6
\inst32|inst39|q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst39|q[1]~0_combout\ = (\inst32|inst39|up_pulse~0_combout\ & (\inst32|inst39|q\(1) $ (((\inst32|inst39|q\(0)))))) # (!\inst32|inst39|up_pulse~0_combout\ & (\inst32|inst39|down_pulse~0_combout\ & (\inst32|inst39|q\(1) $ (!\inst32|inst39|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst39|q\(1),
	datab => \inst32|inst39|down_pulse~0_combout\,
	datac => \inst32|inst39|q\(0),
	datad => \inst32|inst39|up_pulse~0_combout\,
	combout => \inst32|inst39|q[1]~0_combout\);

-- Location: LCCOMB_X19_Y14_N20
\inst32|inst39|q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst39|q[1]~1_combout\ = (!\inst32|inst39|down_pulse~0_combout\ & (((\inst15|_~2_combout\ & \inst20|inst1|ff3~q\)) # (!\inst32|inst39|btn1_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datab => \inst32|inst39|btn1_reg~q\,
	datac => \inst20|inst1|ff3~q\,
	datad => \inst32|inst39|down_pulse~0_combout\,
	combout => \inst32|inst39|q[1]~1_combout\);

-- Location: LCCOMB_X19_Y14_N26
\inst32|inst39|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst39|q[1]~2_combout\ = (\inst32|inst22|reset_cont~0_combout\ & ((\inst32|inst39|q[1]~0_combout\) # ((\inst32|inst39|q\(1) & \inst32|inst39|q[1]~1_combout\)))) # (!\inst32|inst22|reset_cont~0_combout\ & (((\inst32|inst39|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst39|q[1]~0_combout\,
	datab => \inst32|inst22|reset_cont~0_combout\,
	datac => \inst32|inst39|q\(1),
	datad => \inst32|inst39|q[1]~1_combout\,
	combout => \inst32|inst39|q[1]~2_combout\);

-- Location: FF_X19_Y14_N27
\inst32|inst39|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst39|q[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst39|q\(1));

-- Location: LCCOMB_X19_Y14_N8
\inst32|inst37|aux_dig[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst37|aux_dig[3]~2_combout\ = (\inst32|inst37|_~2_combout\) # ((!\inst32|inst39|q\(0) & (\inst32|inst22|reset_cont~0_combout\ & \inst32|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst39|q\(0),
	datab => \inst32|inst22|reset_cont~0_combout\,
	datac => \inst32|inst37|_~2_combout\,
	datad => \inst32|inst39|q\(1),
	combout => \inst32|inst37|aux_dig[3]~2_combout\);

-- Location: FF_X19_Y14_N9
\inst32|inst37|aux_dig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst37|aux_dig[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst37|aux_dig\(3));

-- Location: LCCOMB_X19_Y14_N30
\inst32|inst37|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst37|_~2_combout\ = (\inst15|_~2_combout\ & (\inst32|inst37|aux_dig\(3) & (!\inst23|q\(0) & \inst23|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datab => \inst32|inst37|aux_dig\(3),
	datac => \inst23|q\(0),
	datad => \inst23|q\(1),
	combout => \inst32|inst37|_~2_combout\);

-- Location: FF_X19_Y14_N31
\inst32|inst37|digsel_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst37|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst37|digsel_q\(3));

-- Location: LCCOMB_X19_Y13_N20
\inst32|inst27|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|_~1_combout\ = (\inst32|inst37|digsel_q\(3) & (\inst32|inst39|btn2_reg~q\ & ((!\inst15|_~2_combout\) # (!\inst20|inst|ff3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst37|digsel_q\(3),
	datab => \inst32|inst39|btn2_reg~q\,
	datac => \inst20|inst|ff3~q\,
	datad => \inst15|_~2_combout\,
	combout => \inst32|inst27|_~1_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst15|menu_out_c4[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|menu_out_c4[1]~2_combout\ = (\inst15|_~2_combout\ & \inst23|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datad => \inst23|q\(1),
	combout => \inst15|menu_out_c4[1]~2_combout\);

-- Location: FF_X19_Y14_N15
\inst32|inst22|menu_in_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|menu_out_c4[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst22|menu_in_reg\(1));

-- Location: LCCOMB_X19_Y14_N12
\inst15|menu_out_c4[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|menu_out_c4[0]~3_combout\ = (\inst15|_~2_combout\ & \inst23|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|_~2_combout\,
	datad => \inst23|q\(0),
	combout => \inst15|menu_out_c4[0]~3_combout\);

-- Location: FF_X19_Y14_N13
\inst32|inst22|menu_in_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst15|menu_out_c4[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst22|menu_in_reg\(0));

-- Location: LCCOMB_X19_Y14_N22
\inst32|inst22|reset_cont~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst22|reset_cont~1_combout\ = (!\inst32|inst22|menu_in_reg\(1) & !\inst32|inst22|menu_in_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst32|inst22|menu_in_reg\(1),
	datad => \inst32|inst22|menu_in_reg\(0),
	combout => \inst32|inst22|reset_cont~1_combout\);

-- Location: LCCOMB_X19_Y14_N28
\inst32|inst22|reset_cont\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst22|reset_cont~combout\ = (\inst15|_~2_combout\ & (!\inst23|q\(1) & (\inst23|q\(0) & \inst32|inst22|reset_cont~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datab => \inst23|q\(1),
	datac => \inst23|q\(0),
	datad => \inst32|inst22|reset_cont~1_combout\,
	combout => \inst32|inst22|reset_cont~combout\);

-- Location: FF_X19_Y14_N29
\inst32|inst25|reset_novo_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst22|reset_cont~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst25|reset_novo_reg~q\);

-- Location: LCCOMB_X18_Y11_N4
\inst32|inst23|reset_final_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|reset_final_pulse~0_combout\ = (!\inst32|inst25|reset_novo_reg~q\ & (\inst23|q\(0) & !\inst23|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst25|reset_novo_reg~q\,
	datac => \inst23|q\(0),
	datad => \inst23|q\(1),
	combout => \inst32|inst23|reset_final_pulse~0_combout\);

-- Location: LCCOMB_X18_Y11_N10
\inst32|inst23|reset_final_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|reset_final_pulse~combout\ = (\inst1|reset_c_pulse\(4)) # ((\inst32|inst22|reset_cont~1_combout\ & (\inst32|inst23|reset_final_pulse~0_combout\ & \inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reset_c_pulse\(4),
	datab => \inst32|inst22|reset_cont~1_combout\,
	datac => \inst32|inst23|reset_final_pulse~0_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst32|inst23|reset_final_pulse~combout\);

-- Location: LCCOMB_X19_Y12_N6
\inst32|inst27|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|op_1~1_combout\ = \inst32|inst27|q\(2) $ (((\inst32|inst27|q\(0) & \inst32|inst27|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst27|q\(2),
	datac => \inst32|inst27|q\(0),
	datad => \inst32|inst27|q\(1),
	combout => \inst32|inst27|op_1~1_combout\);

-- Location: LCCOMB_X19_Y12_N14
\inst32|inst27|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|op_2~0_combout\ = (!\inst32|inst27|q\(0) & !\inst32|inst27|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst32|inst27|q\(0),
	datad => \inst32|inst27|q\(1),
	combout => \inst32|inst27|op_2~0_combout\);

-- Location: LCCOMB_X19_Y11_N26
\inst32|inst27|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|q[2]~3_combout\ = (\inst32|inst27|_~1_combout\ & (!\inst32|inst27|_~0_combout\ & (\inst32|inst27|op_2~0_combout\ $ (\inst32|inst27|q\(2))))) # (!\inst32|inst27|_~1_combout\ & (((\inst32|inst27|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|op_2~0_combout\,
	datab => \inst32|inst27|q\(2),
	datac => \inst32|inst27|_~0_combout\,
	datad => \inst32|inst27|_~1_combout\,
	combout => \inst32|inst27|q[2]~3_combout\);

-- Location: LCCOMB_X19_Y13_N14
\inst32|inst27|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|q[3]~1_combout\ = (!\inst32|inst23|reset_final_pulse~combout\ & ((!\inst32|inst39|up_pulse~0_combout\) # (!\inst32|inst37|digsel_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst37|digsel_q\(3),
	datac => \inst32|inst23|reset_final_pulse~combout\,
	datad => \inst32|inst39|up_pulse~0_combout\,
	combout => \inst32|inst27|q[3]~1_combout\);

-- Location: LCCOMB_X19_Y11_N18
\inst32|inst27|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|q[2]~4_combout\ = (\inst32|inst27|op_1~1_combout\ & ((\inst32|inst27|_~3_combout\) # ((\inst32|inst27|q[2]~3_combout\ & \inst32|inst27|q[3]~1_combout\)))) # (!\inst32|inst27|op_1~1_combout\ & (((\inst32|inst27|q[2]~3_combout\ & 
-- \inst32|inst27|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|op_1~1_combout\,
	datab => \inst32|inst27|_~3_combout\,
	datac => \inst32|inst27|q[2]~3_combout\,
	datad => \inst32|inst27|q[3]~1_combout\,
	combout => \inst32|inst27|q[2]~4_combout\);

-- Location: FF_X19_Y11_N19
\inst32|inst27|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst27|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst27|q\(2));

-- Location: LCCOMB_X19_Y12_N24
\inst32|inst27|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|op_1~0_combout\ = \inst32|inst27|q\(3) $ (((\inst32|inst27|q\(0) & (\inst32|inst27|q\(2) & \inst32|inst27|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|q\(0),
	datab => \inst32|inst27|q\(2),
	datac => \inst32|inst27|q\(3),
	datad => \inst32|inst27|q\(1),
	combout => \inst32|inst27|op_1~0_combout\);

-- Location: LCCOMB_X19_Y11_N22
\inst32|inst27|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|q[3]~0_combout\ = \inst32|inst27|q\(3) $ (((\inst32|inst27|op_2~0_combout\ & (!\inst32|inst27|q\(2) & \inst32|inst27|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|op_2~0_combout\,
	datab => \inst32|inst27|q\(2),
	datac => \inst32|inst27|q\(3),
	datad => \inst32|inst27|_~1_combout\,
	combout => \inst32|inst27|q[3]~0_combout\);

-- Location: LCCOMB_X19_Y11_N4
\inst32|inst27|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|q[3]~2_combout\ = (\inst32|inst27|op_1~0_combout\ & ((\inst32|inst27|_~3_combout\) # ((\inst32|inst27|q[3]~0_combout\ & \inst32|inst27|q[3]~1_combout\)))) # (!\inst32|inst27|op_1~0_combout\ & (((\inst32|inst27|q[3]~0_combout\ & 
-- \inst32|inst27|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|op_1~0_combout\,
	datab => \inst32|inst27|_~3_combout\,
	datac => \inst32|inst27|q[3]~0_combout\,
	datad => \inst32|inst27|q[3]~1_combout\,
	combout => \inst32|inst27|q[3]~2_combout\);

-- Location: FF_X19_Y11_N5
\inst32|inst27|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst27|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst27|q\(3));

-- Location: LCCOMB_X19_Y12_N12
\inst32|inst27|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|_~2_combout\ = (((\inst32|inst27|q\(2)) # (\inst32|inst27|q\(1))) # (!\inst32|inst27|q\(3))) # (!\inst32|inst27|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|q\(0),
	datab => \inst32|inst27|q\(3),
	datac => \inst32|inst27|q\(2),
	datad => \inst32|inst27|q\(1),
	combout => \inst32|inst27|_~2_combout\);

-- Location: LCCOMB_X19_Y11_N8
\inst32|inst27|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|_~3_combout\ = (!\inst32|inst23|reset_final_pulse~combout\ & (\inst32|inst37|digsel_q\(3) & (\inst32|inst39|up_pulse~0_combout\ & \inst32|inst27|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|reset_final_pulse~combout\,
	datab => \inst32|inst37|digsel_q\(3),
	datac => \inst32|inst39|up_pulse~0_combout\,
	datad => \inst32|inst27|_~2_combout\,
	combout => \inst32|inst27|_~3_combout\);

-- Location: LCCOMB_X19_Y11_N20
\inst32|inst27|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|q[0]~7_combout\ = (\inst32|inst27|q\(0) & (!\inst32|inst27|_~1_combout\ & ((\inst32|inst27|q[3]~1_combout\)))) # (!\inst32|inst27|q\(0) & ((\inst32|inst27|_~3_combout\) # ((\inst32|inst27|_~1_combout\ & \inst32|inst27|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|_~1_combout\,
	datab => \inst32|inst27|_~3_combout\,
	datac => \inst32|inst27|q\(0),
	datad => \inst32|inst27|q[3]~1_combout\,
	combout => \inst32|inst27|q[0]~7_combout\);

-- Location: FF_X19_Y11_N21
\inst32|inst27|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst27|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst27|q\(0));

-- Location: LCCOMB_X19_Y12_N20
\inst32|inst27|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|op_1~2_combout\ = \inst32|inst27|q\(0) $ (\inst32|inst27|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst32|inst27|q\(0),
	datad => \inst32|inst27|q\(1),
	combout => \inst32|inst27|op_1~2_combout\);

-- Location: LCCOMB_X19_Y11_N30
\inst32|inst27|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|q[1]~5_combout\ = (\inst32|inst27|_~1_combout\ & (!\inst32|inst27|_~0_combout\ & (\inst32|inst27|q\(1) $ (!\inst32|inst27|q\(0))))) # (!\inst32|inst27|_~1_combout\ & (\inst32|inst27|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|q\(1),
	datab => \inst32|inst27|q\(0),
	datac => \inst32|inst27|_~0_combout\,
	datad => \inst32|inst27|_~1_combout\,
	combout => \inst32|inst27|q[1]~5_combout\);

-- Location: LCCOMB_X19_Y11_N6
\inst32|inst27|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|q[1]~6_combout\ = (\inst32|inst27|op_1~2_combout\ & ((\inst32|inst27|_~3_combout\) # ((\inst32|inst27|q[1]~5_combout\ & \inst32|inst27|q[3]~1_combout\)))) # (!\inst32|inst27|op_1~2_combout\ & (((\inst32|inst27|q[1]~5_combout\ & 
-- \inst32|inst27|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|op_1~2_combout\,
	datab => \inst32|inst27|_~3_combout\,
	datac => \inst32|inst27|q[1]~5_combout\,
	datad => \inst32|inst27|q[3]~1_combout\,
	combout => \inst32|inst27|q[1]~6_combout\);

-- Location: FF_X19_Y11_N7
\inst32|inst27|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst27|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst27|q\(1));

-- Location: LCCOMB_X19_Y11_N10
\inst32|inst27|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst27|_~0_combout\ = (!\inst32|inst27|q\(1) & (!\inst32|inst27|q\(2) & (!\inst32|inst27|q\(3) & !\inst32|inst27|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|q\(1),
	datab => \inst32|inst27|q\(2),
	datac => \inst32|inst27|q\(3),
	datad => \inst32|inst27|q\(0),
	combout => \inst32|inst27|_~0_combout\);

-- Location: LCCOMB_X17_Y12_N28
\inst32|inst28|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|op_1~2_combout\ = \inst32|inst28|q\(1) $ (\inst32|inst28|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst28|q\(1),
	datad => \inst32|inst28|q\(0),
	combout => \inst32|inst28|op_1~2_combout\);

-- Location: LCCOMB_X19_Y14_N10
\inst32|inst37|aux_dig[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst37|aux_dig[4]~3_combout\ = (\inst32|inst37|_~3_combout\) # ((\inst32|inst39|q\(0) & (\inst32|inst22|reset_cont~0_combout\ & !\inst32|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst39|q\(0),
	datab => \inst32|inst22|reset_cont~0_combout\,
	datac => \inst32|inst39|q\(1),
	datad => \inst32|inst37|_~3_combout\,
	combout => \inst32|inst37|aux_dig[4]~3_combout\);

-- Location: FF_X19_Y14_N11
\inst32|inst37|aux_dig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst37|aux_dig[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst37|aux_dig\(4));

-- Location: LCCOMB_X18_Y14_N8
\inst32|inst37|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst37|_~3_combout\ = (\inst23|q\(1) & (!\inst23|q\(0) & (\inst32|inst37|aux_dig\(4) & \inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(1),
	datab => \inst23|q\(0),
	datac => \inst32|inst37|aux_dig\(4),
	datad => \inst15|_~2_combout\,
	combout => \inst32|inst37|_~3_combout\);

-- Location: FF_X18_Y14_N9
\inst32|inst37|digsel_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst37|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst37|digsel_q\(4));

-- Location: LCCOMB_X18_Y11_N8
\inst32|inst28|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|q[3]~1_combout\ = (!\inst32|inst23|reset_final_pulse~combout\ & ((!\inst32|inst39|up_pulse~0_combout\) # (!\inst32|inst37|digsel_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|reset_final_pulse~combout\,
	datac => \inst32|inst37|digsel_q\(4),
	datad => \inst32|inst39|up_pulse~0_combout\,
	combout => \inst32|inst28|q[3]~1_combout\);

-- Location: LCCOMB_X17_Y12_N6
\inst32|inst28|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|_~1_combout\ = (\inst32|inst37|digsel_q\(4) & (\inst32|inst39|btn2_reg~q\ & ((!\inst20|inst|ff3~q\) # (!\inst15|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datab => \inst32|inst37|digsel_q\(4),
	datac => \inst32|inst39|btn2_reg~q\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst32|inst28|_~1_combout\);

-- Location: LCCOMB_X17_Y12_N22
\inst32|inst28|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|q[1]~5_combout\ = (\inst32|inst28|_~1_combout\ & (!\inst32|inst28|_~0_combout\ & (\inst32|inst28|q\(0) $ (!\inst32|inst28|q\(1))))) # (!\inst32|inst28|_~1_combout\ & (((\inst32|inst28|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|q\(0),
	datab => \inst32|inst28|q\(1),
	datac => \inst32|inst28|_~0_combout\,
	datad => \inst32|inst28|_~1_combout\,
	combout => \inst32|inst28|q[1]~5_combout\);

-- Location: LCCOMB_X18_Y11_N6
\inst32|inst28|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|q[1]~6_combout\ = (\inst32|inst28|_~3_combout\ & ((\inst32|inst28|op_1~2_combout\) # ((\inst32|inst28|q[3]~1_combout\ & \inst32|inst28|q[1]~5_combout\)))) # (!\inst32|inst28|_~3_combout\ & (((\inst32|inst28|q[3]~1_combout\ & 
-- \inst32|inst28|q[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|_~3_combout\,
	datab => \inst32|inst28|op_1~2_combout\,
	datac => \inst32|inst28|q[3]~1_combout\,
	datad => \inst32|inst28|q[1]~5_combout\,
	combout => \inst32|inst28|q[1]~6_combout\);

-- Location: FF_X18_Y11_N7
\inst32|inst28|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst28|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst28|q\(1));

-- Location: LCCOMB_X14_Y11_N26
\inst32|inst28|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|op_1~1_combout\ = \inst32|inst28|q\(2) $ (((\inst32|inst28|q\(1) & \inst32|inst28|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|q\(1),
	datac => \inst32|inst28|q\(0),
	datad => \inst32|inst28|q\(2),
	combout => \inst32|inst28|op_1~1_combout\);

-- Location: LCCOMB_X17_Y12_N16
\inst32|inst28|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|op_2~0_combout\ = (!\inst32|inst28|q\(1) & !\inst32|inst28|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst28|q\(1),
	datad => \inst32|inst28|q\(0),
	combout => \inst32|inst28|op_2~0_combout\);

-- Location: LCCOMB_X17_Y12_N20
\inst32|inst28|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|q[2]~3_combout\ = (\inst32|inst28|_~1_combout\ & (!\inst32|inst28|_~0_combout\ & (\inst32|inst28|q\(2) $ (\inst32|inst28|op_2~0_combout\)))) # (!\inst32|inst28|_~1_combout\ & (\inst32|inst28|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|q\(2),
	datab => \inst32|inst28|op_2~0_combout\,
	datac => \inst32|inst28|_~0_combout\,
	datad => \inst32|inst28|_~1_combout\,
	combout => \inst32|inst28|q[2]~3_combout\);

-- Location: LCCOMB_X18_Y11_N22
\inst32|inst28|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|q[2]~4_combout\ = (\inst32|inst28|_~3_combout\ & ((\inst32|inst28|op_1~1_combout\) # ((\inst32|inst28|q[3]~1_combout\ & \inst32|inst28|q[2]~3_combout\)))) # (!\inst32|inst28|_~3_combout\ & (((\inst32|inst28|q[3]~1_combout\ & 
-- \inst32|inst28|q[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|_~3_combout\,
	datab => \inst32|inst28|op_1~1_combout\,
	datac => \inst32|inst28|q[3]~1_combout\,
	datad => \inst32|inst28|q[2]~3_combout\,
	combout => \inst32|inst28|q[2]~4_combout\);

-- Location: FF_X18_Y11_N23
\inst32|inst28|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst28|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst28|q\(2));

-- Location: LCCOMB_X14_Y11_N24
\inst32|inst28|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|op_1~0_combout\ = \inst32|inst28|q\(3) $ (((\inst32|inst28|q\(1) & (\inst32|inst28|q\(0) & \inst32|inst28|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|q\(1),
	datab => \inst32|inst28|q\(0),
	datac => \inst32|inst28|q\(3),
	datad => \inst32|inst28|q\(2),
	combout => \inst32|inst28|op_1~0_combout\);

-- Location: LCCOMB_X17_Y12_N12
\inst32|inst28|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|q[3]~0_combout\ = \inst32|inst28|q\(3) $ (((\inst32|inst28|op_2~0_combout\ & (!\inst32|inst28|q\(2) & \inst32|inst28|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|q\(3),
	datab => \inst32|inst28|op_2~0_combout\,
	datac => \inst32|inst28|q\(2),
	datad => \inst32|inst28|_~1_combout\,
	combout => \inst32|inst28|q[3]~0_combout\);

-- Location: LCCOMB_X18_Y11_N0
\inst32|inst28|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|q[3]~2_combout\ = (\inst32|inst28|_~3_combout\ & ((\inst32|inst28|op_1~0_combout\) # ((\inst32|inst28|q[3]~1_combout\ & \inst32|inst28|q[3]~0_combout\)))) # (!\inst32|inst28|_~3_combout\ & (((\inst32|inst28|q[3]~1_combout\ & 
-- \inst32|inst28|q[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|_~3_combout\,
	datab => \inst32|inst28|op_1~0_combout\,
	datac => \inst32|inst28|q[3]~1_combout\,
	datad => \inst32|inst28|q[3]~0_combout\,
	combout => \inst32|inst28|q[3]~2_combout\);

-- Location: FF_X18_Y11_N1
\inst32|inst28|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst28|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst28|q\(3));

-- Location: LCCOMB_X17_Y12_N26
\inst32|inst28|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|_~2_combout\ = ((\inst32|inst28|q\(1)) # ((\inst32|inst28|q\(2)) # (!\inst32|inst28|q\(3)))) # (!\inst32|inst28|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|q\(0),
	datab => \inst32|inst28|q\(1),
	datac => \inst32|inst28|q\(2),
	datad => \inst32|inst28|q\(3),
	combout => \inst32|inst28|_~2_combout\);

-- Location: LCCOMB_X18_Y13_N20
\inst32|inst28|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|_~3_combout\ = (!\inst32|inst23|reset_final_pulse~combout\ & (\inst32|inst28|_~2_combout\ & (\inst32|inst37|digsel_q\(4) & \inst32|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|reset_final_pulse~combout\,
	datab => \inst32|inst28|_~2_combout\,
	datac => \inst32|inst37|digsel_q\(4),
	datad => \inst32|inst39|up_pulse~0_combout\,
	combout => \inst32|inst28|_~3_combout\);

-- Location: LCCOMB_X18_Y11_N12
\inst32|inst28|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|q[0]~7_combout\ = (\inst32|inst28|q\(0) & (((\inst32|inst28|q[3]~1_combout\ & !\inst32|inst28|_~1_combout\)))) # (!\inst32|inst28|q\(0) & ((\inst32|inst28|_~3_combout\) # ((\inst32|inst28|q[3]~1_combout\ & \inst32|inst28|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|_~3_combout\,
	datab => \inst32|inst28|q[3]~1_combout\,
	datac => \inst32|inst28|q\(0),
	datad => \inst32|inst28|_~1_combout\,
	combout => \inst32|inst28|q[0]~7_combout\);

-- Location: FF_X18_Y11_N13
\inst32|inst28|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst28|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst28|q\(0));

-- Location: LCCOMB_X18_Y11_N24
\inst32|inst28|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst28|_~0_combout\ = (!\inst32|inst28|q\(0) & (!\inst32|inst28|q\(3) & (!\inst32|inst28|q\(2) & !\inst32|inst28|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|q\(0),
	datab => \inst32|inst28|q\(3),
	datac => \inst32|inst28|q\(2),
	datad => \inst32|inst28|q\(1),
	combout => \inst32|inst28|_~0_combout\);

-- Location: LCCOMB_X18_Y14_N18
\inst32|inst37|aux_dig[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst37|aux_dig[2]~1_combout\ = (\inst32|inst37|_~1_combout\) # ((\inst32|inst22|reset_cont~0_combout\ & (\inst32|inst39|q\(1) & \inst32|inst39|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst22|reset_cont~0_combout\,
	datab => \inst32|inst39|q\(1),
	datac => \inst32|inst39|q\(0),
	datad => \inst32|inst37|_~1_combout\,
	combout => \inst32|inst37|aux_dig[2]~1_combout\);

-- Location: FF_X18_Y14_N19
\inst32|inst37|aux_dig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst37|aux_dig[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst37|aux_dig\(2));

-- Location: LCCOMB_X18_Y14_N2
\inst32|inst37|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst37|_~1_combout\ = (\inst23|q\(1) & (!\inst23|q\(0) & (\inst32|inst37|aux_dig\(2) & \inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(1),
	datab => \inst23|q\(0),
	datac => \inst32|inst37|aux_dig\(2),
	datad => \inst15|_~2_combout\,
	combout => \inst32|inst37|_~1_combout\);

-- Location: FF_X18_Y14_N3
\inst32|inst37|digsel_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst37|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst37|digsel_q\(2));

-- Location: LCCOMB_X17_Y13_N18
\inst32|inst26|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|_~1_combout\ = (\inst32|inst39|btn2_reg~q\ & (\inst32|inst37|digsel_q\(2) & ((!\inst20|inst|ff3~q\) # (!\inst15|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst39|btn2_reg~q\,
	datab => \inst15|_~2_combout\,
	datac => \inst32|inst37|digsel_q\(2),
	datad => \inst20|inst|ff3~q\,
	combout => \inst32|inst26|_~1_combout\);

-- Location: LCCOMB_X16_Y13_N4
\inst32|inst26|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|q[3]~1_combout\ = (!\inst32|inst23|reset_final_pulse~combout\ & ((!\inst32|inst39|up_pulse~0_combout\) # (!\inst32|inst37|digsel_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst37|digsel_q\(2),
	datac => \inst32|inst23|reset_final_pulse~combout\,
	datad => \inst32|inst39|up_pulse~0_combout\,
	combout => \inst32|inst26|q[3]~1_combout\);

-- Location: LCCOMB_X17_Y13_N22
\inst32|inst26|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|op_1~1_combout\ = \inst32|inst26|q\(2) $ (((\inst32|inst26|q\(1) & \inst32|inst26|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst26|q\(1),
	datac => \inst32|inst26|q\(2),
	datad => \inst32|inst26|q\(0),
	combout => \inst32|inst26|op_1~1_combout\);

-- Location: LCCOMB_X17_Y13_N8
\inst32|inst26|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|op_2~0_combout\ = (!\inst32|inst26|q\(1) & !\inst32|inst26|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst26|q\(1),
	datad => \inst32|inst26|q\(0),
	combout => \inst32|inst26|op_2~0_combout\);

-- Location: LCCOMB_X17_Y13_N0
\inst32|inst26|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|q[2]~3_combout\ = (\inst32|inst26|_~1_combout\ & (!\inst32|inst26|_~0_combout\ & (\inst32|inst26|q\(2) $ (\inst32|inst26|op_2~0_combout\)))) # (!\inst32|inst26|_~1_combout\ & (((\inst32|inst26|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|_~0_combout\,
	datab => \inst32|inst26|q\(2),
	datac => \inst32|inst26|op_2~0_combout\,
	datad => \inst32|inst26|_~1_combout\,
	combout => \inst32|inst26|q[2]~3_combout\);

-- Location: LCCOMB_X16_Y11_N26
\inst32|inst26|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|q[2]~4_combout\ = (\inst32|inst26|op_1~1_combout\ & ((\inst32|inst26|_~3_combout\) # ((\inst32|inst26|q[3]~1_combout\ & \inst32|inst26|q[2]~3_combout\)))) # (!\inst32|inst26|op_1~1_combout\ & (((\inst32|inst26|q[3]~1_combout\ & 
-- \inst32|inst26|q[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|op_1~1_combout\,
	datab => \inst32|inst26|_~3_combout\,
	datac => \inst32|inst26|q[3]~1_combout\,
	datad => \inst32|inst26|q[2]~3_combout\,
	combout => \inst32|inst26|q[2]~4_combout\);

-- Location: FF_X16_Y11_N27
\inst32|inst26|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst26|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst26|q\(2));

-- Location: LCCOMB_X17_Y13_N6
\inst32|inst26|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|op_1~0_combout\ = \inst32|inst26|q\(3) $ (((\inst32|inst26|q\(1) & (\inst32|inst26|q\(2) & \inst32|inst26|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|q\(3),
	datab => \inst32|inst26|q\(1),
	datac => \inst32|inst26|q\(2),
	datad => \inst32|inst26|q\(0),
	combout => \inst32|inst26|op_1~0_combout\);

-- Location: LCCOMB_X17_Y13_N20
\inst32|inst26|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|q[3]~0_combout\ = \inst32|inst26|q\(3) $ (((!\inst32|inst26|q\(2) & (\inst32|inst26|op_2~0_combout\ & \inst32|inst26|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|q\(3),
	datab => \inst32|inst26|q\(2),
	datac => \inst32|inst26|op_2~0_combout\,
	datad => \inst32|inst26|_~1_combout\,
	combout => \inst32|inst26|q[3]~0_combout\);

-- Location: LCCOMB_X16_Y11_N28
\inst32|inst26|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|q[3]~2_combout\ = (\inst32|inst26|q[3]~1_combout\ & ((\inst32|inst26|q[3]~0_combout\) # ((\inst32|inst26|op_1~0_combout\ & \inst32|inst26|_~3_combout\)))) # (!\inst32|inst26|q[3]~1_combout\ & (\inst32|inst26|op_1~0_combout\ & 
-- (\inst32|inst26|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|q[3]~1_combout\,
	datab => \inst32|inst26|op_1~0_combout\,
	datac => \inst32|inst26|_~3_combout\,
	datad => \inst32|inst26|q[3]~0_combout\,
	combout => \inst32|inst26|q[3]~2_combout\);

-- Location: FF_X16_Y11_N29
\inst32|inst26|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst26|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst26|q\(3));

-- Location: LCCOMB_X17_Y13_N30
\inst32|inst26|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|_~2_combout\ = ((\inst32|inst26|q\(1)) # ((\inst32|inst26|q\(2)) # (!\inst32|inst26|q\(0)))) # (!\inst32|inst26|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|q\(3),
	datab => \inst32|inst26|q\(1),
	datac => \inst32|inst26|q\(2),
	datad => \inst32|inst26|q\(0),
	combout => \inst32|inst26|_~2_combout\);

-- Location: LCCOMB_X16_Y11_N8
\inst32|inst26|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|_~3_combout\ = (!\inst32|inst23|reset_final_pulse~combout\ & (\inst32|inst37|digsel_q\(2) & (\inst32|inst39|up_pulse~0_combout\ & \inst32|inst26|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|reset_final_pulse~combout\,
	datab => \inst32|inst37|digsel_q\(2),
	datac => \inst32|inst39|up_pulse~0_combout\,
	datad => \inst32|inst26|_~2_combout\,
	combout => \inst32|inst26|_~3_combout\);

-- Location: LCCOMB_X16_Y11_N20
\inst32|inst26|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|q[0]~7_combout\ = (\inst32|inst26|q\(0) & (!\inst32|inst26|_~1_combout\ & ((\inst32|inst26|q[3]~1_combout\)))) # (!\inst32|inst26|q\(0) & ((\inst32|inst26|_~3_combout\) # ((\inst32|inst26|_~1_combout\ & \inst32|inst26|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|_~1_combout\,
	datab => \inst32|inst26|_~3_combout\,
	datac => \inst32|inst26|q\(0),
	datad => \inst32|inst26|q[3]~1_combout\,
	combout => \inst32|inst26|q[0]~7_combout\);

-- Location: FF_X16_Y11_N21
\inst32|inst26|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst26|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst26|q\(0));

-- Location: LCCOMB_X17_Y13_N2
\inst32|inst26|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|op_1~2_combout\ = \inst32|inst26|q\(1) $ (\inst32|inst26|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst26|q\(1),
	datad => \inst32|inst26|q\(0),
	combout => \inst32|inst26|op_1~2_combout\);

-- Location: LCCOMB_X17_Y13_N12
\inst32|inst26|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|q[1]~5_combout\ = (\inst32|inst26|_~1_combout\ & (!\inst32|inst26|_~0_combout\ & (\inst32|inst26|q\(0) $ (!\inst32|inst26|q\(1))))) # (!\inst32|inst26|_~1_combout\ & (((\inst32|inst26|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|q\(0),
	datab => \inst32|inst26|q\(1),
	datac => \inst32|inst26|_~0_combout\,
	datad => \inst32|inst26|_~1_combout\,
	combout => \inst32|inst26|q[1]~5_combout\);

-- Location: LCCOMB_X16_Y11_N22
\inst32|inst26|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|q[1]~6_combout\ = (\inst32|inst26|op_1~2_combout\ & ((\inst32|inst26|_~3_combout\) # ((\inst32|inst26|q[3]~1_combout\ & \inst32|inst26|q[1]~5_combout\)))) # (!\inst32|inst26|op_1~2_combout\ & (((\inst32|inst26|q[3]~1_combout\ & 
-- \inst32|inst26|q[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|op_1~2_combout\,
	datab => \inst32|inst26|_~3_combout\,
	datac => \inst32|inst26|q[3]~1_combout\,
	datad => \inst32|inst26|q[1]~5_combout\,
	combout => \inst32|inst26|q[1]~6_combout\);

-- Location: FF_X16_Y11_N23
\inst32|inst26|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst26|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst26|q\(1));

-- Location: LCCOMB_X16_Y11_N6
\inst32|inst26|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst26|_~0_combout\ = (!\inst32|inst26|q\(1) & (!\inst32|inst26|q\(0) & (!\inst32|inst26|q\(2) & !\inst32|inst26|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|q\(1),
	datab => \inst32|inst26|q\(0),
	datac => \inst32|inst26|q\(2),
	datad => \inst32|inst26|q\(3),
	combout => \inst32|inst26|_~0_combout\);

-- Location: LCCOMB_X19_Y14_N2
\inst32|inst37|aux_dig[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst37|aux_dig[1]~0_combout\ = (\inst32|inst37|_~0_combout\) # ((!\inst32|inst39|q\(0) & (\inst32|inst22|reset_cont~0_combout\ & !\inst32|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst39|q\(0),
	datab => \inst32|inst22|reset_cont~0_combout\,
	datac => \inst32|inst39|q\(1),
	datad => \inst32|inst37|_~0_combout\,
	combout => \inst32|inst37|aux_dig[1]~0_combout\);

-- Location: FF_X19_Y14_N3
\inst32|inst37|aux_dig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst37|aux_dig[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst37|aux_dig\(1));

-- Location: LCCOMB_X19_Y14_N24
\inst32|inst37|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst37|_~0_combout\ = (\inst15|_~2_combout\ & (!\inst23|q\(0) & (\inst23|q\(1) & \inst32|inst37|aux_dig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datab => \inst23|q\(0),
	datac => \inst23|q\(1),
	datad => \inst32|inst37|aux_dig\(1),
	combout => \inst32|inst37|_~0_combout\);

-- Location: FF_X19_Y14_N25
\inst32|inst37|digsel_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst37|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst37|digsel_q\(1));

-- Location: LCCOMB_X18_Y9_N30
\inst32|inst25|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|q[3]~1_combout\ = (!\inst32|inst23|reset_final_pulse~combout\ & ((!\inst32|inst39|up_pulse~0_combout\) # (!\inst32|inst37|digsel_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst37|digsel_q\(1),
	datab => \inst32|inst23|reset_final_pulse~combout\,
	datac => \inst32|inst39|up_pulse~0_combout\,
	combout => \inst32|inst25|q[3]~1_combout\);

-- Location: LCCOMB_X18_Y9_N2
\inst32|inst25|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|_~1_combout\ = (\inst32|inst37|digsel_q\(1) & (\inst32|inst39|btn2_reg~q\ & ((!\inst20|inst|ff3~q\) # (!\inst15|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst37|digsel_q\(1),
	datab => \inst32|inst39|btn2_reg~q\,
	datac => \inst15|_~2_combout\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst32|inst25|_~1_combout\);

-- Location: LCCOMB_X19_Y9_N8
\inst32|inst25|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|op_1~2_combout\ = \inst32|inst25|q\(0) $ (\inst32|inst25|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst25|q\(0),
	datad => \inst32|inst25|q\(1),
	combout => \inst32|inst25|op_1~2_combout\);

-- Location: LCCOMB_X18_Y9_N18
\inst32|inst25|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|q[1]~5_combout\ = (\inst32|inst25|_~1_combout\ & (!\inst32|inst25|_~0_combout\ & (\inst32|inst25|q\(1) $ (!\inst32|inst25|q\(0))))) # (!\inst32|inst25|_~1_combout\ & (\inst32|inst25|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|q\(1),
	datab => \inst32|inst25|_~0_combout\,
	datac => \inst32|inst25|q\(0),
	datad => \inst32|inst25|_~1_combout\,
	combout => \inst32|inst25|q[1]~5_combout\);

-- Location: LCCOMB_X18_Y9_N22
\inst32|inst25|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|q[1]~6_combout\ = (\inst32|inst25|_~3_combout\ & ((\inst32|inst25|op_1~2_combout\) # ((\inst32|inst25|q[3]~1_combout\ & \inst32|inst25|q[1]~5_combout\)))) # (!\inst32|inst25|_~3_combout\ & (((\inst32|inst25|q[3]~1_combout\ & 
-- \inst32|inst25|q[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|_~3_combout\,
	datab => \inst32|inst25|op_1~2_combout\,
	datac => \inst32|inst25|q[3]~1_combout\,
	datad => \inst32|inst25|q[1]~5_combout\,
	combout => \inst32|inst25|q[1]~6_combout\);

-- Location: FF_X18_Y9_N23
\inst32|inst25|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst25|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst25|q\(1));

-- Location: LCCOMB_X19_Y9_N26
\inst32|inst25|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|op_1~0_combout\ = \inst32|inst25|q\(3) $ (((\inst32|inst25|q\(2) & (\inst32|inst25|q\(1) & \inst32|inst25|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|q\(2),
	datab => \inst32|inst25|q\(3),
	datac => \inst32|inst25|q\(1),
	datad => \inst32|inst25|q\(0),
	combout => \inst32|inst25|op_1~0_combout\);

-- Location: LCCOMB_X19_Y9_N12
\inst32|inst25|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|op_2~0_combout\ = (!\inst32|inst25|q\(0) & !\inst32|inst25|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst25|q\(0),
	datad => \inst32|inst25|q\(1),
	combout => \inst32|inst25|op_2~0_combout\);

-- Location: LCCOMB_X18_Y9_N4
\inst32|inst25|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|q[3]~0_combout\ = \inst32|inst25|q\(3) $ (((!\inst32|inst25|q\(2) & (\inst32|inst25|op_2~0_combout\ & \inst32|inst25|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|q\(3),
	datab => \inst32|inst25|q\(2),
	datac => \inst32|inst25|op_2~0_combout\,
	datad => \inst32|inst25|_~1_combout\,
	combout => \inst32|inst25|q[3]~0_combout\);

-- Location: LCCOMB_X18_Y9_N8
\inst32|inst25|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|q[3]~2_combout\ = (\inst32|inst25|q[3]~1_combout\ & ((\inst32|inst25|q[3]~0_combout\) # ((\inst32|inst25|op_1~0_combout\ & \inst32|inst25|_~3_combout\)))) # (!\inst32|inst25|q[3]~1_combout\ & (\inst32|inst25|op_1~0_combout\ & 
-- ((\inst32|inst25|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|q[3]~1_combout\,
	datab => \inst32|inst25|op_1~0_combout\,
	datac => \inst32|inst25|q[3]~0_combout\,
	datad => \inst32|inst25|_~3_combout\,
	combout => \inst32|inst25|q[3]~2_combout\);

-- Location: FF_X18_Y9_N9
\inst32|inst25|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst25|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst25|q\(3));

-- Location: LCCOMB_X19_Y9_N14
\inst32|inst25|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|_~2_combout\ = (\inst32|inst25|q\(2)) # (((\inst32|inst25|q\(1)) # (!\inst32|inst25|q\(0))) # (!\inst32|inst25|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|q\(2),
	datab => \inst32|inst25|q\(3),
	datac => \inst32|inst25|q\(1),
	datad => \inst32|inst25|q\(0),
	combout => \inst32|inst25|_~2_combout\);

-- Location: LCCOMB_X18_Y9_N12
\inst32|inst25|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|_~3_combout\ = (\inst32|inst37|digsel_q\(1) & (!\inst32|inst23|reset_final_pulse~combout\ & (\inst32|inst25|_~2_combout\ & \inst32|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst37|digsel_q\(1),
	datab => \inst32|inst23|reset_final_pulse~combout\,
	datac => \inst32|inst25|_~2_combout\,
	datad => \inst32|inst39|up_pulse~0_combout\,
	combout => \inst32|inst25|_~3_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst32|inst25|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|q[0]~7_combout\ = (\inst32|inst25|q\(0) & (\inst32|inst25|q[3]~1_combout\ & (!\inst32|inst25|_~1_combout\))) # (!\inst32|inst25|q\(0) & ((\inst32|inst25|_~3_combout\) # ((\inst32|inst25|q[3]~1_combout\ & \inst32|inst25|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|q[3]~1_combout\,
	datab => \inst32|inst25|_~1_combout\,
	datac => \inst32|inst25|q\(0),
	datad => \inst32|inst25|_~3_combout\,
	combout => \inst32|inst25|q[0]~7_combout\);

-- Location: FF_X18_Y9_N25
\inst32|inst25|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst25|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst25|q\(0));

-- Location: LCCOMB_X18_Y9_N28
\inst32|inst25|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|op_1~1_combout\ = \inst32|inst25|q\(2) $ (((\inst32|inst25|q\(0) & \inst32|inst25|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|q\(0),
	datab => \inst32|inst25|q\(1),
	datad => \inst32|inst25|q\(2),
	combout => \inst32|inst25|op_1~1_combout\);

-- Location: LCCOMB_X18_Y9_N14
\inst32|inst25|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|q[2]~3_combout\ = (\inst32|inst25|_~1_combout\ & (!\inst32|inst25|_~0_combout\ & (\inst32|inst25|q\(2) $ (\inst32|inst25|op_2~0_combout\)))) # (!\inst32|inst25|_~1_combout\ & (\inst32|inst25|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|q\(2),
	datab => \inst32|inst25|_~0_combout\,
	datac => \inst32|inst25|op_2~0_combout\,
	datad => \inst32|inst25|_~1_combout\,
	combout => \inst32|inst25|q[2]~3_combout\);

-- Location: LCCOMB_X18_Y9_N10
\inst32|inst25|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|q[2]~4_combout\ = (\inst32|inst25|q[3]~1_combout\ & ((\inst32|inst25|q[2]~3_combout\) # ((\inst32|inst25|op_1~1_combout\ & \inst32|inst25|_~3_combout\)))) # (!\inst32|inst25|q[3]~1_combout\ & (\inst32|inst25|op_1~1_combout\ & 
-- ((\inst32|inst25|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|q[3]~1_combout\,
	datab => \inst32|inst25|op_1~1_combout\,
	datac => \inst32|inst25|q[2]~3_combout\,
	datad => \inst32|inst25|_~3_combout\,
	combout => \inst32|inst25|q[2]~4_combout\);

-- Location: FF_X18_Y9_N11
\inst32|inst25|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst25|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst25|q\(2));

-- Location: LCCOMB_X18_Y9_N20
\inst32|inst25|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst25|_~0_combout\ = (!\inst32|inst25|q\(2) & (!\inst32|inst25|q\(3) & (!\inst32|inst25|q\(1) & !\inst32|inst25|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst25|q\(2),
	datab => \inst32|inst25|q\(3),
	datac => \inst32|inst25|q\(1),
	datad => \inst32|inst25|q\(0),
	combout => \inst32|inst25|_~0_combout\);

-- Location: LCCOMB_X17_Y11_N24
\inst32|inst40|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|_~0_combout\ = (\inst32|inst27|_~0_combout\ & (\inst32|inst28|_~0_combout\ & (\inst32|inst26|_~0_combout\ & \inst32|inst25|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|_~0_combout\,
	datab => \inst32|inst28|_~0_combout\,
	datac => \inst32|inst26|_~0_combout\,
	datad => \inst32|inst25|_~0_combout\,
	combout => \inst32|inst40|_~0_combout\);

-- Location: LCCOMB_X16_Y11_N12
\inst32|inst40|final_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~5_combout\ = (\inst32|inst26|q\(1) & (\inst32|inst23|dezena_q\(1) & (\inst32|inst26|q\(0) $ (!\inst32|inst23|dezena_q\(0))))) # (!\inst32|inst26|q\(1) & (!\inst32|inst23|dezena_q\(1) & (\inst32|inst26|q\(0) $ 
-- (!\inst32|inst23|dezena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|q\(1),
	datab => \inst32|inst26|q\(0),
	datac => \inst32|inst23|dezena_q\(0),
	datad => \inst32|inst23|dezena_q\(1),
	combout => \inst32|inst40|final_cont~5_combout\);

-- Location: LCCOMB_X16_Y11_N4
\inst32|inst40|final_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~4_combout\ = (\inst32|inst23|dezena_q\(3) & (\inst32|inst26|q\(3) & (\inst32|inst23|dezena_q\(2) $ (!\inst32|inst26|q\(2))))) # (!\inst32|inst23|dezena_q\(3) & (!\inst32|inst26|q\(3) & (\inst32|inst23|dezena_q\(2) $ 
-- (!\inst32|inst26|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|dezena_q\(3),
	datab => \inst32|inst23|dezena_q\(2),
	datac => \inst32|inst26|q\(2),
	datad => \inst32|inst26|q\(3),
	combout => \inst32|inst40|final_cont~4_combout\);

-- Location: LCCOMB_X18_Y9_N16
\inst32|inst23|unidade_q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|unidade_q[1]~3_combout\ = (\inst32|inst23|pode_contar~combout\ & (!\inst32|inst23|_~0_combout\ & (\inst32|inst23|unidade_q\(0) $ (\inst32|inst23|unidade_q\(1))))) # (!\inst32|inst23|pode_contar~combout\ & (((\inst32|inst23|unidade_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|unidade_q\(0),
	datab => \inst32|inst23|_~0_combout\,
	datac => \inst32|inst23|unidade_q\(1),
	datad => \inst32|inst23|pode_contar~combout\,
	combout => \inst32|inst23|unidade_q[1]~3_combout\);

-- Location: FF_X18_Y9_N17
\inst32|inst23|unidade_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|unidade_q[1]~3_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|unidade_q\(1));

-- Location: LCCOMB_X18_Y9_N6
\inst32|inst40|final_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~3_combout\ = (\inst32|inst23|unidade_q\(0) & (\inst32|inst25|q\(0) & (\inst32|inst23|unidade_q\(1) $ (!\inst32|inst25|q\(1))))) # (!\inst32|inst23|unidade_q\(0) & (!\inst32|inst25|q\(0) & (\inst32|inst23|unidade_q\(1) $ 
-- (!\inst32|inst25|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|unidade_q\(0),
	datab => \inst32|inst23|unidade_q\(1),
	datac => \inst32|inst25|q\(1),
	datad => \inst32|inst25|q\(0),
	combout => \inst32|inst40|final_cont~3_combout\);

-- Location: LCCOMB_X18_Y9_N0
\inst32|inst40|final_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~2_combout\ = (\inst32|inst23|unidade_q\(3) & (\inst32|inst25|q\(3) & (\inst32|inst23|unidade_q\(2) $ (!\inst32|inst25|q\(2))))) # (!\inst32|inst23|unidade_q\(3) & (!\inst32|inst25|q\(3) & (\inst32|inst23|unidade_q\(2) $ 
-- (!\inst32|inst25|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|unidade_q\(3),
	datab => \inst32|inst25|q\(3),
	datac => \inst32|inst23|unidade_q\(2),
	datad => \inst32|inst25|q\(2),
	combout => \inst32|inst40|final_cont~2_combout\);

-- Location: LCCOMB_X17_Y11_N30
\inst32|inst40|final_cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~6_combout\ = (\inst32|inst40|final_cont~5_combout\ & (\inst32|inst40|final_cont~4_combout\ & (\inst32|inst40|final_cont~3_combout\ & \inst32|inst40|final_cont~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst40|final_cont~5_combout\,
	datab => \inst32|inst40|final_cont~4_combout\,
	datac => \inst32|inst40|final_cont~3_combout\,
	datad => \inst32|inst40|final_cont~2_combout\,
	combout => \inst32|inst40|final_cont~6_combout\);

-- Location: LCCOMB_X17_Y11_N18
\inst32|inst40|final_cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~12_combout\ = (\inst32|inst40|final_cont~11_combout\ & (\inst32|inst21|comp_flag_q~q\ & (\inst32|inst40|final_cont~6_combout\ & !\inst32|inst40|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst40|final_cont~11_combout\,
	datab => \inst32|inst21|comp_flag_q~q\,
	datac => \inst32|inst40|final_cont~6_combout\,
	datad => \inst32|inst40|_~0_combout\,
	combout => \inst32|inst40|final_cont~12_combout\);

-- Location: LCCOMB_X17_Y11_N20
\inst32|inst23|pode_contar\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|pode_contar~combout\ = (\inst32|inst23|pode_contar~0_combout\ & (!\inst32|inst40|final_cont~12_combout\ & ((!\inst32|inst40|_~0_combout\) # (!\inst32|inst40|final_cont~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|pode_contar~0_combout\,
	datab => \inst32|inst40|final_cont~13_combout\,
	datac => \inst32|inst40|_~0_combout\,
	datad => \inst32|inst40|final_cont~12_combout\,
	combout => \inst32|inst23|pode_contar~combout\);

-- Location: LCCOMB_X17_Y11_N8
\inst32|inst23|dezena_q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|dezena_q[0]~3_combout\ = \inst32|inst23|dezena_q\(0) $ (((\inst32|inst23|_~0_combout\ & \inst32|inst23|pode_contar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst23|_~0_combout\,
	datac => \inst32|inst23|dezena_q\(0),
	datad => \inst32|inst23|pode_contar~combout\,
	combout => \inst32|inst23|dezena_q[0]~3_combout\);

-- Location: FF_X17_Y11_N9
\inst32|inst23|dezena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|dezena_q[0]~3_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|dezena_q\(0));

-- Location: LCCOMB_X16_Y11_N0
\inst32|inst23|dezena_q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|dezena_q[1]~0_combout\ = (\inst32|inst21|comp_flag_q~q\ & (!\inst32|inst50|pausa_q~q\ & (\inst32|inst23|_~0_combout\ & !\inst32|inst40|final_cont~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst21|comp_flag_q~q\,
	datab => \inst32|inst50|pausa_q~q\,
	datac => \inst32|inst23|_~0_combout\,
	datad => \inst32|inst40|final_cont~15_combout\,
	combout => \inst32|inst23|dezena_q[1]~0_combout\);

-- Location: LCCOMB_X16_Y11_N2
\inst32|inst23|dezena_q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|dezena_q[1]~4_combout\ = (\inst32|inst23|dezena_q[1]~0_combout\ & (!\inst32|inst23|_~1_combout\ & (\inst32|inst23|dezena_q\(0) $ (\inst32|inst23|dezena_q\(1))))) # (!\inst32|inst23|dezena_q[1]~0_combout\ & (((\inst32|inst23|dezena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|_~1_combout\,
	datab => \inst32|inst23|dezena_q\(0),
	datac => \inst32|inst23|dezena_q\(1),
	datad => \inst32|inst23|dezena_q[1]~0_combout\,
	combout => \inst32|inst23|dezena_q[1]~4_combout\);

-- Location: FF_X16_Y11_N3
\inst32|inst23|dezena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|dezena_q[1]~4_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|dezena_q\(1));

-- Location: LCCOMB_X16_Y11_N10
\inst32|inst23|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|op_2~0_combout\ = \inst32|inst23|dezena_q\(2) $ (((\inst32|inst23|dezena_q\(1) & \inst32|inst23|dezena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst23|dezena_q\(1),
	datac => \inst32|inst23|dezena_q\(0),
	datad => \inst32|inst23|dezena_q\(2),
	combout => \inst32|inst23|op_2~0_combout\);

-- Location: LCCOMB_X16_Y11_N16
\inst32|inst23|dezena_q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|dezena_q[2]~1_combout\ = (\inst32|inst23|dezena_q[1]~0_combout\ & (\inst32|inst23|op_2~0_combout\ & (!\inst32|inst23|_~1_combout\))) # (!\inst32|inst23|dezena_q[1]~0_combout\ & (((\inst32|inst23|dezena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|op_2~0_combout\,
	datab => \inst32|inst23|_~1_combout\,
	datac => \inst32|inst23|dezena_q\(2),
	datad => \inst32|inst23|dezena_q[1]~0_combout\,
	combout => \inst32|inst23|dezena_q[2]~1_combout\);

-- Location: FF_X16_Y11_N17
\inst32|inst23|dezena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|dezena_q[2]~1_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|dezena_q\(2));

-- Location: LCCOMB_X16_Y11_N18
\inst32|inst23|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|op_2~1_combout\ = \inst32|inst23|dezena_q\(3) $ (((\inst32|inst23|dezena_q\(2) & (\inst32|inst23|dezena_q\(0) & \inst32|inst23|dezena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|dezena_q\(3),
	datab => \inst32|inst23|dezena_q\(2),
	datac => \inst32|inst23|dezena_q\(0),
	datad => \inst32|inst23|dezena_q\(1),
	combout => \inst32|inst23|op_2~1_combout\);

-- Location: LCCOMB_X16_Y11_N30
\inst32|inst23|dezena_q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|dezena_q[3]~2_combout\ = (\inst32|inst23|dezena_q[1]~0_combout\ & (!\inst32|inst23|_~1_combout\ & (\inst32|inst23|op_2~1_combout\))) # (!\inst32|inst23|dezena_q[1]~0_combout\ & (((\inst32|inst23|dezena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|_~1_combout\,
	datab => \inst32|inst23|op_2~1_combout\,
	datac => \inst32|inst23|dezena_q\(3),
	datad => \inst32|inst23|dezena_q[1]~0_combout\,
	combout => \inst32|inst23|dezena_q[3]~2_combout\);

-- Location: FF_X16_Y11_N31
\inst32|inst23|dezena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|dezena_q[3]~2_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|dezena_q\(3));

-- Location: LCCOMB_X16_Y11_N24
\inst32|inst23|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|_~1_combout\ = (\inst32|inst23|dezena_q\(3) & (!\inst32|inst23|dezena_q\(1) & (\inst32|inst23|dezena_q\(0) & !\inst32|inst23|dezena_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|dezena_q\(3),
	datab => \inst32|inst23|dezena_q\(1),
	datac => \inst32|inst23|dezena_q\(0),
	datad => \inst32|inst23|dezena_q\(2),
	combout => \inst32|inst23|_~1_combout\);

-- Location: LCCOMB_X17_Y11_N14
\inst32|inst23|milhar_q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|milhar_q[1]~0_combout\ = (\inst32|inst23|_~1_combout\ & \inst32|inst23|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst23|_~1_combout\,
	datad => \inst32|inst23|_~0_combout\,
	combout => \inst32|inst23|milhar_q[1]~0_combout\);

-- Location: LCCOMB_X18_Y11_N2
\inst32|inst23|milhar_q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|milhar_q[0]~5_combout\ = \inst32|inst23|milhar_q\(0) $ (((\inst32|inst23|milhar_q[1]~0_combout\ & (\inst32|inst23|_~3_combout\ & \inst32|inst23|pode_contar~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|milhar_q[1]~0_combout\,
	datab => \inst32|inst23|_~3_combout\,
	datac => \inst32|inst23|milhar_q\(0),
	datad => \inst32|inst23|pode_contar~combout\,
	combout => \inst32|inst23|milhar_q[0]~5_combout\);

-- Location: FF_X18_Y11_N3
\inst32|inst23|milhar_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|milhar_q[0]~5_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|milhar_q\(0));

-- Location: LCCOMB_X18_Y11_N18
\inst32|inst23|milhar_q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|milhar_q[1]~2_combout\ = (\inst32|inst23|milhar_q[1]~0_combout\ & (\inst32|inst23|_~3_combout\ & (\inst32|inst23|pode_contar~0_combout\ & !\inst32|inst40|final_cont~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|milhar_q[1]~0_combout\,
	datab => \inst32|inst23|_~3_combout\,
	datac => \inst32|inst23|pode_contar~0_combout\,
	datad => \inst32|inst40|final_cont~15_combout\,
	combout => \inst32|inst23|milhar_q[1]~2_combout\);

-- Location: LCCOMB_X18_Y11_N28
\inst32|inst23|milhar_q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|milhar_q[1]~6_combout\ = (\inst32|inst23|milhar_q[1]~2_combout\ & (!\inst32|inst23|_~2_combout\ & (\inst32|inst23|milhar_q\(0) $ (\inst32|inst23|milhar_q\(1))))) # (!\inst32|inst23|milhar_q[1]~2_combout\ & (((\inst32|inst23|milhar_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|_~2_combout\,
	datab => \inst32|inst23|milhar_q\(0),
	datac => \inst32|inst23|milhar_q\(1),
	datad => \inst32|inst23|milhar_q[1]~2_combout\,
	combout => \inst32|inst23|milhar_q[1]~6_combout\);

-- Location: FF_X18_Y11_N29
\inst32|inst23|milhar_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|milhar_q[1]~6_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|milhar_q\(1));

-- Location: LCCOMB_X14_Y11_N0
\inst32|inst23|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|op_4~0_combout\ = \inst32|inst23|milhar_q\(2) $ (((\inst32|inst23|milhar_q\(0) & \inst32|inst23|milhar_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst23|milhar_q\(0),
	datac => \inst32|inst23|milhar_q\(1),
	datad => \inst32|inst23|milhar_q\(2),
	combout => \inst32|inst23|op_4~0_combout\);

-- Location: LCCOMB_X18_Y11_N16
\inst32|inst23|milhar_q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|milhar_q[2]~3_combout\ = (\inst32|inst23|milhar_q[1]~2_combout\ & (!\inst32|inst23|_~2_combout\ & (\inst32|inst23|op_4~0_combout\))) # (!\inst32|inst23|milhar_q[1]~2_combout\ & (((\inst32|inst23|milhar_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|_~2_combout\,
	datab => \inst32|inst23|op_4~0_combout\,
	datac => \inst32|inst23|milhar_q\(2),
	datad => \inst32|inst23|milhar_q[1]~2_combout\,
	combout => \inst32|inst23|milhar_q[2]~3_combout\);

-- Location: FF_X18_Y11_N17
\inst32|inst23|milhar_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|milhar_q[2]~3_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|milhar_q\(2));

-- Location: LCCOMB_X18_Y11_N30
\inst32|inst23|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|_~2_combout\ = (!\inst32|inst23|milhar_q\(1) & (\inst32|inst23|milhar_q\(0) & (\inst32|inst23|milhar_q\(3) & !\inst32|inst23|milhar_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|milhar_q\(1),
	datab => \inst32|inst23|milhar_q\(0),
	datac => \inst32|inst23|milhar_q\(3),
	datad => \inst32|inst23|milhar_q\(2),
	combout => \inst32|inst23|_~2_combout\);

-- Location: LCCOMB_X14_Y11_N6
\inst32|inst23|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|op_4~1_combout\ = \inst32|inst23|milhar_q\(3) $ (((\inst32|inst23|milhar_q\(1) & (\inst32|inst23|milhar_q\(2) & \inst32|inst23|milhar_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|milhar_q\(1),
	datab => \inst32|inst23|milhar_q\(2),
	datac => \inst32|inst23|milhar_q\(0),
	datad => \inst32|inst23|milhar_q\(3),
	combout => \inst32|inst23|op_4~1_combout\);

-- Location: LCCOMB_X18_Y11_N26
\inst32|inst23|milhar_q[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|milhar_q[3]~4_combout\ = (\inst32|inst23|milhar_q[1]~2_combout\ & (!\inst32|inst23|_~2_combout\ & (\inst32|inst23|op_4~1_combout\))) # (!\inst32|inst23|milhar_q[1]~2_combout\ & (((\inst32|inst23|milhar_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|_~2_combout\,
	datab => \inst32|inst23|op_4~1_combout\,
	datac => \inst32|inst23|milhar_q\(3),
	datad => \inst32|inst23|milhar_q[1]~2_combout\,
	combout => \inst32|inst23|milhar_q[3]~4_combout\);

-- Location: FF_X18_Y11_N27
\inst32|inst23|milhar_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|milhar_q[3]~4_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|milhar_q\(3));

-- Location: LCCOMB_X18_Y11_N20
\inst32|inst40|final_cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~9_combout\ = (\inst32|inst23|milhar_q\(3) & (\inst32|inst28|q\(3) & (\inst32|inst28|q\(2) $ (!\inst32|inst23|milhar_q\(2))))) # (!\inst32|inst23|milhar_q\(3) & (!\inst32|inst28|q\(3) & (\inst32|inst28|q\(2) $ 
-- (!\inst32|inst23|milhar_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|milhar_q\(3),
	datab => \inst32|inst28|q\(3),
	datac => \inst32|inst28|q\(2),
	datad => \inst32|inst23|milhar_q\(2),
	combout => \inst32|inst40|final_cont~9_combout\);

-- Location: LCCOMB_X18_Y11_N14
\inst32|inst40|final_cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~10_combout\ = (\inst32|inst28|q\(1) & (\inst32|inst23|milhar_q\(1) & (\inst32|inst23|milhar_q\(0) $ (!\inst32|inst28|q\(0))))) # (!\inst32|inst28|q\(1) & (!\inst32|inst23|milhar_q\(1) & (\inst32|inst23|milhar_q\(0) $ 
-- (!\inst32|inst28|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|q\(1),
	datab => \inst32|inst23|milhar_q\(0),
	datac => \inst32|inst28|q\(0),
	datad => \inst32|inst23|milhar_q\(1),
	combout => \inst32|inst40|final_cont~10_combout\);

-- Location: LCCOMB_X19_Y11_N0
\inst32|inst23|milhar_q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|milhar_q[1]~1_combout\ = (\inst32|inst23|milhar_q[1]~0_combout\ & (!\inst32|inst50|pausa_q~q\ & (\inst32|inst21|comp_flag_q~q\ & !\inst32|inst40|final_cont~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|milhar_q[1]~0_combout\,
	datab => \inst32|inst50|pausa_q~q\,
	datac => \inst32|inst21|comp_flag_q~q\,
	datad => \inst32|inst40|final_cont~15_combout\,
	combout => \inst32|inst23|milhar_q[1]~1_combout\);

-- Location: LCCOMB_X19_Y11_N14
\inst32|inst23|centena_q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|centena_q[1]~4_combout\ = (\inst32|inst23|milhar_q[1]~1_combout\ & (!\inst32|inst23|_~3_combout\ & (\inst32|inst23|centena_q\(0) $ (\inst32|inst23|centena_q\(1))))) # (!\inst32|inst23|milhar_q[1]~1_combout\ & 
-- (((\inst32|inst23|centena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|_~3_combout\,
	datab => \inst32|inst23|centena_q\(0),
	datac => \inst32|inst23|centena_q\(1),
	datad => \inst32|inst23|milhar_q[1]~1_combout\,
	combout => \inst32|inst23|centena_q[1]~4_combout\);

-- Location: FF_X19_Y11_N15
\inst32|inst23|centena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|centena_q[1]~4_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|centena_q\(1));

-- Location: LCCOMB_X19_Y12_N30
\inst32|inst23|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|op_3~1_combout\ = \inst32|inst23|centena_q\(3) $ (((\inst32|inst23|centena_q\(0) & (\inst32|inst23|centena_q\(2) & \inst32|inst23|centena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|centena_q\(0),
	datab => \inst32|inst23|centena_q\(2),
	datac => \inst32|inst23|centena_q\(1),
	datad => \inst32|inst23|centena_q\(3),
	combout => \inst32|inst23|op_3~1_combout\);

-- Location: LCCOMB_X19_Y11_N2
\inst32|inst23|centena_q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|centena_q[3]~3_combout\ = (\inst32|inst23|milhar_q[1]~1_combout\ & (!\inst32|inst23|_~3_combout\ & (\inst32|inst23|op_3~1_combout\))) # (!\inst32|inst23|milhar_q[1]~1_combout\ & (((\inst32|inst23|centena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|_~3_combout\,
	datab => \inst32|inst23|op_3~1_combout\,
	datac => \inst32|inst23|centena_q\(3),
	datad => \inst32|inst23|milhar_q[1]~1_combout\,
	combout => \inst32|inst23|centena_q[3]~3_combout\);

-- Location: FF_X19_Y11_N3
\inst32|inst23|centena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|centena_q[3]~3_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|centena_q\(3));

-- Location: LCCOMB_X19_Y11_N24
\inst32|inst40|final_cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~7_combout\ = (\inst32|inst23|centena_q\(2) & (\inst32|inst27|q\(2) & (\inst32|inst23|centena_q\(3) $ (!\inst32|inst27|q\(3))))) # (!\inst32|inst23|centena_q\(2) & (!\inst32|inst27|q\(2) & (\inst32|inst23|centena_q\(3) $ 
-- (!\inst32|inst27|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|centena_q\(2),
	datab => \inst32|inst23|centena_q\(3),
	datac => \inst32|inst27|q\(3),
	datad => \inst32|inst27|q\(2),
	combout => \inst32|inst40|final_cont~7_combout\);

-- Location: LCCOMB_X19_Y11_N16
\inst32|inst40|final_cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~8_combout\ = (\inst32|inst27|q\(1) & (\inst32|inst23|centena_q\(1) & (\inst32|inst23|centena_q\(0) $ (!\inst32|inst27|q\(0))))) # (!\inst32|inst27|q\(1) & (!\inst32|inst23|centena_q\(1) & (\inst32|inst23|centena_q\(0) $ 
-- (!\inst32|inst27|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|q\(1),
	datab => \inst32|inst23|centena_q\(1),
	datac => \inst32|inst23|centena_q\(0),
	datad => \inst32|inst27|q\(0),
	combout => \inst32|inst40|final_cont~8_combout\);

-- Location: LCCOMB_X17_Y11_N26
\inst32|inst40|final_cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~11_combout\ = (\inst32|inst40|final_cont~9_combout\ & (\inst32|inst40|final_cont~10_combout\ & (\inst32|inst40|final_cont~7_combout\ & \inst32|inst40|final_cont~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst40|final_cont~9_combout\,
	datab => \inst32|inst40|final_cont~10_combout\,
	datac => \inst32|inst40|final_cont~7_combout\,
	datad => \inst32|inst40|final_cont~8_combout\,
	combout => \inst32|inst40|final_cont~11_combout\);

-- Location: LCCOMB_X17_Y11_N10
\inst32|inst40|final_cont~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~14_combout\ = (\inst32|inst21|comp_flag_q~q\ & \inst32|inst40|final_cont~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst21|comp_flag_q~q\,
	datac => \inst32|inst40|final_cont~6_combout\,
	combout => \inst32|inst40|final_cont~14_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst32|inst40|final_cont~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~15_combout\ = (\inst32|inst40|_~0_combout\ & (((\inst32|inst40|final_cont~13_combout\)))) # (!\inst32|inst40|_~0_combout\ & (\inst32|inst40|final_cont~11_combout\ & ((\inst32|inst40|final_cont~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst40|final_cont~11_combout\,
	datab => \inst32|inst40|final_cont~13_combout\,
	datac => \inst32|inst40|_~0_combout\,
	datad => \inst32|inst40|final_cont~14_combout\,
	combout => \inst32|inst40|final_cont~15_combout\);

-- Location: LCCOMB_X18_Y9_N26
\inst32|inst23|unidade_q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|unidade_q[0]~2_combout\ = \inst32|inst23|unidade_q\(0) $ (((\inst32|inst21|comp_flag_q~q\ & (!\inst32|inst50|pausa_q~q\ & !\inst32|inst40|final_cont~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst21|comp_flag_q~q\,
	datab => \inst32|inst50|pausa_q~q\,
	datac => \inst32|inst23|unidade_q\(0),
	datad => \inst32|inst40|final_cont~15_combout\,
	combout => \inst32|inst23|unidade_q[0]~2_combout\);

-- Location: FF_X18_Y9_N27
\inst32|inst23|unidade_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|unidade_q[0]~2_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|unidade_q\(0));

-- Location: LCCOMB_X17_Y9_N0
\inst32|inst23|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|op_1~0_combout\ = \inst32|inst23|unidade_q\(2) $ (((\inst32|inst23|unidade_q\(0) & \inst32|inst23|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|unidade_q\(2),
	datac => \inst32|inst23|unidade_q\(0),
	datad => \inst32|inst23|unidade_q\(1),
	combout => \inst32|inst23|op_1~0_combout\);

-- Location: LCCOMB_X17_Y11_N0
\inst32|inst23|unidade_q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|unidade_q[2]~0_combout\ = (\inst32|inst23|pode_contar~combout\ & (\inst32|inst23|op_1~0_combout\ & ((!\inst32|inst23|_~0_combout\)))) # (!\inst32|inst23|pode_contar~combout\ & (((\inst32|inst23|unidade_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|op_1~0_combout\,
	datab => \inst32|inst23|pode_contar~combout\,
	datac => \inst32|inst23|unidade_q\(2),
	datad => \inst32|inst23|_~0_combout\,
	combout => \inst32|inst23|unidade_q[2]~0_combout\);

-- Location: FF_X17_Y11_N1
\inst32|inst23|unidade_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|unidade_q[2]~0_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|unidade_q\(2));

-- Location: LCCOMB_X18_Y10_N14
\inst32|inst23|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|op_1~1_combout\ = \inst32|inst23|unidade_q\(3) $ (((\inst32|inst23|unidade_q\(2) & (\inst32|inst23|unidade_q\(0) & \inst32|inst23|unidade_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|unidade_q\(2),
	datab => \inst32|inst23|unidade_q\(0),
	datac => \inst32|inst23|unidade_q\(1),
	datad => \inst32|inst23|unidade_q\(3),
	combout => \inst32|inst23|op_1~1_combout\);

-- Location: LCCOMB_X17_Y11_N6
\inst32|inst23|unidade_q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|unidade_q[3]~1_combout\ = (\inst32|inst23|pode_contar~combout\ & (\inst32|inst23|op_1~1_combout\ & ((!\inst32|inst23|_~0_combout\)))) # (!\inst32|inst23|pode_contar~combout\ & (((\inst32|inst23|unidade_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|op_1~1_combout\,
	datab => \inst32|inst23|pode_contar~combout\,
	datac => \inst32|inst23|unidade_q\(3),
	datad => \inst32|inst23|_~0_combout\,
	combout => \inst32|inst23|unidade_q[3]~1_combout\);

-- Location: FF_X17_Y11_N7
\inst32|inst23|unidade_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|unidade_q[3]~1_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|unidade_q\(3));

-- Location: LCCOMB_X17_Y11_N28
\inst32|inst23|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|_~0_combout\ = (\inst32|inst23|unidade_q\(3) & (!\inst32|inst23|unidade_q\(2) & (!\inst32|inst23|unidade_q\(1) & \inst32|inst23|unidade_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|unidade_q\(3),
	datab => \inst32|inst23|unidade_q\(2),
	datac => \inst32|inst23|unidade_q\(1),
	datad => \inst32|inst23|unidade_q\(0),
	combout => \inst32|inst23|_~0_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst32|inst23|centena_q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|centena_q[0]~5_combout\ = \inst32|inst23|centena_q\(0) $ (((\inst32|inst23|_~0_combout\ & (\inst32|inst23|_~1_combout\ & \inst32|inst23|pode_contar~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|_~0_combout\,
	datab => \inst32|inst23|_~1_combout\,
	datac => \inst32|inst23|centena_q\(0),
	datad => \inst32|inst23|pode_contar~combout\,
	combout => \inst32|inst23|centena_q[0]~5_combout\);

-- Location: FF_X17_Y11_N5
\inst32|inst23|centena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|centena_q[0]~5_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|centena_q\(0));

-- Location: LCCOMB_X19_Y12_N0
\inst32|inst23|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|op_3~0_combout\ = \inst32|inst23|centena_q\(2) $ (((\inst32|inst23|centena_q\(0) & \inst32|inst23|centena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|centena_q\(0),
	datac => \inst32|inst23|centena_q\(1),
	datad => \inst32|inst23|centena_q\(2),
	combout => \inst32|inst23|op_3~0_combout\);

-- Location: LCCOMB_X19_Y11_N28
\inst32|inst23|centena_q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|centena_q[2]~2_combout\ = (\inst32|inst23|milhar_q[1]~1_combout\ & (\inst32|inst23|op_3~0_combout\ & (!\inst32|inst23|_~3_combout\))) # (!\inst32|inst23|milhar_q[1]~1_combout\ & (((\inst32|inst23|centena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|op_3~0_combout\,
	datab => \inst32|inst23|_~3_combout\,
	datac => \inst32|inst23|centena_q\(2),
	datad => \inst32|inst23|milhar_q[1]~1_combout\,
	combout => \inst32|inst23|centena_q[2]~2_combout\);

-- Location: FF_X19_Y11_N29
\inst32|inst23|centena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst31|aux_tff~clkctrl_outclk\,
	d => \inst32|inst23|centena_q[2]~2_combout\,
	clrn => \inst32|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst23|centena_q\(2));

-- Location: LCCOMB_X19_Y11_N12
\inst32|inst23|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst23|_~3_combout\ = (!\inst32|inst23|centena_q\(2) & (!\inst32|inst23|centena_q\(1) & (\inst32|inst23|centena_q\(0) & \inst32|inst23|centena_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|centena_q\(2),
	datab => \inst32|inst23|centena_q\(1),
	datac => \inst32|inst23|centena_q\(0),
	datad => \inst32|inst23|centena_q\(3),
	combout => \inst32|inst23|_~3_combout\);

-- Location: LCCOMB_X17_Y11_N16
\inst32|inst40|final_cont~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst40|final_cont~13_combout\ = (\inst32|inst21|comp_flag_q~q\ & (\inst32|inst23|_~3_combout\ & (\inst32|inst23|milhar_q[1]~0_combout\ & \inst32|inst23|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst21|comp_flag_q~q\,
	datab => \inst32|inst23|_~3_combout\,
	datac => \inst32|inst23|milhar_q[1]~0_combout\,
	datad => \inst32|inst23|_~2_combout\,
	combout => \inst32|inst40|final_cont~13_combout\);

-- Location: FF_X17_Y11_N3
\inst7|flag_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst40|final_cont~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|flag_reg\(4));

-- Location: LCCOMB_X17_Y11_N12
\inst7|flag_pulse[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|flag_pulse\(4) = (!\inst7|flag_reg\(4) & ((\inst32|inst40|final_cont~12_combout\) # ((\inst32|inst40|final_cont~13_combout\ & \inst32|inst40|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst40|final_cont~13_combout\,
	datab => \inst7|flag_reg\(4),
	datac => \inst32|inst40|_~0_combout\,
	datad => \inst32|inst40|final_cont~12_combout\,
	combout => \inst7|flag_pulse\(4));

-- Location: LCCOMB_X17_Y11_N22
\inst1|select_q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|select_q[1]~7_combout\ = (!\inst7|flag_pulse\(4) & ((\inst23|reset_c_reg\(4)) # (!\inst32|inst50|resetcont_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|reset_c_reg\(4),
	datab => \inst32|inst50|resetcont_q~q\,
	datad => \inst7|flag_pulse\(4),
	combout => \inst1|select_q[1]~7_combout\);

-- Location: LCCOMB_X24_Y11_N16
\inst1|_~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~26_combout\ = (!\inst1|reset_c_pulse\(3) & (\inst1|select_q[1]~6_combout\ & (!\inst7|flag_pulse\(3) & \inst1|select_q[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reset_c_pulse\(3),
	datab => \inst1|select_q[1]~6_combout\,
	datac => \inst7|flag_pulse\(3),
	datad => \inst1|select_q[1]~7_combout\,
	combout => \inst1|_~26_combout\);

-- Location: LCCOMB_X24_Y11_N4
\inst1|crono_q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|crono_q[3]~3_combout\ = (\inst1|_~26_combout\ & ((\inst32|inst31|_~0_combout\ & ((\inst1|crono_q\(3)))) # (!\inst32|inst31|_~0_combout\ & (\inst1|_~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~0_combout\,
	datab => \inst1|_~29_combout\,
	datac => \inst1|crono_q\(3),
	datad => \inst1|_~26_combout\,
	combout => \inst1|crono_q[3]~3_combout\);

-- Location: FF_X24_Y11_N5
\inst1|crono_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|crono_q[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|crono_q\(3));

-- Location: LCCOMB_X23_Y13_N22
\inst15|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~1_combout\ = (!\inst1|crono_q\(2) & (\inst1|crono_q\(3) & !\inst1|crono_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|crono_q\(2),
	datac => \inst1|crono_q\(3),
	datad => \inst1|crono_q\(1),
	combout => \inst15|_~1_combout\);

-- Location: LCCOMB_X24_Y11_N8
\inst30|inst50|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst50|_~4_combout\ = (\inst15|_~1_combout\ & (\inst30|inst39|btn2_reg~q\ & (\inst25|inst50|_~0_combout\ & !\inst15|deb1_out_c3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~1_combout\,
	datab => \inst30|inst39|btn2_reg~q\,
	datac => \inst25|inst50|_~0_combout\,
	datad => \inst15|deb1_out_c3~1_combout\,
	combout => \inst30|inst50|_~4_combout\);

-- Location: FF_X24_Y11_N9
\inst30|inst50|resetcont_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst50|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst50|resetcont_q~q\);

-- Location: LCCOMB_X21_Y11_N20
\inst1|_~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~34_combout\ = (\inst23|q\(1) & (((\inst23|reset_c_reg\(3))) # (!\inst30|inst50|resetcont_q~q\))) # (!\inst23|q\(1) & (\inst23|q\(0) & ((\inst23|reset_c_reg\(3)) # (!\inst30|inst50|resetcont_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(1),
	datab => \inst30|inst50|resetcont_q~q\,
	datac => \inst23|reset_c_reg\(3),
	datad => \inst23|q\(0),
	combout => \inst1|_~34_combout\);

-- Location: LCCOMB_X24_Y11_N20
\inst1|_~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~27_combout\ = (\inst1|_~34_combout\ & (\inst1|select_q[1]~6_combout\ & (!\inst7|flag_pulse\(3) & \inst1|select_q[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|_~34_combout\,
	datab => \inst1|select_q[1]~6_combout\,
	datac => \inst7|flag_pulse\(3),
	datad => \inst1|select_q[1]~7_combout\,
	combout => \inst1|_~27_combout\);

-- Location: LCCOMB_X25_Y15_N18
\inst1|_~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~32_combout\ = (!\inst1|reset_c_pulse\(3) & (!\inst23|q\(0) & (!\inst23|q\(1) & \inst1|select_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reset_c_pulse\(3),
	datab => \inst23|q\(0),
	datac => \inst23|q\(1),
	datad => \inst1|select_q\(0),
	combout => \inst1|_~32_combout\);

-- Location: LCCOMB_X24_Y11_N10
\inst1|_~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~28_combout\ = (\inst1|_~32_combout\ & (!\inst7|flag_pulse\(3) & (\inst1|select_q[1]~7_combout\ & \inst1|select_q[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|_~32_combout\,
	datab => \inst7|flag_pulse\(3),
	datac => \inst1|select_q[1]~7_combout\,
	datad => \inst1|select_q[1]~6_combout\,
	combout => \inst1|_~28_combout\);

-- Location: LCCOMB_X24_Y11_N2
\inst1|crono_q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|crono_q[2]~2_combout\ = (\inst1|select_q\(1) & (\inst1|_~27_combout\ & (\inst1|crono_q\(2)))) # (!\inst1|select_q\(1) & ((\inst1|_~28_combout\) # ((\inst1|_~27_combout\ & \inst1|crono_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|select_q\(1),
	datab => \inst1|_~27_combout\,
	datac => \inst1|crono_q\(2),
	datad => \inst1|_~28_combout\,
	combout => \inst1|crono_q[2]~2_combout\);

-- Location: FF_X24_Y11_N3
\inst1|crono_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|crono_q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|crono_q\(2));

-- Location: LCCOMB_X21_Y13_N24
\inst15|deb1_out_c2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|deb1_out_c2~1_combout\ = (\inst1|crono_q\(2) & (\inst20|inst|ff3~q\ & !\inst1|crono_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|crono_q\(2),
	datac => \inst20|inst|ff3~q\,
	datad => \inst1|crono_q\(1),
	combout => \inst15|deb1_out_c2~1_combout\);

-- Location: FF_X21_Y13_N1
\inst25|inst39|btn2_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|deb1_out_c2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst39|btn2_reg~q\);

-- Location: LCCOMB_X25_Y10_N8
\inst25|inst50|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst50|_~2_combout\ = (\inst25|inst39|btn2_reg~q\ & (\inst25|inst50|_~1_combout\ & !\inst15|deb1_out_c2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst39|btn2_reg~q\,
	datac => \inst25|inst50|_~1_combout\,
	datad => \inst15|deb1_out_c2~1_combout\,
	combout => \inst25|inst50|_~2_combout\);

-- Location: FF_X25_Y10_N9
\inst25|inst50|resetcont_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst50|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst50|resetcont_q~q\);

-- Location: LCCOMB_X25_Y10_N18
\inst1|reset_c_pulse[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reset_c_pulse\(2) = (\inst25|inst50|resetcont_q~q\ & !\inst23|reset_c_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|inst50|resetcont_q~q\,
	datad => \inst23|reset_c_reg\(2),
	combout => \inst1|reset_c_pulse\(2));

-- Location: LCCOMB_X21_Y11_N24
\inst1|select_q[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|select_q[0]~12_combout\ = (!\inst13|inst23|reset_pulse~combout\ & (!\inst7|flag_pulse\(1) & ((\inst1|reset_c_pulse\(2)) # (\inst7|flag_pulse\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|reset_pulse~combout\,
	datab => \inst7|flag_pulse\(1),
	datac => \inst1|reset_c_pulse\(2),
	datad => \inst7|flag_pulse\(2),
	combout => \inst1|select_q[0]~12_combout\);

-- Location: LCCOMB_X21_Y11_N30
\inst1|_~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~35_combout\ = (\inst23|q\(1)) # ((\inst23|q\(0)) # ((\inst30|inst50|resetcont_q~q\ & !\inst23|reset_c_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(1),
	datab => \inst30|inst50|resetcont_q~q\,
	datac => \inst23|reset_c_reg\(3),
	datad => \inst23|q\(0),
	combout => \inst1|_~35_combout\);

-- Location: LCCOMB_X21_Y11_N4
\inst1|_~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~31_combout\ = (\inst7|flag_pulse\(3)) # ((\inst1|_~35_combout\) # ((!\inst1|select_q[1]~6_combout\) # (!\inst1|select_q[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|flag_pulse\(3),
	datab => \inst1|_~35_combout\,
	datac => \inst1|select_q[1]~7_combout\,
	datad => \inst1|select_q[1]~6_combout\,
	combout => \inst1|_~31_combout\);

-- Location: LCCOMB_X21_Y11_N2
\inst1|_~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~33_combout\ = (\inst1|reset_c_pulse\(2)) # ((\inst13|inst23|reset_pulse~combout\) # ((!\inst23|reset_c_reg\(3) & \inst30|inst50|resetcont_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reset_c_pulse\(2),
	datab => \inst23|reset_c_reg\(3),
	datac => \inst30|inst50|resetcont_q~q\,
	datad => \inst13|inst23|reset_pulse~combout\,
	combout => \inst1|_~33_combout\);

-- Location: LCCOMB_X21_Y11_N6
\inst1|_~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|_~30_combout\ = (\inst1|_~33_combout\) # ((\inst7|flag_pulse\(1)) # ((\inst7|flag_pulse\(3)) # (\inst7|flag_pulse\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|_~33_combout\,
	datab => \inst7|flag_pulse\(1),
	datac => \inst7|flag_pulse\(3),
	datad => \inst7|flag_pulse\(2),
	combout => \inst1|_~30_combout\);

-- Location: LCCOMB_X21_Y11_N18
\inst1|select_q[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|select_q[0]~11_combout\ = (!\inst1|_~30_combout\ & (((\inst32|inst31|_~0_combout\ & \inst1|select_q\(0))) # (!\inst1|select_q[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~0_combout\,
	datab => \inst1|select_q\(0),
	datac => \inst1|select_q[1]~7_combout\,
	datad => \inst1|_~30_combout\,
	combout => \inst1|select_q[0]~11_combout\);

-- Location: LCCOMB_X21_Y11_N14
\inst1|select_q[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|select_q[0]~13_combout\ = (\inst1|select_q[0]~12_combout\) # ((\inst1|select_q[0]~11_combout\) # ((\inst1|select_q[0]~15_combout\ & !\inst1|_~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|select_q[0]~15_combout\,
	datab => \inst1|select_q[0]~12_combout\,
	datac => \inst1|_~31_combout\,
	datad => \inst1|select_q[0]~11_combout\,
	combout => \inst1|select_q[0]~13_combout\);

-- Location: FF_X21_Y11_N15
\inst1|select_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|select_q[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|select_q\(0));

-- Location: LCCOMB_X21_Y11_N22
\inst1|prox_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|prox_pulse~combout\ = (!\inst20|inst1|ff3~q\ & \inst7|deb_reg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|inst1|ff3~q\,
	datac => \inst7|deb_reg\(2),
	combout => \inst1|prox_pulse~combout\);

-- Location: LCCOMB_X21_Y11_N26
\inst1|select_q[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|select_q[1]~9_combout\ = \inst1|select_q\(1) $ (((\inst1|select_q\(0) & (\inst1|prox_pulse~combout\)) # (!\inst1|select_q\(0) & (!\inst1|prox_pulse~combout\ & \inst1|ant_pulse~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|select_q\(0),
	datab => \inst1|select_q\(1),
	datac => \inst1|prox_pulse~combout\,
	datad => \inst1|ant_pulse~combout\,
	combout => \inst1|select_q[1]~9_combout\);

-- Location: LCCOMB_X21_Y11_N8
\inst1|select_q[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|select_q[1]~14_combout\ = (\inst1|select_q[1]~6_combout\ & ((\inst7|flag_pulse\(3)) # ((\inst30|inst50|resetcont_q~q\ & !\inst23|reset_c_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst50|resetcont_q~q\,
	datab => \inst23|reset_c_reg\(3),
	datac => \inst7|flag_pulse\(3),
	datad => \inst1|select_q[1]~6_combout\,
	combout => \inst1|select_q[1]~14_combout\);

-- Location: LCCOMB_X21_Y11_N12
\inst1|select_q[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|select_q[1]~8_combout\ = (!\inst1|_~30_combout\ & (((\inst32|inst31|_~0_combout\ & \inst1|select_q\(1))) # (!\inst1|select_q[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~0_combout\,
	datab => \inst1|select_q\(1),
	datac => \inst1|select_q[1]~7_combout\,
	datad => \inst1|_~30_combout\,
	combout => \inst1|select_q[1]~8_combout\);

-- Location: LCCOMB_X21_Y11_N16
\inst1|select_q[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|select_q[1]~10_combout\ = (\inst1|select_q[1]~14_combout\) # ((\inst1|select_q[1]~8_combout\) # ((\inst1|select_q[1]~9_combout\ & !\inst1|_~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|select_q[1]~9_combout\,
	datab => \inst1|_~31_combout\,
	datac => \inst1|select_q[1]~14_combout\,
	datad => \inst1|select_q[1]~8_combout\,
	combout => \inst1|select_q[1]~10_combout\);

-- Location: FF_X21_Y11_N17
\inst1|select_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|select_q[1]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|select_q\(1));

-- Location: LCCOMB_X25_Y15_N0
\inst1|crono_q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|crono_q[1]~0_combout\ = (!\inst1|select_q\(1) & (!\inst23|q\(0) & (!\inst23|q\(1) & !\inst1|select_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|select_q\(1),
	datab => \inst23|q\(0),
	datac => \inst23|q\(1),
	datad => \inst1|select_q\(0),
	combout => \inst1|crono_q[1]~0_combout\);

-- Location: LCCOMB_X24_Y11_N12
\inst1|crono_q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|crono_q[1]~1_combout\ = (\inst1|_~26_combout\ & ((\inst1|crono_q[1]~0_combout\) # ((\inst32|inst31|_~0_combout\ & \inst1|crono_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~0_combout\,
	datab => \inst1|crono_q[1]~0_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst1|_~26_combout\,
	combout => \inst1|crono_q[1]~1_combout\);

-- Location: FF_X24_Y11_N13
\inst1|crono_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|crono_q[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|crono_q\(1));

-- Location: LCCOMB_X24_Y11_N14
\inst1|crono_q[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|crono_q[4]~4_combout\ = (\inst1|select_q\(1) & ((\inst1|_~28_combout\) # ((\inst1|_~27_combout\ & \inst1|crono_q\(4))))) # (!\inst1|select_q\(1) & (\inst1|_~27_combout\ & (\inst1|crono_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|select_q\(1),
	datab => \inst1|_~27_combout\,
	datac => \inst1|crono_q\(4),
	datad => \inst1|_~28_combout\,
	combout => \inst1|crono_q[4]~4_combout\);

-- Location: FF_X24_Y11_N15
\inst1|crono_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst1|crono_q[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|crono_q\(4));

-- Location: LCCOMB_X24_Y11_N24
\inst15|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|_~2_combout\ = (!\inst1|crono_q\(1) & (!\inst1|crono_q\(3) & (\inst1|crono_q\(4) & !\inst1|crono_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst1|crono_q\(3),
	datac => \inst1|crono_q\(4),
	datad => \inst1|crono_q\(2),
	combout => \inst15|_~2_combout\);

-- Location: LCCOMB_X18_Y13_N22
\inst32|inst50|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst50|_~2_combout\ = (\inst25|inst50|_~0_combout\ & (\inst15|_~2_combout\ & (\inst32|inst39|btn2_reg~q\ & !\inst20|inst|ff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst50|_~0_combout\,
	datab => \inst15|_~2_combout\,
	datac => \inst32|inst39|btn2_reg~q\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst32|inst50|_~2_combout\);

-- Location: FF_X18_Y13_N23
\inst32|inst50|resetcont_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|inst50|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst50|resetcont_q~q\);

-- Location: LCCOMB_X18_Y13_N28
\inst1|reset_c_pulse[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|reset_c_pulse\(4) = (\inst32|inst50|resetcont_q~q\ & !\inst23|reset_c_reg\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst32|inst50|resetcont_q~q\,
	datad => \inst23|reset_c_reg\(4),
	combout => \inst1|reset_c_pulse\(4));

-- Location: LCCOMB_X22_Y11_N14
\inst7|perm_alarme_q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|perm_alarme_q[1]~4_combout\ = (!\inst7|flag_pulse\(3) & !\inst7|flag_pulse\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|flag_pulse\(3),
	datad => \inst7|flag_pulse\(4),
	combout => \inst7|perm_alarme_q[1]~4_combout\);

-- Location: LCCOMB_X23_Y11_N0
\inst23|reset_geral_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|reset_geral_pulse~combout\ = (\inst1|reset_c_pulse\(4)) # ((\inst1|reset_c_pulse\(3)) # ((!\inst7|perm_alarme_q[1]~4_combout\) # (!\inst1|select_q[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|reset_c_pulse\(4),
	datab => \inst1|reset_c_pulse\(3),
	datac => \inst1|select_q[1]~6_combout\,
	datad => \inst7|perm_alarme_q[1]~4_combout\,
	combout => \inst23|reset_geral_pulse~combout\);

-- Location: LCCOMB_X23_Y11_N20
\inst23|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst23|q[0]~0_combout\ = (!\inst23|reset_geral_pulse~combout\ & (\inst23|q\(0) $ (((\inst23|up_pulse~combout\) # (\inst23|down_pulse~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|up_pulse~combout\,
	datab => \inst23|down_pulse~combout\,
	datac => \inst23|q\(0),
	datad => \inst23|reset_geral_pulse~combout\,
	combout => \inst23|q[0]~0_combout\);

-- Location: FF_X23_Y11_N21
\inst23|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst23|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|q\(0));

-- Location: LCCOMB_X22_Y13_N16
\inst13|inst31|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|_~1_combout\ = (\inst23|q\(0) & (\inst1|crono_q\(1) & \inst23|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(0),
	datac => \inst1|crono_q\(1),
	datad => \inst23|q\(1),
	combout => \inst13|inst31|_~1_combout\);

-- Location: LCCOMB_X22_Y13_N26
\inst15|deb2_out_c1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|deb2_out_c1~1_combout\ = (\inst1|crono_q\(1) & \inst20|inst1|ff3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|crono_q\(1),
	datad => \inst20|inst1|ff3~q\,
	combout => \inst15|deb2_out_c1~1_combout\);

-- Location: FF_X22_Y13_N29
\inst13|inst39|btn1_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|deb2_out_c1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst39|btn1_reg~q\);

-- Location: LCCOMB_X22_Y13_N28
\inst13|inst39|up_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst39|up_pulse~0_combout\ = (\inst13|inst39|btn1_reg~q\ & ((!\inst20|inst1|ff3~q\) # (!\inst1|crono_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|crono_q\(1),
	datac => \inst13|inst39|btn1_reg~q\,
	datad => \inst20|inst1|ff3~q\,
	combout => \inst13|inst39|up_pulse~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\inst13|inst50|pausa_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst50|pausa_q~0_combout\ = (\inst13|inst31|_~1_combout\ & (\inst13|inst50|pausa_q~q\ $ (\inst13|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst31|_~1_combout\,
	datac => \inst13|inst50|pausa_q~q\,
	datad => \inst13|inst39|up_pulse~0_combout\,
	combout => \inst13|inst50|pausa_q~0_combout\);

-- Location: FF_X22_Y13_N7
\inst13|inst50|pausa_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst50|pausa_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst50|pausa_q~q\);

-- Location: FF_X23_Y13_N3
\inst13|inst21|menu4_ativo_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst13|inst31|_~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst21|menu4_ativo_reg~q\);

-- Location: LCCOMB_X22_Y13_N14
\inst13|inst21|comp_flag_q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst21|comp_flag_q~3_combout\ = (!\inst13|inst23|reset_pulse~combout\ & ((\inst23|q\(0) $ (!\inst23|q\(1))) # (!\inst1|crono_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(0),
	datab => \inst1|crono_q\(1),
	datac => \inst13|inst23|reset_pulse~combout\,
	datad => \inst23|q\(1),
	combout => \inst13|inst21|comp_flag_q~3_combout\);

-- Location: LCCOMB_X23_Y13_N12
\inst13|inst21|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst21|_~0_combout\ = (\inst13|inst21|comp_flag_q~3_combout\ & ((\inst13|inst21|menu4_visitado_q~q\) # ((\inst13|inst31|_~1_combout\ & !\inst13|inst21|menu4_ativo_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|_~1_combout\,
	datab => \inst13|inst21|menu4_ativo_reg~q\,
	datac => \inst13|inst21|menu4_visitado_q~q\,
	datad => \inst13|inst21|comp_flag_q~3_combout\,
	combout => \inst13|inst21|_~0_combout\);

-- Location: FF_X23_Y13_N13
\inst13|inst21|menu4_visitado_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst21|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst21|menu4_visitado_q~q\);

-- Location: LCCOMB_X23_Y13_N24
\inst13|inst21|comp_flag_q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst21|comp_flag_q~2_combout\ = (\inst13|inst21|comp_flag_q~3_combout\ & ((\inst13|inst21|menu4_visitado_q~q\) # (\inst13|inst21|comp_flag_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst21|menu4_visitado_q~q\,
	datac => \inst13|inst21|comp_flag_q~q\,
	datad => \inst13|inst21|comp_flag_q~3_combout\,
	combout => \inst13|inst21|comp_flag_q~2_combout\);

-- Location: FF_X23_Y13_N25
\inst13|inst21|comp_flag_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst21|comp_flag_q~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst21|comp_flag_q~q\);

-- Location: LCCOMB_X23_Y13_N2
\inst13|inst23|pode_contar~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|pode_contar~2_combout\ = (!\inst13|inst50|pausa_q~q\ & \inst13|inst21|comp_flag_q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst50|pausa_q~q\,
	datad => \inst13|inst21|comp_flag_q~q\,
	combout => \inst13|inst23|pode_contar~2_combout\);

-- Location: LCCOMB_X22_Y15_N6
\inst13|inst37|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|_~3_combout\ = ((\inst23|q\(1)) # (!\inst1|crono_q\(1))) # (!\inst23|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(0),
	datab => \inst23|q\(1),
	datad => \inst1|crono_q\(1),
	combout => \inst13|inst37|_~3_combout\);

-- Location: LCCOMB_X21_Y15_N20
\inst15|menu_out_c1[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|menu_out_c1[0]~2_combout\ = (\inst23|q\(0) & \inst1|crono_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|q\(0),
	datad => \inst1|crono_q\(1),
	combout => \inst15|menu_out_c1[0]~2_combout\);

-- Location: LCCOMB_X22_Y15_N0
\inst15|menu_out_c1[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|menu_out_c1[1]~3_combout\ = (\inst23|q\(1) & \inst1|crono_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|q\(1),
	datad => \inst1|crono_q\(1),
	combout => \inst15|menu_out_c1[1]~3_combout\);

-- Location: LCCOMB_X22_Y13_N18
\inst13|inst39|q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst39|q[1]~0_combout\ = (\inst15|deb2_out_c1~1_combout\ & (((\inst15|deb1_out_c1~1_combout\) # (!\inst13|inst39|btn2_reg~q\)))) # (!\inst15|deb2_out_c1~1_combout\ & (!\inst13|inst39|btn1_reg~q\ & ((\inst15|deb1_out_c1~1_combout\) # 
-- (!\inst13|inst39|btn2_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|deb2_out_c1~1_combout\,
	datab => \inst13|inst39|btn1_reg~q\,
	datac => \inst15|deb1_out_c1~1_combout\,
	datad => \inst13|inst39|btn2_reg~q\,
	combout => \inst13|inst39|q[1]~0_combout\);

-- Location: LCCOMB_X22_Y13_N0
\inst13|inst39|q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst39|q[0]~1_combout\ = \inst13|inst39|q\(0) $ (((\inst15|menu_out_c1[0]~2_combout\ & (!\inst15|menu_out_c1[1]~3_combout\ & !\inst13|inst39|q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|menu_out_c1[0]~2_combout\,
	datab => \inst15|menu_out_c1[1]~3_combout\,
	datac => \inst13|inst39|q\(0),
	datad => \inst13|inst39|q[1]~0_combout\,
	combout => \inst13|inst39|q[0]~1_combout\);

-- Location: FF_X22_Y13_N1
\inst13|inst39|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst39|q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst39|q\(0));

-- Location: LCCOMB_X22_Y15_N14
\inst13|inst39|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst39|op_1~0_combout\ = \inst13|inst39|q\(1) $ (\inst13|inst39|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst39|q\(1),
	datad => \inst13|inst39|q\(0),
	combout => \inst13|inst39|op_1~0_combout\);

-- Location: LCCOMB_X22_Y15_N4
\inst13|inst39|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst39|q[1]~2_combout\ = (\inst13|inst39|op_1~0_combout\ & (((\inst13|inst39|up_pulse~0_combout\)))) # (!\inst13|inst39|op_1~0_combout\ & (\inst13|inst39|btn2_reg~q\ & (!\inst13|inst39|up_pulse~0_combout\ & !\inst15|deb1_out_c1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst39|btn2_reg~q\,
	datab => \inst13|inst39|op_1~0_combout\,
	datac => \inst13|inst39|up_pulse~0_combout\,
	datad => \inst15|deb1_out_c1~1_combout\,
	combout => \inst13|inst39|q[1]~2_combout\);

-- Location: LCCOMB_X22_Y15_N24
\inst13|inst39|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst39|q[1]~3_combout\ = (\inst13|inst37|_~3_combout\ & (((\inst13|inst39|q\(1))))) # (!\inst13|inst37|_~3_combout\ & ((\inst13|inst39|q[1]~2_combout\) # ((\inst13|inst39|q\(1) & \inst13|inst39|q[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|_~3_combout\,
	datab => \inst13|inst39|q[1]~2_combout\,
	datac => \inst13|inst39|q\(1),
	datad => \inst13|inst39|q[1]~0_combout\,
	combout => \inst13|inst39|q[1]~3_combout\);

-- Location: FF_X22_Y15_N25
\inst13|inst39|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst39|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst39|q\(1));

-- Location: LCCOMB_X22_Y15_N10
\inst13|inst37|aux_dig[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|aux_dig[1]~3_combout\ = (\inst13|inst37|_~7_combout\) # ((!\inst13|inst37|_~3_combout\ & (!\inst13|inst39|q\(1) & !\inst13|inst39|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|_~3_combout\,
	datab => \inst13|inst39|q\(1),
	datac => \inst13|inst37|_~7_combout\,
	datad => \inst13|inst39|q\(0),
	combout => \inst13|inst37|aux_dig[1]~3_combout\);

-- Location: FF_X22_Y15_N11
\inst13|inst37|aux_dig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst37|aux_dig[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst37|aux_dig\(1));

-- Location: LCCOMB_X22_Y15_N26
\inst13|inst37|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|_~7_combout\ = (\inst1|crono_q\(1) & (\inst23|q\(1) & (!\inst23|q\(0) & \inst13|inst37|aux_dig\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst23|q\(1),
	datac => \inst23|q\(0),
	datad => \inst13|inst37|aux_dig\(1),
	combout => \inst13|inst37|_~7_combout\);

-- Location: FF_X22_Y15_N27
\inst13|inst37|digsel_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst37|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst37|digsel_q\(1));

-- Location: LCCOMB_X21_Y9_N18
\inst13|inst25|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|_~1_combout\ = (\inst13|inst37|digsel_q\(1) & (\inst13|inst39|btn2_reg~q\ & ((!\inst20|inst|ff3~q\) # (!\inst1|crono_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst13|inst37|digsel_q\(1),
	datac => \inst13|inst39|btn2_reg~q\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst13|inst25|_~1_combout\);

-- Location: FF_X22_Y12_N1
\inst13|inst22|menu_in_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst15|menu_out_c1[1]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst22|menu_in_reg\(1));

-- Location: LCCOMB_X22_Y12_N0
\inst13|inst22|reset_cont~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst22|reset_cont~0_combout\ = (\inst1|crono_q\(1) & (\inst23|q\(0) & (!\inst13|inst22|menu_in_reg\(1) & !\inst23|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst23|q\(0),
	datac => \inst13|inst22|menu_in_reg\(1),
	datad => \inst23|q\(1),
	combout => \inst13|inst22|reset_cont~0_combout\);

-- Location: LCCOMB_X22_Y15_N12
\inst13|inst22|menu_in_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst22|menu_in_reg[0]~feeder_combout\ = \inst15|menu_out_c1[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst15|menu_out_c1[0]~2_combout\,
	combout => \inst13|inst22|menu_in_reg[0]~feeder_combout\);

-- Location: FF_X22_Y15_N13
\inst13|inst22|menu_in_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst22|menu_in_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst22|menu_in_reg\(0));

-- Location: LCCOMB_X22_Y15_N18
\inst13|inst22|reset_cont\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst22|reset_cont~combout\ = (\inst13|inst22|reset_cont~0_combout\ & !\inst13|inst22|menu_in_reg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst22|reset_cont~0_combout\,
	datad => \inst13|inst22|menu_in_reg\(0),
	combout => \inst13|inst22|reset_cont~combout\);

-- Location: FF_X22_Y15_N19
\inst13|inst25|reset_novo_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst22|reset_cont~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst25|reset_novo_reg~q\);

-- Location: LCCOMB_X22_Y12_N10
\inst13|inst23|reset_final_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|reset_final_pulse~combout\ = (\inst13|inst23|reset_pulse~combout\) # ((!\inst13|inst25|reset_novo_reg~q\ & (!\inst13|inst22|menu_in_reg\(0) & \inst13|inst22|reset_cont~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|reset_pulse~combout\,
	datab => \inst13|inst25|reset_novo_reg~q\,
	datac => \inst13|inst22|menu_in_reg\(0),
	datad => \inst13|inst22|reset_cont~0_combout\,
	combout => \inst13|inst23|reset_final_pulse~combout\);

-- Location: LCCOMB_X21_Y9_N14
\inst13|inst25|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|q[3]~1_combout\ = (!\inst13|inst23|reset_final_pulse~combout\ & ((!\inst13|inst39|up_pulse~0_combout\) # (!\inst13|inst37|digsel_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|reset_final_pulse~combout\,
	datab => \inst13|inst37|digsel_q\(1),
	datad => \inst13|inst39|up_pulse~0_combout\,
	combout => \inst13|inst25|q[3]~1_combout\);

-- Location: LCCOMB_X21_Y9_N22
\inst13|inst25|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|op_1~0_combout\ = \inst13|inst25|q\(3) $ (((\inst13|inst25|q\(2) & (\inst13|inst25|q\(0) & \inst13|inst25|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|q\(2),
	datab => \inst13|inst25|q\(3),
	datac => \inst13|inst25|q\(0),
	datad => \inst13|inst25|q\(1),
	combout => \inst13|inst25|op_1~0_combout\);

-- Location: LCCOMB_X21_Y9_N4
\inst13|inst25|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|op_2~0_combout\ = (!\inst13|inst25|q\(0) & !\inst13|inst25|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst25|q\(0),
	datad => \inst13|inst25|q\(1),
	combout => \inst13|inst25|op_2~0_combout\);

-- Location: LCCOMB_X21_Y9_N28
\inst13|inst25|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|q[3]~0_combout\ = \inst13|inst25|q\(3) $ (((!\inst13|inst25|q\(2) & (\inst13|inst25|op_2~0_combout\ & \inst13|inst25|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|q\(2),
	datab => \inst13|inst25|q\(3),
	datac => \inst13|inst25|op_2~0_combout\,
	datad => \inst13|inst25|_~1_combout\,
	combout => \inst13|inst25|q[3]~0_combout\);

-- Location: LCCOMB_X21_Y9_N20
\inst13|inst25|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|q[3]~2_combout\ = (\inst13|inst25|op_1~0_combout\ & ((\inst13|inst25|_~3_combout\) # ((\inst13|inst25|q[3]~0_combout\ & \inst13|inst25|q[3]~1_combout\)))) # (!\inst13|inst25|op_1~0_combout\ & (\inst13|inst25|q[3]~0_combout\ & 
-- (\inst13|inst25|q[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|op_1~0_combout\,
	datab => \inst13|inst25|q[3]~0_combout\,
	datac => \inst13|inst25|q[3]~1_combout\,
	datad => \inst13|inst25|_~3_combout\,
	combout => \inst13|inst25|q[3]~2_combout\);

-- Location: FF_X21_Y9_N21
\inst13|inst25|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst25|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst25|q\(3));

-- Location: LCCOMB_X21_Y9_N8
\inst13|inst25|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|_~2_combout\ = (\inst13|inst25|q\(2)) # (((\inst13|inst25|q\(1)) # (!\inst13|inst25|q\(0))) # (!\inst13|inst25|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|q\(2),
	datab => \inst13|inst25|q\(3),
	datac => \inst13|inst25|q\(0),
	datad => \inst13|inst25|q\(1),
	combout => \inst13|inst25|_~2_combout\);

-- Location: LCCOMB_X21_Y9_N2
\inst13|inst25|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|_~3_combout\ = (!\inst13|inst23|reset_final_pulse~combout\ & (\inst13|inst37|digsel_q\(1) & (\inst13|inst25|_~2_combout\ & \inst13|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|reset_final_pulse~combout\,
	datab => \inst13|inst37|digsel_q\(1),
	datac => \inst13|inst25|_~2_combout\,
	datad => \inst13|inst39|up_pulse~0_combout\,
	combout => \inst13|inst25|_~3_combout\);

-- Location: LCCOMB_X21_Y9_N26
\inst13|inst25|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|q[0]~7_combout\ = (\inst13|inst25|q\(0) & (!\inst13|inst25|_~1_combout\ & (\inst13|inst25|q[3]~1_combout\))) # (!\inst13|inst25|q\(0) & ((\inst13|inst25|_~3_combout\) # ((\inst13|inst25|_~1_combout\ & \inst13|inst25|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|_~1_combout\,
	datab => \inst13|inst25|q[3]~1_combout\,
	datac => \inst13|inst25|q\(0),
	datad => \inst13|inst25|_~3_combout\,
	combout => \inst13|inst25|q[0]~7_combout\);

-- Location: FF_X21_Y9_N27
\inst13|inst25|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst25|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst25|q\(0));

-- Location: LCCOMB_X21_Y9_N6
\inst13|inst25|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|op_1~2_combout\ = \inst13|inst25|q\(0) $ (\inst13|inst25|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst25|q\(0),
	datad => \inst13|inst25|q\(1),
	combout => \inst13|inst25|op_1~2_combout\);

-- Location: LCCOMB_X21_Y9_N0
\inst13|inst25|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|q[1]~5_combout\ = (\inst13|inst25|_~1_combout\ & (!\inst13|inst25|_~0_combout\ & (\inst13|inst25|q\(0) $ (!\inst13|inst25|q\(1))))) # (!\inst13|inst25|_~1_combout\ & (((\inst13|inst25|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|q\(0),
	datab => \inst13|inst25|q\(1),
	datac => \inst13|inst25|_~0_combout\,
	datad => \inst13|inst25|_~1_combout\,
	combout => \inst13|inst25|q[1]~5_combout\);

-- Location: LCCOMB_X21_Y9_N24
\inst13|inst25|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|q[1]~6_combout\ = (\inst13|inst25|op_1~2_combout\ & ((\inst13|inst25|_~3_combout\) # ((\inst13|inst25|q[1]~5_combout\ & \inst13|inst25|q[3]~1_combout\)))) # (!\inst13|inst25|op_1~2_combout\ & (\inst13|inst25|q[1]~5_combout\ & 
-- (\inst13|inst25|q[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|op_1~2_combout\,
	datab => \inst13|inst25|q[1]~5_combout\,
	datac => \inst13|inst25|q[3]~1_combout\,
	datad => \inst13|inst25|_~3_combout\,
	combout => \inst13|inst25|q[1]~6_combout\);

-- Location: FF_X21_Y9_N25
\inst13|inst25|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst25|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst25|q\(1));

-- Location: LCCOMB_X21_Y9_N30
\inst13|inst25|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|op_1~1_combout\ = \inst13|inst25|q\(2) $ (((\inst13|inst25|q\(1) & \inst13|inst25|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst25|q\(1),
	datac => \inst13|inst25|q\(0),
	datad => \inst13|inst25|q\(2),
	combout => \inst13|inst25|op_1~1_combout\);

-- Location: LCCOMB_X21_Y9_N16
\inst13|inst25|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|q[2]~3_combout\ = (\inst13|inst25|_~1_combout\ & (!\inst13|inst25|_~0_combout\ & (\inst13|inst25|q\(2) $ (\inst13|inst25|op_2~0_combout\)))) # (!\inst13|inst25|_~1_combout\ & (\inst13|inst25|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|q\(2),
	datab => \inst13|inst25|op_2~0_combout\,
	datac => \inst13|inst25|_~0_combout\,
	datad => \inst13|inst25|_~1_combout\,
	combout => \inst13|inst25|q[2]~3_combout\);

-- Location: LCCOMB_X21_Y9_N10
\inst13|inst25|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|q[2]~4_combout\ = (\inst13|inst25|op_1~1_combout\ & ((\inst13|inst25|_~3_combout\) # ((\inst13|inst25|q[2]~3_combout\ & \inst13|inst25|q[3]~1_combout\)))) # (!\inst13|inst25|op_1~1_combout\ & (\inst13|inst25|q[2]~3_combout\ & 
-- (\inst13|inst25|q[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|op_1~1_combout\,
	datab => \inst13|inst25|q[2]~3_combout\,
	datac => \inst13|inst25|q[3]~1_combout\,
	datad => \inst13|inst25|_~3_combout\,
	combout => \inst13|inst25|q[2]~4_combout\);

-- Location: FF_X21_Y9_N11
\inst13|inst25|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst25|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst25|q\(2));

-- Location: LCCOMB_X21_Y9_N12
\inst13|inst25|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst25|_~0_combout\ = (!\inst13|inst25|q\(2) & (!\inst13|inst25|q\(3) & (!\inst13|inst25|q\(0) & !\inst13|inst25|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|q\(2),
	datab => \inst13|inst25|q\(3),
	datac => \inst13|inst25|q\(0),
	datad => \inst13|inst25|q\(1),
	combout => \inst13|inst25|_~0_combout\);

-- Location: LCCOMB_X22_Y15_N20
\inst13|inst37|aux_dig[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|aux_dig[4]~2_combout\ = (\inst13|inst37|_~6_combout\) # ((!\inst13|inst37|_~3_combout\ & (!\inst13|inst39|q\(1) & \inst13|inst39|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|_~3_combout\,
	datab => \inst13|inst39|q\(1),
	datac => \inst13|inst37|_~6_combout\,
	datad => \inst13|inst39|q\(0),
	combout => \inst13|inst37|aux_dig[4]~2_combout\);

-- Location: FF_X22_Y15_N21
\inst13|inst37|aux_dig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst37|aux_dig[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst37|aux_dig\(4));

-- Location: LCCOMB_X22_Y15_N28
\inst13|inst37|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|_~6_combout\ = (\inst1|crono_q\(1) & (\inst23|q\(1) & (!\inst23|q\(0) & \inst13|inst37|aux_dig\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst23|q\(1),
	datac => \inst23|q\(0),
	datad => \inst13|inst37|aux_dig\(4),
	combout => \inst13|inst37|_~6_combout\);

-- Location: FF_X22_Y15_N29
\inst13|inst37|digsel_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst37|_~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst37|digsel_q\(4));

-- Location: LCCOMB_X23_Y13_N26
\inst13|inst28|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|_~1_combout\ = (\inst13|inst39|btn2_reg~q\ & (\inst13|inst37|digsel_q\(4) & ((!\inst1|crono_q\(1)) # (!\inst20|inst|ff3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst39|btn2_reg~q\,
	datab => \inst20|inst|ff3~q\,
	datac => \inst13|inst37|digsel_q\(4),
	datad => \inst1|crono_q\(1),
	combout => \inst13|inst28|_~1_combout\);

-- Location: LCCOMB_X22_Y13_N4
\inst13|inst28|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|q[3]~1_combout\ = (!\inst13|inst23|reset_final_pulse~combout\ & ((!\inst13|inst39|up_pulse~0_combout\) # (!\inst13|inst37|digsel_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst37|digsel_q\(4),
	datac => \inst13|inst23|reset_final_pulse~combout\,
	datad => \inst13|inst39|up_pulse~0_combout\,
	combout => \inst13|inst28|q[3]~1_combout\);

-- Location: LCCOMB_X24_Y13_N24
\inst13|inst28|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|op_1~2_combout\ = \inst13|inst28|q\(0) $ (\inst13|inst28|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst28|q\(0),
	datad => \inst13|inst28|q\(1),
	combout => \inst13|inst28|op_1~2_combout\);

-- Location: LCCOMB_X23_Y13_N18
\inst13|inst28|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|q[1]~5_combout\ = (\inst13|inst28|_~1_combout\ & (!\inst13|inst28|_~0_combout\ & (\inst13|inst28|q\(1) $ (!\inst13|inst28|q\(0))))) # (!\inst13|inst28|_~1_combout\ & (\inst13|inst28|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|q\(1),
	datab => \inst13|inst28|_~0_combout\,
	datac => \inst13|inst28|_~1_combout\,
	datad => \inst13|inst28|q\(0),
	combout => \inst13|inst28|q[1]~5_combout\);

-- Location: LCCOMB_X23_Y13_N30
\inst13|inst28|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|q[1]~6_combout\ = (\inst13|inst28|_~3_combout\ & ((\inst13|inst28|op_1~2_combout\) # ((\inst13|inst28|q[3]~1_combout\ & \inst13|inst28|q[1]~5_combout\)))) # (!\inst13|inst28|_~3_combout\ & (((\inst13|inst28|q[3]~1_combout\ & 
-- \inst13|inst28|q[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|_~3_combout\,
	datab => \inst13|inst28|op_1~2_combout\,
	datac => \inst13|inst28|q[3]~1_combout\,
	datad => \inst13|inst28|q[1]~5_combout\,
	combout => \inst13|inst28|q[1]~6_combout\);

-- Location: FF_X23_Y13_N31
\inst13|inst28|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst28|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst28|q\(1));

-- Location: LCCOMB_X23_Y13_N10
\inst13|inst28|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|op_1~0_combout\ = \inst13|inst28|q\(3) $ (((\inst13|inst28|q\(0) & (\inst13|inst28|q\(1) & \inst13|inst28|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|q\(0),
	datab => \inst13|inst28|q\(3),
	datac => \inst13|inst28|q\(1),
	datad => \inst13|inst28|q\(2),
	combout => \inst13|inst28|op_1~0_combout\);

-- Location: LCCOMB_X23_Y13_N8
\inst13|inst28|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|op_2~0_combout\ = (!\inst13|inst28|q\(1) & !\inst13|inst28|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst28|q\(1),
	datad => \inst13|inst28|q\(0),
	combout => \inst13|inst28|op_2~0_combout\);

-- Location: LCCOMB_X23_Y13_N20
\inst13|inst28|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|q[3]~0_combout\ = \inst13|inst28|q\(3) $ (((\inst13|inst28|_~1_combout\ & (!\inst13|inst28|q\(2) & \inst13|inst28|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|_~1_combout\,
	datab => \inst13|inst28|q\(2),
	datac => \inst13|inst28|op_2~0_combout\,
	datad => \inst13|inst28|q\(3),
	combout => \inst13|inst28|q[3]~0_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst13|inst28|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|q[3]~2_combout\ = (\inst13|inst28|op_1~0_combout\ & ((\inst13|inst28|_~3_combout\) # ((\inst13|inst28|q[3]~0_combout\ & \inst13|inst28|q[3]~1_combout\)))) # (!\inst13|inst28|op_1~0_combout\ & (\inst13|inst28|q[3]~0_combout\ & 
-- (\inst13|inst28|q[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|op_1~0_combout\,
	datab => \inst13|inst28|q[3]~0_combout\,
	datac => \inst13|inst28|q[3]~1_combout\,
	datad => \inst13|inst28|_~3_combout\,
	combout => \inst13|inst28|q[3]~2_combout\);

-- Location: FF_X23_Y13_N29
\inst13|inst28|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst28|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst28|q\(3));

-- Location: LCCOMB_X23_Y13_N6
\inst13|inst28|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|_~2_combout\ = (((\inst13|inst28|q\(1)) # (\inst13|inst28|q\(2))) # (!\inst13|inst28|q\(3))) # (!\inst13|inst28|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|q\(0),
	datab => \inst13|inst28|q\(3),
	datac => \inst13|inst28|q\(1),
	datad => \inst13|inst28|q\(2),
	combout => \inst13|inst28|_~2_combout\);

-- Location: LCCOMB_X22_Y13_N2
\inst13|inst28|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|_~3_combout\ = (\inst13|inst28|_~2_combout\ & (\inst13|inst37|digsel_q\(4) & (!\inst13|inst23|reset_final_pulse~combout\ & \inst13|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|_~2_combout\,
	datab => \inst13|inst37|digsel_q\(4),
	datac => \inst13|inst23|reset_final_pulse~combout\,
	datad => \inst13|inst39|up_pulse~0_combout\,
	combout => \inst13|inst28|_~3_combout\);

-- Location: LCCOMB_X22_Y13_N8
\inst13|inst28|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|q[0]~7_combout\ = (\inst13|inst28|q\(0) & (!\inst13|inst28|_~1_combout\ & (\inst13|inst28|q[3]~1_combout\))) # (!\inst13|inst28|q\(0) & ((\inst13|inst28|_~3_combout\) # ((\inst13|inst28|_~1_combout\ & \inst13|inst28|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|_~1_combout\,
	datab => \inst13|inst28|q[3]~1_combout\,
	datac => \inst13|inst28|q\(0),
	datad => \inst13|inst28|_~3_combout\,
	combout => \inst13|inst28|q[0]~7_combout\);

-- Location: FF_X22_Y13_N9
\inst13|inst28|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst28|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst28|q\(0));

-- Location: LCCOMB_X22_Y13_N12
\inst13|inst28|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|op_1~1_combout\ = \inst13|inst28|q\(2) $ (((\inst13|inst28|q\(0) & \inst13|inst28|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|q\(0),
	datac => \inst13|inst28|q\(2),
	datad => \inst13|inst28|q\(1),
	combout => \inst13|inst28|op_1~1_combout\);

-- Location: LCCOMB_X23_Y13_N4
\inst13|inst28|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|q[2]~3_combout\ = (\inst13|inst28|_~1_combout\ & (!\inst13|inst28|_~0_combout\ & (\inst13|inst28|q\(2) $ (\inst13|inst28|op_2~0_combout\)))) # (!\inst13|inst28|_~1_combout\ & (\inst13|inst28|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|_~1_combout\,
	datab => \inst13|inst28|q\(2),
	datac => \inst13|inst28|op_2~0_combout\,
	datad => \inst13|inst28|_~0_combout\,
	combout => \inst13|inst28|q[2]~3_combout\);

-- Location: LCCOMB_X22_Y13_N30
\inst13|inst28|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|q[2]~4_combout\ = (\inst13|inst28|op_1~1_combout\ & ((\inst13|inst28|_~3_combout\) # ((\inst13|inst28|q[3]~1_combout\ & \inst13|inst28|q[2]~3_combout\)))) # (!\inst13|inst28|op_1~1_combout\ & (((\inst13|inst28|q[3]~1_combout\ & 
-- \inst13|inst28|q[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|op_1~1_combout\,
	datab => \inst13|inst28|_~3_combout\,
	datac => \inst13|inst28|q[3]~1_combout\,
	datad => \inst13|inst28|q[2]~3_combout\,
	combout => \inst13|inst28|q[2]~4_combout\);

-- Location: FF_X22_Y13_N31
\inst13|inst28|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst28|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst28|q\(2));

-- Location: LCCOMB_X22_Y11_N4
\inst13|inst28|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst28|_~0_combout\ = (!\inst13|inst28|q\(2) & (!\inst13|inst28|q\(3) & (!\inst13|inst28|q\(1) & !\inst13|inst28|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|q\(2),
	datab => \inst13|inst28|q\(3),
	datac => \inst13|inst28|q\(1),
	datad => \inst13|inst28|q\(0),
	combout => \inst13|inst28|_~0_combout\);

-- Location: LCCOMB_X22_Y15_N16
\inst13|inst37|aux_dig[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|aux_dig[3]~0_combout\ = (\inst13|inst37|_~4_combout\) # ((!\inst13|inst37|_~3_combout\ & (\inst13|inst39|q\(1) & !\inst13|inst39|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|_~3_combout\,
	datab => \inst13|inst39|q\(1),
	datac => \inst13|inst37|_~4_combout\,
	datad => \inst13|inst39|q\(0),
	combout => \inst13|inst37|aux_dig[3]~0_combout\);

-- Location: FF_X22_Y15_N17
\inst13|inst37|aux_dig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst37|aux_dig[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst37|aux_dig\(3));

-- Location: LCCOMB_X22_Y15_N8
\inst13|inst37|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|_~4_combout\ = (\inst1|crono_q\(1) & (\inst23|q\(1) & (!\inst23|q\(0) & \inst13|inst37|aux_dig\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst23|q\(1),
	datac => \inst23|q\(0),
	datad => \inst13|inst37|aux_dig\(3),
	combout => \inst13|inst37|_~4_combout\);

-- Location: FF_X22_Y15_N9
\inst13|inst37|digsel_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst37|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst37|digsel_q\(3));

-- Location: LCCOMB_X24_Y12_N10
\inst13|inst27|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|_~1_combout\ = (\inst13|inst37|digsel_q\(3) & (\inst13|inst39|btn2_reg~q\ & ((!\inst20|inst|ff3~q\) # (!\inst1|crono_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|digsel_q\(3),
	datab => \inst1|crono_q\(1),
	datac => \inst13|inst39|btn2_reg~q\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst13|inst27|_~1_combout\);

-- Location: LCCOMB_X24_Y12_N2
\inst13|inst27|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|q[3]~1_combout\ = (!\inst13|inst23|reset_final_pulse~combout\ & ((!\inst13|inst39|up_pulse~0_combout\) # (!\inst13|inst37|digsel_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|digsel_q\(3),
	datac => \inst13|inst23|reset_final_pulse~combout\,
	datad => \inst13|inst39|up_pulse~0_combout\,
	combout => \inst13|inst27|q[3]~1_combout\);

-- Location: LCCOMB_X24_Y12_N18
\inst13|inst27|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|op_1~1_combout\ = \inst13|inst27|q\(2) $ (((\inst13|inst27|q\(0) & \inst13|inst27|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|q\(0),
	datac => \inst13|inst27|q\(2),
	datad => \inst13|inst27|q\(1),
	combout => \inst13|inst27|op_1~1_combout\);

-- Location: LCCOMB_X24_Y12_N16
\inst13|inst27|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|op_2~0_combout\ = (!\inst13|inst27|q\(0) & !\inst13|inst27|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst27|q\(0),
	datad => \inst13|inst27|q\(1),
	combout => \inst13|inst27|op_2~0_combout\);

-- Location: LCCOMB_X24_Y12_N8
\inst13|inst27|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|q[2]~3_combout\ = (\inst13|inst27|_~1_combout\ & (!\inst13|inst27|_~0_combout\ & (\inst13|inst27|op_2~0_combout\ $ (\inst13|inst27|q\(2))))) # (!\inst13|inst27|_~1_combout\ & (((\inst13|inst27|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|op_2~0_combout\,
	datab => \inst13|inst27|q\(2),
	datac => \inst13|inst27|_~0_combout\,
	datad => \inst13|inst27|_~1_combout\,
	combout => \inst13|inst27|q[2]~3_combout\);

-- Location: LCCOMB_X24_Y12_N14
\inst13|inst27|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|q[2]~4_combout\ = (\inst13|inst27|op_1~1_combout\ & ((\inst13|inst27|_~3_combout\) # ((\inst13|inst27|q[2]~3_combout\ & \inst13|inst27|q[3]~1_combout\)))) # (!\inst13|inst27|op_1~1_combout\ & (\inst13|inst27|q[2]~3_combout\ & 
-- ((\inst13|inst27|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|op_1~1_combout\,
	datab => \inst13|inst27|q[2]~3_combout\,
	datac => \inst13|inst27|_~3_combout\,
	datad => \inst13|inst27|q[3]~1_combout\,
	combout => \inst13|inst27|q[2]~4_combout\);

-- Location: FF_X24_Y12_N15
\inst13|inst27|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst27|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst27|q\(2));

-- Location: LCCOMB_X24_Y12_N6
\inst13|inst27|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|op_1~0_combout\ = \inst13|inst27|q\(3) $ (((\inst13|inst27|q\(0) & (\inst13|inst27|q\(2) & \inst13|inst27|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|q\(0),
	datab => \inst13|inst27|q\(3),
	datac => \inst13|inst27|q\(2),
	datad => \inst13|inst27|q\(1),
	combout => \inst13|inst27|op_1~0_combout\);

-- Location: LCCOMB_X24_Y12_N28
\inst13|inst27|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|q[3]~0_combout\ = \inst13|inst27|q\(3) $ (((\inst13|inst27|op_2~0_combout\ & (!\inst13|inst27|q\(2) & \inst13|inst27|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|op_2~0_combout\,
	datab => \inst13|inst27|q\(3),
	datac => \inst13|inst27|q\(2),
	datad => \inst13|inst27|_~1_combout\,
	combout => \inst13|inst27|q[3]~0_combout\);

-- Location: LCCOMB_X24_Y12_N20
\inst13|inst27|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|q[3]~2_combout\ = (\inst13|inst27|op_1~0_combout\ & ((\inst13|inst27|_~3_combout\) # ((\inst13|inst27|q[3]~0_combout\ & \inst13|inst27|q[3]~1_combout\)))) # (!\inst13|inst27|op_1~0_combout\ & (\inst13|inst27|q[3]~0_combout\ & 
-- ((\inst13|inst27|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|op_1~0_combout\,
	datab => \inst13|inst27|q[3]~0_combout\,
	datac => \inst13|inst27|_~3_combout\,
	datad => \inst13|inst27|q[3]~1_combout\,
	combout => \inst13|inst27|q[3]~2_combout\);

-- Location: FF_X24_Y12_N21
\inst13|inst27|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst27|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst27|q\(3));

-- Location: LCCOMB_X24_Y12_N24
\inst13|inst27|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|_~2_combout\ = (((\inst13|inst27|q\(2)) # (\inst13|inst27|q\(1))) # (!\inst13|inst27|q\(3))) # (!\inst13|inst27|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|q\(0),
	datab => \inst13|inst27|q\(3),
	datac => \inst13|inst27|q\(2),
	datad => \inst13|inst27|q\(1),
	combout => \inst13|inst27|_~2_combout\);

-- Location: LCCOMB_X24_Y12_N26
\inst13|inst27|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|_~3_combout\ = (\inst13|inst37|digsel_q\(3) & (\inst13|inst27|_~2_combout\ & (!\inst13|inst23|reset_final_pulse~combout\ & \inst13|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|digsel_q\(3),
	datab => \inst13|inst27|_~2_combout\,
	datac => \inst13|inst23|reset_final_pulse~combout\,
	datad => \inst13|inst39|up_pulse~0_combout\,
	combout => \inst13|inst27|_~3_combout\);

-- Location: LCCOMB_X24_Y12_N30
\inst13|inst27|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|q[0]~7_combout\ = (\inst13|inst27|q\(0) & (!\inst13|inst27|_~1_combout\ & (\inst13|inst27|q[3]~1_combout\))) # (!\inst13|inst27|q\(0) & ((\inst13|inst27|_~3_combout\) # ((\inst13|inst27|_~1_combout\ & \inst13|inst27|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|_~1_combout\,
	datab => \inst13|inst27|q[3]~1_combout\,
	datac => \inst13|inst27|q\(0),
	datad => \inst13|inst27|_~3_combout\,
	combout => \inst13|inst27|q[0]~7_combout\);

-- Location: FF_X24_Y12_N31
\inst13|inst27|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst27|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst27|q\(0));

-- Location: LCCOMB_X24_Y12_N22
\inst13|inst27|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|op_1~2_combout\ = \inst13|inst27|q\(0) $ (\inst13|inst27|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst27|q\(0),
	datad => \inst13|inst27|q\(1),
	combout => \inst13|inst27|op_1~2_combout\);

-- Location: LCCOMB_X24_Y12_N4
\inst13|inst27|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|q[1]~5_combout\ = (\inst13|inst27|_~1_combout\ & (!\inst13|inst27|_~0_combout\ & (\inst13|inst27|q\(0) $ (!\inst13|inst27|q\(1))))) # (!\inst13|inst27|_~1_combout\ & (((\inst13|inst27|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|q\(0),
	datab => \inst13|inst27|q\(1),
	datac => \inst13|inst27|_~0_combout\,
	datad => \inst13|inst27|_~1_combout\,
	combout => \inst13|inst27|q[1]~5_combout\);

-- Location: LCCOMB_X24_Y12_N0
\inst13|inst27|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|q[1]~6_combout\ = (\inst13|inst27|op_1~2_combout\ & ((\inst13|inst27|_~3_combout\) # ((\inst13|inst27|q[1]~5_combout\ & \inst13|inst27|q[3]~1_combout\)))) # (!\inst13|inst27|op_1~2_combout\ & (\inst13|inst27|q[1]~5_combout\ & 
-- ((\inst13|inst27|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|op_1~2_combout\,
	datab => \inst13|inst27|q[1]~5_combout\,
	datac => \inst13|inst27|_~3_combout\,
	datad => \inst13|inst27|q[3]~1_combout\,
	combout => \inst13|inst27|q[1]~6_combout\);

-- Location: FF_X24_Y12_N1
\inst13|inst27|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst27|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst27|q\(1));

-- Location: LCCOMB_X24_Y12_N12
\inst13|inst27|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst27|_~0_combout\ = (!\inst13|inst27|q\(1) & (!\inst13|inst27|q\(2) & (!\inst13|inst27|q\(0) & !\inst13|inst27|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|q\(1),
	datab => \inst13|inst27|q\(2),
	datac => \inst13|inst27|q\(0),
	datad => \inst13|inst27|q\(3),
	combout => \inst13|inst27|_~0_combout\);

-- Location: LCCOMB_X22_Y15_N2
\inst13|inst37|aux_dig[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|aux_dig[2]~1_combout\ = (\inst13|inst37|_~5_combout\) # ((!\inst13|inst37|_~3_combout\ & (\inst13|inst39|q\(1) & \inst13|inst39|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|_~3_combout\,
	datab => \inst13|inst39|q\(1),
	datac => \inst13|inst37|_~5_combout\,
	datad => \inst13|inst39|q\(0),
	combout => \inst13|inst37|aux_dig[2]~1_combout\);

-- Location: FF_X22_Y15_N3
\inst13|inst37|aux_dig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst37|aux_dig[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst37|aux_dig\(2));

-- Location: LCCOMB_X22_Y15_N22
\inst13|inst37|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|_~5_combout\ = (\inst1|crono_q\(1) & (\inst23|q\(1) & (!\inst23|q\(0) & \inst13|inst37|aux_dig\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst23|q\(1),
	datac => \inst23|q\(0),
	datad => \inst13|inst37|aux_dig\(2),
	combout => \inst13|inst37|_~5_combout\);

-- Location: FF_X22_Y15_N23
\inst13|inst37|digsel_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst37|_~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst37|digsel_q\(2));

-- Location: LCCOMB_X22_Y13_N20
\inst13|inst26|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|q[3]~1_combout\ = (!\inst13|inst23|reset_final_pulse~combout\ & ((!\inst13|inst39|up_pulse~0_combout\) # (!\inst13|inst37|digsel_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|digsel_q\(2),
	datac => \inst13|inst23|reset_final_pulse~combout\,
	datad => \inst13|inst39|up_pulse~0_combout\,
	combout => \inst13|inst26|q[3]~1_combout\);

-- Location: LCCOMB_X21_Y14_N10
\inst13|inst26|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|op_1~1_combout\ = \inst13|inst26|q\(2) $ (((\inst13|inst26|q\(0) & \inst13|inst26|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|q\(2),
	datac => \inst13|inst26|q\(0),
	datad => \inst13|inst26|q\(1),
	combout => \inst13|inst26|op_1~1_combout\);

-- Location: LCCOMB_X21_Y14_N28
\inst13|inst26|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|op_2~0_combout\ = (!\inst13|inst26|q\(0) & !\inst13|inst26|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst26|q\(0),
	datad => \inst13|inst26|q\(1),
	combout => \inst13|inst26|op_2~0_combout\);

-- Location: LCCOMB_X21_Y14_N6
\inst13|inst26|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|_~1_combout\ = (\inst13|inst39|btn2_reg~q\ & (\inst13|inst37|digsel_q\(2) & ((!\inst20|inst|ff3~q\) # (!\inst1|crono_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst13|inst39|btn2_reg~q\,
	datac => \inst13|inst37|digsel_q\(2),
	datad => \inst20|inst|ff3~q\,
	combout => \inst13|inst26|_~1_combout\);

-- Location: LCCOMB_X21_Y14_N16
\inst13|inst26|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|q[2]~3_combout\ = (\inst13|inst26|_~1_combout\ & (!\inst13|inst26|_~0_combout\ & (\inst13|inst26|q\(2) $ (\inst13|inst26|op_2~0_combout\)))) # (!\inst13|inst26|_~1_combout\ & (\inst13|inst26|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|q\(2),
	datab => \inst13|inst26|op_2~0_combout\,
	datac => \inst13|inst26|_~0_combout\,
	datad => \inst13|inst26|_~1_combout\,
	combout => \inst13|inst26|q[2]~3_combout\);

-- Location: LCCOMB_X21_Y14_N30
\inst13|inst26|q[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|q[2]~4_combout\ = (\inst13|inst26|op_1~1_combout\ & ((\inst13|inst26|_~3_combout\) # ((\inst13|inst26|q[2]~3_combout\ & \inst13|inst26|q[3]~1_combout\)))) # (!\inst13|inst26|op_1~1_combout\ & (\inst13|inst26|q[2]~3_combout\ & 
-- ((\inst13|inst26|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|op_1~1_combout\,
	datab => \inst13|inst26|q[2]~3_combout\,
	datac => \inst13|inst26|_~3_combout\,
	datad => \inst13|inst26|q[3]~1_combout\,
	combout => \inst13|inst26|q[2]~4_combout\);

-- Location: FF_X21_Y14_N31
\inst13|inst26|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst26|q[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst26|q\(2));

-- Location: LCCOMB_X21_Y14_N12
\inst13|inst26|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|q[3]~0_combout\ = \inst13|inst26|q\(3) $ (((\inst13|inst26|_~1_combout\ & (\inst13|inst26|op_2~0_combout\ & !\inst13|inst26|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|_~1_combout\,
	datab => \inst13|inst26|op_2~0_combout\,
	datac => \inst13|inst26|q\(2),
	datad => \inst13|inst26|q\(3),
	combout => \inst13|inst26|q[3]~0_combout\);

-- Location: LCCOMB_X21_Y14_N2
\inst13|inst26|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|op_1~0_combout\ = \inst13|inst26|q\(3) $ (((\inst13|inst26|q\(1) & (\inst13|inst26|q\(0) & \inst13|inst26|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|q\(1),
	datab => \inst13|inst26|q\(0),
	datac => \inst13|inst26|q\(2),
	datad => \inst13|inst26|q\(3),
	combout => \inst13|inst26|op_1~0_combout\);

-- Location: LCCOMB_X21_Y14_N0
\inst13|inst26|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|q[3]~2_combout\ = (\inst13|inst26|q[3]~0_combout\ & ((\inst13|inst26|q[3]~1_combout\) # ((\inst13|inst26|op_1~0_combout\ & \inst13|inst26|_~3_combout\)))) # (!\inst13|inst26|q[3]~0_combout\ & (\inst13|inst26|op_1~0_combout\ & 
-- (\inst13|inst26|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|q[3]~0_combout\,
	datab => \inst13|inst26|op_1~0_combout\,
	datac => \inst13|inst26|_~3_combout\,
	datad => \inst13|inst26|q[3]~1_combout\,
	combout => \inst13|inst26|q[3]~2_combout\);

-- Location: FF_X21_Y14_N1
\inst13|inst26|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst26|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst26|q\(3));

-- Location: LCCOMB_X21_Y14_N22
\inst13|inst26|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|_~2_combout\ = (\inst13|inst26|q\(1)) # (((\inst13|inst26|q\(2)) # (!\inst13|inst26|q\(3))) # (!\inst13|inst26|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|q\(1),
	datab => \inst13|inst26|q\(0),
	datac => \inst13|inst26|q\(2),
	datad => \inst13|inst26|q\(3),
	combout => \inst13|inst26|_~2_combout\);

-- Location: LCCOMB_X22_Y13_N10
\inst13|inst26|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|_~3_combout\ = (\inst13|inst37|digsel_q\(2) & (!\inst13|inst23|reset_final_pulse~combout\ & (\inst13|inst26|_~2_combout\ & \inst13|inst39|up_pulse~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|digsel_q\(2),
	datab => \inst13|inst23|reset_final_pulse~combout\,
	datac => \inst13|inst26|_~2_combout\,
	datad => \inst13|inst39|up_pulse~0_combout\,
	combout => \inst13|inst26|_~3_combout\);

-- Location: LCCOMB_X21_Y12_N30
\inst13|inst26|q[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|q[0]~7_combout\ = (\inst13|inst26|q\(0) & (((!\inst13|inst26|_~1_combout\ & \inst13|inst26|q[3]~1_combout\)))) # (!\inst13|inst26|q\(0) & ((\inst13|inst26|_~3_combout\) # ((\inst13|inst26|_~1_combout\ & \inst13|inst26|q[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|_~3_combout\,
	datab => \inst13|inst26|_~1_combout\,
	datac => \inst13|inst26|q\(0),
	datad => \inst13|inst26|q[3]~1_combout\,
	combout => \inst13|inst26|q[0]~7_combout\);

-- Location: FF_X21_Y12_N31
\inst13|inst26|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst26|q[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst26|q\(0));

-- Location: LCCOMB_X21_Y14_N24
\inst13|inst26|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|op_1~2_combout\ = \inst13|inst26|q\(0) $ (\inst13|inst26|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst26|q\(0),
	datad => \inst13|inst26|q\(1),
	combout => \inst13|inst26|op_1~2_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst13|inst26|q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|q[1]~5_combout\ = (\inst13|inst26|_~1_combout\ & (!\inst13|inst26|_~0_combout\ & (\inst13|inst26|q\(1) $ (!\inst13|inst26|q\(0))))) # (!\inst13|inst26|_~1_combout\ & (\inst13|inst26|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|q\(1),
	datab => \inst13|inst26|_~0_combout\,
	datac => \inst13|inst26|q\(0),
	datad => \inst13|inst26|_~1_combout\,
	combout => \inst13|inst26|q[1]~5_combout\);

-- Location: LCCOMB_X21_Y12_N12
\inst13|inst26|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|q[1]~6_combout\ = (\inst13|inst26|q[3]~1_combout\ & ((\inst13|inst26|q[1]~5_combout\) # ((\inst13|inst26|op_1~2_combout\ & \inst13|inst26|_~3_combout\)))) # (!\inst13|inst26|q[3]~1_combout\ & (\inst13|inst26|op_1~2_combout\ & 
-- (\inst13|inst26|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|q[3]~1_combout\,
	datab => \inst13|inst26|op_1~2_combout\,
	datac => \inst13|inst26|_~3_combout\,
	datad => \inst13|inst26|q[1]~5_combout\,
	combout => \inst13|inst26|q[1]~6_combout\);

-- Location: FF_X21_Y12_N13
\inst13|inst26|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst26|q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst26|q\(1));

-- Location: LCCOMB_X21_Y12_N20
\inst13|inst26|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst26|_~0_combout\ = (!\inst13|inst26|q\(1) & (!\inst13|inst26|q\(0) & (!\inst13|inst26|q\(2) & !\inst13|inst26|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|q\(1),
	datab => \inst13|inst26|q\(0),
	datac => \inst13|inst26|q\(2),
	datad => \inst13|inst26|q\(3),
	combout => \inst13|inst26|_~0_combout\);

-- Location: LCCOMB_X22_Y11_N22
\inst13|inst40|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|_~0_combout\ = (\inst13|inst25|_~0_combout\ & (\inst13|inst28|_~0_combout\ & (\inst13|inst27|_~0_combout\ & \inst13|inst26|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst25|_~0_combout\,
	datab => \inst13|inst28|_~0_combout\,
	datac => \inst13|inst27|_~0_combout\,
	datad => \inst13|inst26|_~0_combout\,
	combout => \inst13|inst40|_~0_combout\);

-- Location: LCCOMB_X22_Y11_N20
\inst13|inst40|final_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~5_combout\ = (\inst13|inst21|comp_flag_q~q\ & (\inst13|inst40|_~0_combout\ & \inst13|inst40|final_cont~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst21|comp_flag_q~q\,
	datac => \inst13|inst40|_~0_combout\,
	datad => \inst13|inst40|final_cont~4_combout\,
	combout => \inst13|inst40|final_cont~5_combout\);

-- Location: LCCOMB_X22_Y11_N2
\inst13|inst23|pode_contar\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|pode_contar~combout\ = (!\inst13|inst50|pausa_q~q\ & (\inst13|inst21|comp_flag_q~q\ & (!\inst13|inst40|final_cont~16_combout\ & !\inst13|inst40|final_cont~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst50|pausa_q~q\,
	datab => \inst13|inst21|comp_flag_q~q\,
	datac => \inst13|inst40|final_cont~16_combout\,
	datad => \inst13|inst40|final_cont~5_combout\,
	combout => \inst13|inst23|pode_contar~combout\);

-- Location: LCCOMB_X21_Y12_N8
\inst13|inst23|unidade_q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|unidade_q[1]~3_combout\ = (\inst13|inst23|pode_contar~combout\ & (!\inst13|inst23|_~0_combout\ & (\inst13|inst23|unidade_q\(0) $ (\inst13|inst23|unidade_q\(1))))) # (!\inst13|inst23|pode_contar~combout\ & (((\inst13|inst23|unidade_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~0_combout\,
	datab => \inst13|inst23|unidade_q\(0),
	datac => \inst13|inst23|unidade_q\(1),
	datad => \inst13|inst23|pode_contar~combout\,
	combout => \inst13|inst23|unidade_q[1]~3_combout\);

-- Location: FF_X21_Y12_N9
\inst13|inst23|unidade_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|unidade_q[1]~3_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|unidade_q\(1));

-- Location: LCCOMB_X18_Y12_N2
\inst13|inst23|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|op_1~0_combout\ = \inst13|inst23|unidade_q\(3) $ (((\inst13|inst23|unidade_q\(2) & (\inst13|inst23|unidade_q\(1) & \inst13|inst23|unidade_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|unidade_q\(2),
	datab => \inst13|inst23|unidade_q\(3),
	datac => \inst13|inst23|unidade_q\(1),
	datad => \inst13|inst23|unidade_q\(0),
	combout => \inst13|inst23|op_1~0_combout\);

-- Location: LCCOMB_X21_Y12_N2
\inst13|inst23|unidade_q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|unidade_q[3]~0_combout\ = (\inst13|inst23|pode_contar~combout\ & (!\inst13|inst23|_~0_combout\ & (\inst13|inst23|op_1~0_combout\))) # (!\inst13|inst23|pode_contar~combout\ & (((\inst13|inst23|unidade_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~0_combout\,
	datab => \inst13|inst23|op_1~0_combout\,
	datac => \inst13|inst23|unidade_q\(3),
	datad => \inst13|inst23|pode_contar~combout\,
	combout => \inst13|inst23|unidade_q[3]~0_combout\);

-- Location: FF_X21_Y12_N3
\inst13|inst23|unidade_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|unidade_q[3]~0_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|unidade_q\(3));

-- Location: LCCOMB_X21_Y12_N22
\inst13|inst40|final_cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~6_combout\ = (\inst13|inst23|unidade_q\(2) & (\inst13|inst25|q\(2) & (\inst13|inst23|unidade_q\(3) $ (!\inst13|inst25|q\(3))))) # (!\inst13|inst23|unidade_q\(2) & (!\inst13|inst25|q\(2) & (\inst13|inst23|unidade_q\(3) $ 
-- (!\inst13|inst25|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|unidade_q\(2),
	datab => \inst13|inst23|unidade_q\(3),
	datac => \inst13|inst25|q\(2),
	datad => \inst13|inst25|q\(3),
	combout => \inst13|inst40|final_cont~6_combout\);

-- Location: LCCOMB_X22_Y12_N24
\inst13|inst23|dezena_q[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|dezena_q[1]~0_combout\ = (\inst13|inst23|pode_contar~2_combout\ & (\inst13|inst23|_~0_combout\ & (!\inst13|inst40|final_cont~5_combout\ & !\inst13|inst40|final_cont~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|pode_contar~2_combout\,
	datab => \inst13|inst23|_~0_combout\,
	datac => \inst13|inst40|final_cont~5_combout\,
	datad => \inst13|inst40|final_cont~16_combout\,
	combout => \inst13|inst23|dezena_q[1]~0_combout\);

-- Location: LCCOMB_X22_Y12_N16
\inst13|inst23|dezena_q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|dezena_q[1]~4_combout\ = (\inst13|inst23|dezena_q[1]~0_combout\ & (!\inst13|inst23|_~1_combout\ & (\inst13|inst23|dezena_q\(0) $ (\inst13|inst23|dezena_q\(1))))) # (!\inst13|inst23|dezena_q[1]~0_combout\ & (((\inst13|inst23|dezena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|dezena_q\(0),
	datab => \inst13|inst23|_~1_combout\,
	datac => \inst13|inst23|dezena_q\(1),
	datad => \inst13|inst23|dezena_q[1]~0_combout\,
	combout => \inst13|inst23|dezena_q[1]~4_combout\);

-- Location: FF_X22_Y12_N17
\inst13|inst23|dezena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|dezena_q[1]~4_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|dezena_q\(1));

-- Location: LCCOMB_X21_Y12_N28
\inst13|inst40|final_cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~9_combout\ = (\inst13|inst26|q\(1) & (\inst13|inst23|dezena_q\(1) & (\inst13|inst23|dezena_q\(0) $ (!\inst13|inst26|q\(0))))) # (!\inst13|inst26|q\(1) & (!\inst13|inst23|dezena_q\(1) & (\inst13|inst23|dezena_q\(0) $ 
-- (!\inst13|inst26|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|q\(1),
	datab => \inst13|inst23|dezena_q\(0),
	datac => \inst13|inst26|q\(0),
	datad => \inst13|inst23|dezena_q\(1),
	combout => \inst13|inst40|final_cont~9_combout\);

-- Location: LCCOMB_X21_Y12_N4
\inst13|inst40|final_cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~7_combout\ = (\inst13|inst23|unidade_q\(1) & (\inst13|inst25|q\(1) & (\inst13|inst23|unidade_q\(0) $ (!\inst13|inst25|q\(0))))) # (!\inst13|inst23|unidade_q\(1) & (!\inst13|inst25|q\(1) & (\inst13|inst23|unidade_q\(0) $ 
-- (!\inst13|inst25|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|unidade_q\(1),
	datab => \inst13|inst23|unidade_q\(0),
	datac => \inst13|inst25|q\(0),
	datad => \inst13|inst25|q\(1),
	combout => \inst13|inst40|final_cont~7_combout\);

-- Location: LCCOMB_X21_Y14_N14
\inst13|inst23|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|op_2~0_combout\ = \inst13|inst23|dezena_q\(3) $ (((\inst13|inst23|dezena_q\(1) & (\inst13|inst23|dezena_q\(2) & \inst13|inst23|dezena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|dezena_q\(1),
	datab => \inst13|inst23|dezena_q\(2),
	datac => \inst13|inst23|dezena_q\(3),
	datad => \inst13|inst23|dezena_q\(0),
	combout => \inst13|inst23|op_2~0_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst13|inst23|dezena_q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|dezena_q[3]~1_combout\ = (\inst13|inst23|dezena_q[1]~0_combout\ & (\inst13|inst23|op_2~0_combout\ & (!\inst13|inst23|_~1_combout\))) # (!\inst13|inst23|dezena_q[1]~0_combout\ & (((\inst13|inst23|dezena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|op_2~0_combout\,
	datab => \inst13|inst23|_~1_combout\,
	datac => \inst13|inst23|dezena_q\(3),
	datad => \inst13|inst23|dezena_q[1]~0_combout\,
	combout => \inst13|inst23|dezena_q[3]~1_combout\);

-- Location: FF_X22_Y12_N3
\inst13|inst23|dezena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|dezena_q[3]~1_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|dezena_q\(3));

-- Location: LCCOMB_X21_Y12_N18
\inst13|inst40|final_cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~8_combout\ = (\inst13|inst23|dezena_q\(3) & (\inst13|inst26|q\(3) & (\inst13|inst26|q\(2) $ (!\inst13|inst23|dezena_q\(2))))) # (!\inst13|inst23|dezena_q\(3) & (!\inst13|inst26|q\(3) & (\inst13|inst26|q\(2) $ 
-- (!\inst13|inst23|dezena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|dezena_q\(3),
	datab => \inst13|inst26|q\(3),
	datac => \inst13|inst26|q\(2),
	datad => \inst13|inst23|dezena_q\(2),
	combout => \inst13|inst40|final_cont~8_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst13|inst40|final_cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~10_combout\ = (\inst13|inst40|final_cont~6_combout\ & (\inst13|inst40|final_cont~9_combout\ & (\inst13|inst40|final_cont~7_combout\ & \inst13|inst40|final_cont~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst40|final_cont~6_combout\,
	datab => \inst13|inst40|final_cont~9_combout\,
	datac => \inst13|inst40|final_cont~7_combout\,
	datad => \inst13|inst40|final_cont~8_combout\,
	combout => \inst13|inst40|final_cont~10_combout\);

-- Location: LCCOMB_X23_Y12_N26
\inst13|inst40|final_cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~12_combout\ = (\inst13|inst27|q\(0) & (\inst13|inst23|centena_q\(0) & (\inst13|inst23|centena_q\(1) $ (!\inst13|inst27|q\(1))))) # (!\inst13|inst27|q\(0) & (!\inst13|inst23|centena_q\(0) & (\inst13|inst23|centena_q\(1) $ 
-- (!\inst13|inst27|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|q\(0),
	datab => \inst13|inst23|centena_q\(1),
	datac => \inst13|inst27|q\(1),
	datad => \inst13|inst23|centena_q\(0),
	combout => \inst13|inst40|final_cont~12_combout\);

-- Location: LCCOMB_X23_Y15_N2
\inst13|inst23|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|op_3~0_combout\ = \inst13|inst23|centena_q\(3) $ (((\inst13|inst23|centena_q\(2) & (\inst13|inst23|centena_q\(1) & \inst13|inst23|centena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|centena_q\(2),
	datab => \inst13|inst23|centena_q\(1),
	datac => \inst13|inst23|centena_q\(0),
	datad => \inst13|inst23|centena_q\(3),
	combout => \inst13|inst23|op_3~0_combout\);

-- Location: LCCOMB_X22_Y12_N12
\inst13|inst23|milhar_q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|milhar_q[1]~2_combout\ = (\inst13|inst23|_~1_combout\ & \inst13|inst23|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst23|_~1_combout\,
	datac => \inst13|inst23|_~0_combout\,
	combout => \inst13|inst23|milhar_q[1]~2_combout\);

-- Location: LCCOMB_X23_Y12_N0
\inst13|inst23|milhar_q[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|milhar_q[1]~8_combout\ = (\inst13|inst23|milhar_q[1]~2_combout\ & (\inst13|inst23|pode_contar~2_combout\ & (!\inst13|inst40|final_cont~5_combout\ & !\inst13|inst40|final_cont~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|milhar_q[1]~2_combout\,
	datab => \inst13|inst23|pode_contar~2_combout\,
	datac => \inst13|inst40|final_cont~5_combout\,
	datad => \inst13|inst40|final_cont~16_combout\,
	combout => \inst13|inst23|milhar_q[1]~8_combout\);

-- Location: LCCOMB_X23_Y12_N30
\inst13|inst23|centena_q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|centena_q[3]~2_combout\ = (\inst13|inst23|milhar_q[1]~8_combout\ & (!\inst13|inst23|_~3_combout\ & (\inst13|inst23|op_3~0_combout\))) # (!\inst13|inst23|milhar_q[1]~8_combout\ & (((\inst13|inst23|centena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~3_combout\,
	datab => \inst13|inst23|op_3~0_combout\,
	datac => \inst13|inst23|centena_q\(3),
	datad => \inst13|inst23|milhar_q[1]~8_combout\,
	combout => \inst13|inst23|centena_q[3]~2_combout\);

-- Location: FF_X23_Y12_N31
\inst13|inst23|centena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|centena_q[3]~2_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|centena_q\(3));

-- Location: LCCOMB_X23_Y12_N8
\inst13|inst40|final_cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~11_combout\ = (\inst13|inst27|q\(3) & (\inst13|inst23|centena_q\(3) & (\inst13|inst23|centena_q\(2) $ (!\inst13|inst27|q\(2))))) # (!\inst13|inst27|q\(3) & (!\inst13|inst23|centena_q\(3) & (\inst13|inst23|centena_q\(2) $ 
-- (!\inst13|inst27|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|q\(3),
	datab => \inst13|inst23|centena_q\(2),
	datac => \inst13|inst27|q\(2),
	datad => \inst13|inst23|centena_q\(3),
	combout => \inst13|inst40|final_cont~11_combout\);

-- Location: LCCOMB_X22_Y12_N14
\inst13|inst23|milhar_q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|milhar_q[0]~5_combout\ = \inst13|inst23|milhar_q\(0) $ (((\inst13|inst23|milhar_q[1]~2_combout\ & (\inst13|inst23|_~3_combout\ & \inst13|inst23|pode_contar~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|milhar_q[1]~2_combout\,
	datab => \inst13|inst23|_~3_combout\,
	datac => \inst13|inst23|milhar_q\(0),
	datad => \inst13|inst23|pode_contar~combout\,
	combout => \inst13|inst23|milhar_q[0]~5_combout\);

-- Location: FF_X22_Y12_N15
\inst13|inst23|milhar_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|milhar_q[0]~5_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|milhar_q\(0));

-- Location: LCCOMB_X23_Y12_N6
\inst13|inst23|milhar_q[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|milhar_q[1]~9_combout\ = (\inst13|inst21|comp_flag_q~q\ & (!\inst13|inst50|pausa_q~q\ & \inst13|inst23|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst21|comp_flag_q~q\,
	datac => \inst13|inst50|pausa_q~q\,
	datad => \inst13|inst23|_~3_combout\,
	combout => \inst13|inst23|milhar_q[1]~9_combout\);

-- Location: LCCOMB_X23_Y12_N28
\inst13|inst23|milhar_q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|milhar_q[1]~3_combout\ = (\inst13|inst23|milhar_q[1]~9_combout\ & (\inst13|inst23|milhar_q[1]~2_combout\ & (!\inst13|inst40|final_cont~5_combout\ & !\inst13|inst40|final_cont~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|milhar_q[1]~9_combout\,
	datab => \inst13|inst23|milhar_q[1]~2_combout\,
	datac => \inst13|inst40|final_cont~5_combout\,
	datad => \inst13|inst40|final_cont~16_combout\,
	combout => \inst13|inst23|milhar_q[1]~3_combout\);

-- Location: LCCOMB_X23_Y12_N16
\inst13|inst23|milhar_q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|milhar_q[1]~7_combout\ = (\inst13|inst23|milhar_q[1]~3_combout\ & (!\inst13|inst23|_~2_combout\ & (\inst13|inst23|milhar_q\(0) $ (\inst13|inst23|milhar_q\(1))))) # (!\inst13|inst23|milhar_q[1]~3_combout\ & (((\inst13|inst23|milhar_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~2_combout\,
	datab => \inst13|inst23|milhar_q\(0),
	datac => \inst13|inst23|milhar_q\(1),
	datad => \inst13|inst23|milhar_q[1]~3_combout\,
	combout => \inst13|inst23|milhar_q[1]~7_combout\);

-- Location: FF_X23_Y12_N17
\inst13|inst23|milhar_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|milhar_q[1]~7_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|milhar_q\(1));

-- Location: LCCOMB_X23_Y12_N14
\inst13|inst23|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|op_4~0_combout\ = \inst13|inst23|milhar_q\(3) $ (((\inst13|inst23|milhar_q\(0) & (\inst13|inst23|milhar_q\(2) & \inst13|inst23|milhar_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|milhar_q\(0),
	datab => \inst13|inst23|milhar_q\(2),
	datac => \inst13|inst23|milhar_q\(3),
	datad => \inst13|inst23|milhar_q\(1),
	combout => \inst13|inst23|op_4~0_combout\);

-- Location: LCCOMB_X23_Y12_N12
\inst13|inst23|milhar_q[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|milhar_q[3]~4_combout\ = (\inst13|inst23|milhar_q[1]~3_combout\ & (!\inst13|inst23|_~2_combout\ & (\inst13|inst23|op_4~0_combout\))) # (!\inst13|inst23|milhar_q[1]~3_combout\ & (((\inst13|inst23|milhar_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~2_combout\,
	datab => \inst13|inst23|op_4~0_combout\,
	datac => \inst13|inst23|milhar_q\(3),
	datad => \inst13|inst23|milhar_q[1]~3_combout\,
	combout => \inst13|inst23|milhar_q[3]~4_combout\);

-- Location: FF_X23_Y12_N13
\inst13|inst23|milhar_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|milhar_q[3]~4_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|milhar_q\(3));

-- Location: LCCOMB_X22_Y12_N20
\inst13|inst23|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|_~2_combout\ = (\inst13|inst23|milhar_q\(0) & (!\inst13|inst23|milhar_q\(2) & (\inst13|inst23|milhar_q\(3) & !\inst13|inst23|milhar_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|milhar_q\(0),
	datab => \inst13|inst23|milhar_q\(2),
	datac => \inst13|inst23|milhar_q\(3),
	datad => \inst13|inst23|milhar_q\(1),
	combout => \inst13|inst23|_~2_combout\);

-- Location: LCCOMB_X23_Y12_N22
\inst13|inst23|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|op_4~1_combout\ = \inst13|inst23|milhar_q\(2) $ (((\inst13|inst23|milhar_q\(0) & \inst13|inst23|milhar_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|milhar_q\(0),
	datac => \inst13|inst23|milhar_q\(1),
	datad => \inst13|inst23|milhar_q\(2),
	combout => \inst13|inst23|op_4~1_combout\);

-- Location: LCCOMB_X23_Y12_N10
\inst13|inst23|milhar_q[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|milhar_q[2]~6_combout\ = (\inst13|inst23|milhar_q[1]~3_combout\ & (!\inst13|inst23|_~2_combout\ & (\inst13|inst23|op_4~1_combout\))) # (!\inst13|inst23|milhar_q[1]~3_combout\ & (((\inst13|inst23|milhar_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~2_combout\,
	datab => \inst13|inst23|op_4~1_combout\,
	datac => \inst13|inst23|milhar_q\(2),
	datad => \inst13|inst23|milhar_q[1]~3_combout\,
	combout => \inst13|inst23|milhar_q[2]~6_combout\);

-- Location: FF_X23_Y12_N11
\inst13|inst23|milhar_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|milhar_q[2]~6_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|milhar_q\(2));

-- Location: LCCOMB_X23_Y12_N4
\inst13|inst40|final_cont~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~13_combout\ = (\inst13|inst23|milhar_q\(2) & (\inst13|inst28|q\(2) & (\inst13|inst28|q\(3) $ (!\inst13|inst23|milhar_q\(3))))) # (!\inst13|inst23|milhar_q\(2) & (!\inst13|inst28|q\(2) & (\inst13|inst28|q\(3) $ 
-- (!\inst13|inst23|milhar_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|milhar_q\(2),
	datab => \inst13|inst28|q\(3),
	datac => \inst13|inst28|q\(2),
	datad => \inst13|inst23|milhar_q\(3),
	combout => \inst13|inst40|final_cont~13_combout\);

-- Location: LCCOMB_X23_Y12_N2
\inst13|inst40|final_cont~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~14_combout\ = (\inst13|inst28|q\(1) & (\inst13|inst23|milhar_q\(1) & (\inst13|inst28|q\(0) $ (!\inst13|inst23|milhar_q\(0))))) # (!\inst13|inst28|q\(1) & (!\inst13|inst23|milhar_q\(1) & (\inst13|inst28|q\(0) $ 
-- (!\inst13|inst23|milhar_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst28|q\(1),
	datab => \inst13|inst23|milhar_q\(1),
	datac => \inst13|inst28|q\(0),
	datad => \inst13|inst23|milhar_q\(0),
	combout => \inst13|inst40|final_cont~14_combout\);

-- Location: LCCOMB_X23_Y12_N24
\inst13|inst40|final_cont~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~15_combout\ = (\inst13|inst40|final_cont~12_combout\ & (\inst13|inst40|final_cont~11_combout\ & (\inst13|inst40|final_cont~13_combout\ & \inst13|inst40|final_cont~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst40|final_cont~12_combout\,
	datab => \inst13|inst40|final_cont~11_combout\,
	datac => \inst13|inst40|final_cont~13_combout\,
	datad => \inst13|inst40|final_cont~14_combout\,
	combout => \inst13|inst40|final_cont~15_combout\);

-- Location: LCCOMB_X22_Y11_N26
\inst13|inst40|final_cont~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~16_combout\ = (\inst13|inst21|comp_flag_q~q\ & (\inst13|inst40|final_cont~10_combout\ & (!\inst13|inst40|_~0_combout\ & \inst13|inst40|final_cont~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst21|comp_flag_q~q\,
	datab => \inst13|inst40|final_cont~10_combout\,
	datac => \inst13|inst40|_~0_combout\,
	datad => \inst13|inst40|final_cont~15_combout\,
	combout => \inst13|inst40|final_cont~16_combout\);

-- Location: LCCOMB_X21_Y12_N16
\inst13|inst23|unidade_q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|unidade_q[0]~1_combout\ = \inst13|inst23|unidade_q\(0) $ (((\inst13|inst23|pode_contar~2_combout\ & (!\inst13|inst40|final_cont~5_combout\ & !\inst13|inst40|final_cont~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|pode_contar~2_combout\,
	datab => \inst13|inst40|final_cont~5_combout\,
	datac => \inst13|inst23|unidade_q\(0),
	datad => \inst13|inst40|final_cont~16_combout\,
	combout => \inst13|inst23|unidade_q[0]~1_combout\);

-- Location: FF_X21_Y12_N17
\inst13|inst23|unidade_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|unidade_q[0]~1_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|unidade_q\(0));

-- Location: LCCOMB_X21_Y12_N14
\inst13|inst23|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|op_1~1_combout\ = \inst13|inst23|unidade_q\(2) $ (((\inst13|inst23|unidade_q\(0) & \inst13|inst23|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst23|unidade_q\(0),
	datac => \inst13|inst23|unidade_q\(1),
	datad => \inst13|inst23|unidade_q\(2),
	combout => \inst13|inst23|op_1~1_combout\);

-- Location: LCCOMB_X21_Y12_N10
\inst13|inst23|unidade_q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|unidade_q[2]~2_combout\ = (\inst13|inst23|pode_contar~combout\ & (!\inst13|inst23|_~0_combout\ & (\inst13|inst23|op_1~1_combout\))) # (!\inst13|inst23|pode_contar~combout\ & (((\inst13|inst23|unidade_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~0_combout\,
	datab => \inst13|inst23|op_1~1_combout\,
	datac => \inst13|inst23|unidade_q\(2),
	datad => \inst13|inst23|pode_contar~combout\,
	combout => \inst13|inst23|unidade_q[2]~2_combout\);

-- Location: FF_X21_Y12_N11
\inst13|inst23|unidade_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|unidade_q[2]~2_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|unidade_q\(2));

-- Location: LCCOMB_X21_Y12_N6
\inst13|inst23|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|_~0_combout\ = (!\inst13|inst23|unidade_q\(2) & (\inst13|inst23|unidade_q\(3) & (!\inst13|inst23|unidade_q\(1) & \inst13|inst23|unidade_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|unidade_q\(2),
	datab => \inst13|inst23|unidade_q\(3),
	datac => \inst13|inst23|unidade_q\(1),
	datad => \inst13|inst23|unidade_q\(0),
	combout => \inst13|inst23|_~0_combout\);

-- Location: LCCOMB_X21_Y12_N0
\inst13|inst23|dezena_q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|dezena_q[0]~2_combout\ = \inst13|inst23|dezena_q\(0) $ (((\inst13|inst23|_~0_combout\ & \inst13|inst23|pode_contar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~0_combout\,
	datac => \inst13|inst23|dezena_q\(0),
	datad => \inst13|inst23|pode_contar~combout\,
	combout => \inst13|inst23|dezena_q[0]~2_combout\);

-- Location: FF_X21_Y12_N1
\inst13|inst23|dezena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|dezena_q[0]~2_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|dezena_q\(0));

-- Location: LCCOMB_X22_Y12_N22
\inst13|inst23|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|op_2~1_combout\ = \inst13|inst23|dezena_q\(2) $ (((\inst13|inst23|dezena_q\(0) & \inst13|inst23|dezena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|dezena_q\(0),
	datac => \inst13|inst23|dezena_q\(2),
	datad => \inst13|inst23|dezena_q\(1),
	combout => \inst13|inst23|op_2~1_combout\);

-- Location: LCCOMB_X22_Y12_N4
\inst13|inst23|dezena_q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|dezena_q[2]~3_combout\ = (\inst13|inst23|dezena_q[1]~0_combout\ & (\inst13|inst23|op_2~1_combout\ & (!\inst13|inst23|_~1_combout\))) # (!\inst13|inst23|dezena_q[1]~0_combout\ & (((\inst13|inst23|dezena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|op_2~1_combout\,
	datab => \inst13|inst23|_~1_combout\,
	datac => \inst13|inst23|dezena_q\(2),
	datad => \inst13|inst23|dezena_q[1]~0_combout\,
	combout => \inst13|inst23|dezena_q[2]~3_combout\);

-- Location: FF_X22_Y12_N5
\inst13|inst23|dezena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|dezena_q[2]~3_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|dezena_q\(2));

-- Location: LCCOMB_X22_Y12_N8
\inst13|inst23|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|_~1_combout\ = (!\inst13|inst23|dezena_q\(2) & (\inst13|inst23|dezena_q\(3) & (\inst13|inst23|dezena_q\(0) & !\inst13|inst23|dezena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|dezena_q\(2),
	datab => \inst13|inst23|dezena_q\(3),
	datac => \inst13|inst23|dezena_q\(0),
	datad => \inst13|inst23|dezena_q\(1),
	combout => \inst13|inst23|_~1_combout\);

-- Location: LCCOMB_X22_Y12_N18
\inst13|inst23|centena_q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|centena_q[0]~5_combout\ = \inst13|inst23|centena_q\(0) $ (((\inst13|inst23|_~1_combout\ & (\inst13|inst23|_~0_combout\ & \inst13|inst23|pode_contar~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~1_combout\,
	datab => \inst13|inst23|_~0_combout\,
	datac => \inst13|inst23|centena_q\(0),
	datad => \inst13|inst23|pode_contar~combout\,
	combout => \inst13|inst23|centena_q[0]~5_combout\);

-- Location: FF_X22_Y12_N19
\inst13|inst23|centena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|centena_q[0]~5_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|centena_q\(0));

-- Location: LCCOMB_X23_Y12_N18
\inst13|inst23|centena_q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|centena_q[1]~4_combout\ = (\inst13|inst23|milhar_q[1]~8_combout\ & (!\inst13|inst23|_~3_combout\ & (\inst13|inst23|centena_q\(0) $ (\inst13|inst23|centena_q\(1))))) # (!\inst13|inst23|milhar_q[1]~8_combout\ & 
-- (((\inst13|inst23|centena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~3_combout\,
	datab => \inst13|inst23|centena_q\(0),
	datac => \inst13|inst23|centena_q\(1),
	datad => \inst13|inst23|milhar_q[1]~8_combout\,
	combout => \inst13|inst23|centena_q[1]~4_combout\);

-- Location: FF_X23_Y12_N19
\inst13|inst23|centena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|centena_q[1]~4_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|centena_q\(1));

-- Location: LCCOMB_X23_Y15_N24
\inst13|inst23|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|op_3~1_combout\ = \inst13|inst23|centena_q\(2) $ (((\inst13|inst23|centena_q\(1) & \inst13|inst23|centena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst23|centena_q\(1),
	datac => \inst13|inst23|centena_q\(0),
	datad => \inst13|inst23|centena_q\(2),
	combout => \inst13|inst23|op_3~1_combout\);

-- Location: LCCOMB_X23_Y12_N20
\inst13|inst23|centena_q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|centena_q[2]~3_combout\ = (\inst13|inst23|milhar_q[1]~8_combout\ & (!\inst13|inst23|_~3_combout\ & (\inst13|inst23|op_3~1_combout\))) # (!\inst13|inst23|milhar_q[1]~8_combout\ & (((\inst13|inst23|centena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~3_combout\,
	datab => \inst13|inst23|op_3~1_combout\,
	datac => \inst13|inst23|centena_q\(2),
	datad => \inst13|inst23|milhar_q[1]~8_combout\,
	combout => \inst13|inst23|centena_q[2]~3_combout\);

-- Location: FF_X23_Y12_N21
\inst13|inst23|centena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst13|inst23|centena_q[2]~3_combout\,
	clrn => \inst13|inst23|ALT_INV_reset_final_pulse~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst23|centena_q\(2));

-- Location: LCCOMB_X22_Y12_N26
\inst13|inst23|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst23|_~3_combout\ = (!\inst13|inst23|centena_q\(2) & (\inst13|inst23|centena_q\(0) & (\inst13|inst23|centena_q\(3) & !\inst13|inst23|centena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|centena_q\(2),
	datab => \inst13|inst23|centena_q\(0),
	datac => \inst13|inst23|centena_q\(3),
	datad => \inst13|inst23|centena_q\(1),
	combout => \inst13|inst23|_~3_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst13|inst40|final_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~4_combout\ = (\inst13|inst23|_~3_combout\ & (\inst13|inst23|_~0_combout\ & (\inst13|inst23|_~1_combout\ & \inst13|inst23|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|_~3_combout\,
	datab => \inst13|inst23|_~0_combout\,
	datac => \inst13|inst23|_~1_combout\,
	datad => \inst13|inst23|_~2_combout\,
	combout => \inst13|inst40|final_cont~4_combout\);

-- Location: LCCOMB_X22_Y11_N16
\inst13|inst40|final_cont~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst40|final_cont~17_combout\ = (\inst13|inst40|final_cont~16_combout\) # ((\inst13|inst40|final_cont~4_combout\ & (\inst13|inst21|comp_flag_q~q\ & \inst13|inst40|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst40|final_cont~4_combout\,
	datab => \inst13|inst21|comp_flag_q~q\,
	datac => \inst13|inst40|final_cont~16_combout\,
	datad => \inst13|inst40|_~0_combout\,
	combout => \inst13|inst40|final_cont~17_combout\);

-- Location: FF_X22_Y11_N17
\inst7|flag_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst40|final_cont~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|flag_reg\(1));

-- Location: LCCOMB_X22_Y11_N6
\inst7|flag_pulse[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|flag_pulse\(1) = (!\inst7|flag_reg\(1) & ((\inst13|inst40|final_cont~16_combout\) # (\inst13|inst40|final_cont~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|flag_reg\(1),
	datac => \inst13|inst40|final_cont~16_combout\,
	datad => \inst13|inst40|final_cont~5_combout\,
	combout => \inst7|flag_pulse\(1));

-- Location: LCCOMB_X26_Y15_N26
\inst7|reset_pulse~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|reset_pulse~1_combout\ = (\inst7|deb_reg\(3) & (((!\inst7|deb_reg\(4) & \inst20|inst3|ff3~q\)))) # (!\inst7|deb_reg\(3) & ((\inst20|inst2|ff3~q\) # ((!\inst7|deb_reg\(4) & \inst20|inst3|ff3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|deb_reg\(3),
	datab => \inst20|inst2|ff3~q\,
	datac => \inst7|deb_reg\(4),
	datad => \inst20|inst3|ff3~q\,
	combout => \inst7|reset_pulse~1_combout\);

-- Location: LCCOMB_X22_Y11_N0
\inst7|reset_pulse~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|reset_pulse~0_combout\ = (\inst7|deb_reg\(1) & (!\inst7|deb_reg\(2) & (\inst20|inst1|ff3~q\))) # (!\inst7|deb_reg\(1) & ((\inst20|inst|ff3~q\) # ((!\inst7|deb_reg\(2) & \inst20|inst1|ff3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|deb_reg\(1),
	datab => \inst7|deb_reg\(2),
	datac => \inst20|inst1|ff3~q\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst7|reset_pulse~0_combout\);

-- Location: LCCOMB_X22_Y11_N12
\inst7|perm_alarme_q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|perm_alarme_q[2]~3_combout\ = (!\inst7|flag_pulse\(1) & (!\inst7|reset_pulse~1_combout\ & !\inst7|reset_pulse~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|flag_pulse\(1),
	datac => \inst7|reset_pulse~1_combout\,
	datad => \inst7|reset_pulse~0_combout\,
	combout => \inst7|perm_alarme_q[2]~3_combout\);

-- Location: LCCOMB_X22_Y11_N28
\inst7|perm_alarme_q[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|perm_alarme_q[2]~5_combout\ = (\inst7|perm_alarme_q[2]~3_combout\ & ((\inst7|flag_pulse\(2)) # ((\inst7|perm_alarme_q[1]~4_combout\ & \inst7|perm_alarme_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|perm_alarme_q[2]~3_combout\,
	datab => \inst7|perm_alarme_q[1]~4_combout\,
	datac => \inst7|perm_alarme_q\(2),
	datad => \inst7|flag_pulse\(2),
	combout => \inst7|perm_alarme_q[2]~5_combout\);

-- Location: FF_X22_Y11_N29
\inst7|perm_alarme_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|perm_alarme_q[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|perm_alarme_q\(2));

-- Location: LCCOMB_X22_Y11_N10
\inst7|perm_alarme_q[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|perm_alarme_q[4]~0_combout\ = (!\inst7|flag_pulse\(1) & (!\inst7|reset_pulse~0_combout\ & (!\inst7|reset_pulse~1_combout\ & !\inst7|flag_pulse\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|flag_pulse\(1),
	datab => \inst7|reset_pulse~0_combout\,
	datac => \inst7|reset_pulse~1_combout\,
	datad => \inst7|flag_pulse\(2),
	combout => \inst7|perm_alarme_q[4]~0_combout\);

-- Location: LCCOMB_X22_Y11_N8
\inst7|perm_alarme_q[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|perm_alarme_q[4]~1_combout\ = (!\inst7|flag_pulse\(3) & (\inst7|perm_alarme_q[4]~0_combout\ & ((\inst7|flag_pulse\(4)) # (\inst7|perm_alarme_q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|flag_pulse\(4),
	datab => \inst7|flag_pulse\(3),
	datac => \inst7|perm_alarme_q\(4),
	datad => \inst7|perm_alarme_q[4]~0_combout\,
	combout => \inst7|perm_alarme_q[4]~1_combout\);

-- Location: FF_X22_Y11_N9
\inst7|perm_alarme_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|perm_alarme_q[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|perm_alarme_q\(4));

-- Location: LCCOMB_X29_Y18_N16
\inst13|inst46|inst4|q[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[4]~29_combout\ = (\inst13|inst46|inst4|q\(4) & (!\inst13|inst46|inst4|q[3]~28\)) # (!\inst13|inst46|inst4|q\(4) & ((\inst13|inst46|inst4|q[3]~28\) # (GND)))
-- \inst13|inst46|inst4|q[4]~30\ = CARRY((!\inst13|inst46|inst4|q[3]~28\) # (!\inst13|inst46|inst4|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(4),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[3]~28\,
	combout => \inst13|inst46|inst4|q[4]~29_combout\,
	cout => \inst13|inst46|inst4|q[4]~30\);

-- Location: LCCOMB_X29_Y18_N18
\inst13|inst46|inst4|q[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[5]~31_combout\ = (\inst13|inst46|inst4|q\(5) & (\inst13|inst46|inst4|q[4]~30\ $ (GND))) # (!\inst13|inst46|inst4|q\(5) & (!\inst13|inst46|inst4|q[4]~30\ & VCC))
-- \inst13|inst46|inst4|q[5]~32\ = CARRY((\inst13|inst46|inst4|q\(5) & !\inst13|inst46|inst4|q[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(5),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[4]~30\,
	combout => \inst13|inst46|inst4|q[5]~31_combout\,
	cout => \inst13|inst46|inst4|q[5]~32\);

-- Location: LCCOMB_X29_Y17_N10
\inst13|inst46|inst4|q[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[17]~55_combout\ = (\inst13|inst46|inst4|q\(17) & (\inst13|inst46|inst4|q[16]~54\ $ (GND))) # (!\inst13|inst46|inst4|q\(17) & (!\inst13|inst46|inst4|q[16]~54\ & VCC))
-- \inst13|inst46|inst4|q[17]~56\ = CARRY((\inst13|inst46|inst4|q\(17) & !\inst13|inst46|inst4|q[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(17),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[16]~54\,
	combout => \inst13|inst46|inst4|q[17]~55_combout\,
	cout => \inst13|inst46|inst4|q[17]~56\);

-- Location: LCCOMB_X29_Y17_N12
\inst13|inst46|inst4|q[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[18]~57_combout\ = (\inst13|inst46|inst4|q\(18) & (!\inst13|inst46|inst4|q[17]~56\)) # (!\inst13|inst46|inst4|q\(18) & ((\inst13|inst46|inst4|q[17]~56\) # (GND)))
-- \inst13|inst46|inst4|q[18]~58\ = CARRY((!\inst13|inst46|inst4|q[17]~56\) # (!\inst13|inst46|inst4|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(18),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[17]~56\,
	combout => \inst13|inst46|inst4|q[18]~57_combout\,
	cout => \inst13|inst46|inst4|q[18]~58\);

-- Location: FF_X29_Y17_N13
\inst13|inst46|inst4|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[18]~57_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(18));

-- Location: LCCOMB_X29_Y17_N14
\inst13|inst46|inst4|q[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[19]~59_combout\ = (\inst13|inst46|inst4|q\(19) & (\inst13|inst46|inst4|q[18]~58\ $ (GND))) # (!\inst13|inst46|inst4|q\(19) & (!\inst13|inst46|inst4|q[18]~58\ & VCC))
-- \inst13|inst46|inst4|q[19]~60\ = CARRY((\inst13|inst46|inst4|q\(19) & !\inst13|inst46|inst4|q[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(19),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[18]~58\,
	combout => \inst13|inst46|inst4|q[19]~59_combout\,
	cout => \inst13|inst46|inst4|q[19]~60\);

-- Location: FF_X29_Y17_N15
\inst13|inst46|inst4|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[19]~59_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(19));

-- Location: LCCOMB_X29_Y17_N16
\inst13|inst46|inst4|q[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[20]~61_combout\ = (\inst13|inst46|inst4|q\(20) & (!\inst13|inst46|inst4|q[19]~60\)) # (!\inst13|inst46|inst4|q\(20) & ((\inst13|inst46|inst4|q[19]~60\) # (GND)))
-- \inst13|inst46|inst4|q[20]~62\ = CARRY((!\inst13|inst46|inst4|q[19]~60\) # (!\inst13|inst46|inst4|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(20),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[19]~60\,
	combout => \inst13|inst46|inst4|q[20]~61_combout\,
	cout => \inst13|inst46|inst4|q[20]~62\);

-- Location: FF_X29_Y17_N17
\inst13|inst46|inst4|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[20]~61_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(20));

-- Location: LCCOMB_X29_Y17_N18
\inst13|inst46|inst4|q[21]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[21]~63_combout\ = (\inst13|inst46|inst4|q\(21) & (\inst13|inst46|inst4|q[20]~62\ $ (GND))) # (!\inst13|inst46|inst4|q\(21) & (!\inst13|inst46|inst4|q[20]~62\ & VCC))
-- \inst13|inst46|inst4|q[21]~64\ = CARRY((\inst13|inst46|inst4|q\(21) & !\inst13|inst46|inst4|q[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(21),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[20]~62\,
	combout => \inst13|inst46|inst4|q[21]~63_combout\,
	cout => \inst13|inst46|inst4|q[21]~64\);

-- Location: FF_X29_Y17_N19
\inst13|inst46|inst4|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[21]~63_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(21));

-- Location: LCCOMB_X29_Y17_N20
\inst13|inst46|inst4|q[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[22]~65_combout\ = (\inst13|inst46|inst4|q\(22) & (!\inst13|inst46|inst4|q[21]~64\)) # (!\inst13|inst46|inst4|q\(22) & ((\inst13|inst46|inst4|q[21]~64\) # (GND)))
-- \inst13|inst46|inst4|q[22]~66\ = CARRY((!\inst13|inst46|inst4|q[21]~64\) # (!\inst13|inst46|inst4|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(22),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[21]~64\,
	combout => \inst13|inst46|inst4|q[22]~65_combout\,
	cout => \inst13|inst46|inst4|q[22]~66\);

-- Location: FF_X29_Y17_N21
\inst13|inst46|inst4|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[22]~65_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(22));

-- Location: LCCOMB_X29_Y17_N22
\inst13|inst46|inst4|q[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[23]~67_combout\ = \inst13|inst46|inst4|q\(23) $ (!\inst13|inst46|inst4|q[22]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(23),
	cin => \inst13|inst46|inst4|q[22]~66\,
	combout => \inst13|inst46|inst4|q[23]~67_combout\);

-- Location: FF_X29_Y17_N23
\inst13|inst46|inst4|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[23]~67_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(23));

-- Location: LCCOMB_X29_Y17_N28
\inst13|inst46|inst4|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|_~6_combout\ = (\inst13|inst46|inst4|q\(21) & (\inst13|inst46|inst4|q\(20) & (\inst13|inst46|inst4|q\(23) & !\inst13|inst46|inst4|q\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(21),
	datab => \inst13|inst46|inst4|q\(20),
	datac => \inst13|inst46|inst4|q\(23),
	datad => \inst13|inst46|inst4|q\(22),
	combout => \inst13|inst46|inst4|_~6_combout\);

-- Location: LCCOMB_X29_Y18_N8
\inst13|inst46|inst4|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|_~8_combout\ = (\inst13|inst46|inst4|_~6_combout\ & (\inst13|inst46|inst4|_~5_combout\ & \inst13|inst46|inst4|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|_~6_combout\,
	datac => \inst13|inst46|inst4|_~5_combout\,
	datad => \inst13|inst46|inst4|_~4_combout\,
	combout => \inst13|inst46|inst4|_~8_combout\);

-- Location: FF_X29_Y18_N19
\inst13|inst46|inst4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[5]~31_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(5));

-- Location: LCCOMB_X29_Y18_N20
\inst13|inst46|inst4|q[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[6]~33_combout\ = (\inst13|inst46|inst4|q\(6) & (!\inst13|inst46|inst4|q[5]~32\)) # (!\inst13|inst46|inst4|q\(6) & ((\inst13|inst46|inst4|q[5]~32\) # (GND)))
-- \inst13|inst46|inst4|q[6]~34\ = CARRY((!\inst13|inst46|inst4|q[5]~32\) # (!\inst13|inst46|inst4|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(6),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[5]~32\,
	combout => \inst13|inst46|inst4|q[6]~33_combout\,
	cout => \inst13|inst46|inst4|q[6]~34\);

-- Location: FF_X29_Y18_N21
\inst13|inst46|inst4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[6]~33_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(6));

-- Location: LCCOMB_X29_Y18_N22
\inst13|inst46|inst4|q[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[7]~35_combout\ = (\inst13|inst46|inst4|q\(7) & (\inst13|inst46|inst4|q[6]~34\ $ (GND))) # (!\inst13|inst46|inst4|q\(7) & (!\inst13|inst46|inst4|q[6]~34\ & VCC))
-- \inst13|inst46|inst4|q[7]~36\ = CARRY((\inst13|inst46|inst4|q\(7) & !\inst13|inst46|inst4|q[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(7),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[6]~34\,
	combout => \inst13|inst46|inst4|q[7]~35_combout\,
	cout => \inst13|inst46|inst4|q[7]~36\);

-- Location: FF_X29_Y18_N23
\inst13|inst46|inst4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[7]~35_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(7));

-- Location: LCCOMB_X29_Y18_N24
\inst13|inst46|inst4|q[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[8]~37_combout\ = (\inst13|inst46|inst4|q\(8) & (!\inst13|inst46|inst4|q[7]~36\)) # (!\inst13|inst46|inst4|q\(8) & ((\inst13|inst46|inst4|q[7]~36\) # (GND)))
-- \inst13|inst46|inst4|q[8]~38\ = CARRY((!\inst13|inst46|inst4|q[7]~36\) # (!\inst13|inst46|inst4|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(8),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[7]~36\,
	combout => \inst13|inst46|inst4|q[8]~37_combout\,
	cout => \inst13|inst46|inst4|q[8]~38\);

-- Location: FF_X29_Y18_N25
\inst13|inst46|inst4|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[8]~37_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(8));

-- Location: LCCOMB_X29_Y18_N26
\inst13|inst46|inst4|q[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[9]~39_combout\ = (\inst13|inst46|inst4|q\(9) & (\inst13|inst46|inst4|q[8]~38\ $ (GND))) # (!\inst13|inst46|inst4|q\(9) & (!\inst13|inst46|inst4|q[8]~38\ & VCC))
-- \inst13|inst46|inst4|q[9]~40\ = CARRY((\inst13|inst46|inst4|q\(9) & !\inst13|inst46|inst4|q[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(9),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[8]~38\,
	combout => \inst13|inst46|inst4|q[9]~39_combout\,
	cout => \inst13|inst46|inst4|q[9]~40\);

-- Location: FF_X29_Y18_N27
\inst13|inst46|inst4|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[9]~39_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(9));

-- Location: LCCOMB_X29_Y18_N28
\inst13|inst46|inst4|q[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[10]~41_combout\ = (\inst13|inst46|inst4|q\(10) & (!\inst13|inst46|inst4|q[9]~40\)) # (!\inst13|inst46|inst4|q\(10) & ((\inst13|inst46|inst4|q[9]~40\) # (GND)))
-- \inst13|inst46|inst4|q[10]~42\ = CARRY((!\inst13|inst46|inst4|q[9]~40\) # (!\inst13|inst46|inst4|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(10),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[9]~40\,
	combout => \inst13|inst46|inst4|q[10]~41_combout\,
	cout => \inst13|inst46|inst4|q[10]~42\);

-- Location: FF_X29_Y18_N29
\inst13|inst46|inst4|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[10]~41_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(10));

-- Location: LCCOMB_X29_Y18_N30
\inst13|inst46|inst4|q[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[11]~43_combout\ = (\inst13|inst46|inst4|q\(11) & (\inst13|inst46|inst4|q[10]~42\ $ (GND))) # (!\inst13|inst46|inst4|q\(11) & (!\inst13|inst46|inst4|q[10]~42\ & VCC))
-- \inst13|inst46|inst4|q[11]~44\ = CARRY((\inst13|inst46|inst4|q\(11) & !\inst13|inst46|inst4|q[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(11),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[10]~42\,
	combout => \inst13|inst46|inst4|q[11]~43_combout\,
	cout => \inst13|inst46|inst4|q[11]~44\);

-- Location: FF_X29_Y18_N31
\inst13|inst46|inst4|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[11]~43_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(11));

-- Location: LCCOMB_X29_Y17_N0
\inst13|inst46|inst4|q[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[12]~45_combout\ = (\inst13|inst46|inst4|q\(12) & (!\inst13|inst46|inst4|q[11]~44\)) # (!\inst13|inst46|inst4|q\(12) & ((\inst13|inst46|inst4|q[11]~44\) # (GND)))
-- \inst13|inst46|inst4|q[12]~46\ = CARRY((!\inst13|inst46|inst4|q[11]~44\) # (!\inst13|inst46|inst4|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(12),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[11]~44\,
	combout => \inst13|inst46|inst4|q[12]~45_combout\,
	cout => \inst13|inst46|inst4|q[12]~46\);

-- Location: FF_X29_Y17_N1
\inst13|inst46|inst4|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[12]~45_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(12));

-- Location: LCCOMB_X29_Y17_N2
\inst13|inst46|inst4|q[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[13]~47_combout\ = (\inst13|inst46|inst4|q\(13) & (\inst13|inst46|inst4|q[12]~46\ $ (GND))) # (!\inst13|inst46|inst4|q\(13) & (!\inst13|inst46|inst4|q[12]~46\ & VCC))
-- \inst13|inst46|inst4|q[13]~48\ = CARRY((\inst13|inst46|inst4|q\(13) & !\inst13|inst46|inst4|q[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(13),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[12]~46\,
	combout => \inst13|inst46|inst4|q[13]~47_combout\,
	cout => \inst13|inst46|inst4|q[13]~48\);

-- Location: FF_X29_Y17_N3
\inst13|inst46|inst4|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[13]~47_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(13));

-- Location: LCCOMB_X29_Y17_N4
\inst13|inst46|inst4|q[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[14]~49_combout\ = (\inst13|inst46|inst4|q\(14) & (!\inst13|inst46|inst4|q[13]~48\)) # (!\inst13|inst46|inst4|q\(14) & ((\inst13|inst46|inst4|q[13]~48\) # (GND)))
-- \inst13|inst46|inst4|q[14]~50\ = CARRY((!\inst13|inst46|inst4|q[13]~48\) # (!\inst13|inst46|inst4|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(14),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[13]~48\,
	combout => \inst13|inst46|inst4|q[14]~49_combout\,
	cout => \inst13|inst46|inst4|q[14]~50\);

-- Location: FF_X29_Y17_N5
\inst13|inst46|inst4|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[14]~49_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(14));

-- Location: LCCOMB_X29_Y17_N6
\inst13|inst46|inst4|q[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[15]~51_combout\ = (\inst13|inst46|inst4|q\(15) & (\inst13|inst46|inst4|q[14]~50\ $ (GND))) # (!\inst13|inst46|inst4|q\(15) & (!\inst13|inst46|inst4|q[14]~50\ & VCC))
-- \inst13|inst46|inst4|q[15]~52\ = CARRY((\inst13|inst46|inst4|q\(15) & !\inst13|inst46|inst4|q[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(15),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[14]~50\,
	combout => \inst13|inst46|inst4|q[15]~51_combout\,
	cout => \inst13|inst46|inst4|q[15]~52\);

-- Location: FF_X29_Y17_N7
\inst13|inst46|inst4|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[15]~51_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(15));

-- Location: LCCOMB_X29_Y17_N8
\inst13|inst46|inst4|q[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[16]~53_combout\ = (\inst13|inst46|inst4|q\(16) & (!\inst13|inst46|inst4|q[15]~52\)) # (!\inst13|inst46|inst4|q\(16) & ((\inst13|inst46|inst4|q[15]~52\) # (GND)))
-- \inst13|inst46|inst4|q[16]~54\ = CARRY((!\inst13|inst46|inst4|q[15]~52\) # (!\inst13|inst46|inst4|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(16),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[15]~52\,
	combout => \inst13|inst46|inst4|q[16]~53_combout\,
	cout => \inst13|inst46|inst4|q[16]~54\);

-- Location: FF_X29_Y17_N9
\inst13|inst46|inst4|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[16]~53_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(16));

-- Location: FF_X29_Y17_N11
\inst13|inst46|inst4|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[17]~55_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(17));

-- Location: LCCOMB_X29_Y17_N26
\inst13|inst46|inst4|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|_~5_combout\ = (\inst13|inst46|inst4|q\(17) & (\inst13|inst46|inst4|q\(19) & (!\inst13|inst46|inst4|q\(16) & \inst13|inst46|inst4|q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(17),
	datab => \inst13|inst46|inst4|q\(19),
	datac => \inst13|inst46|inst4|q\(16),
	datad => \inst13|inst46|inst4|q\(18),
	combout => \inst13|inst46|inst4|_~5_combout\);

-- Location: LCCOMB_X30_Y18_N26
\inst13|inst46|inst4|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|_~7_combout\ = (!\inst13|inst46|inst4|q\(0) & (((!\inst13|inst46|inst4|_~6_combout\) # (!\inst13|inst46|inst4|_~5_combout\)) # (!\inst13|inst46|inst4|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|_~4_combout\,
	datab => \inst13|inst46|inst4|_~5_combout\,
	datac => \inst13|inst46|inst4|q\(0),
	datad => \inst13|inst46|inst4|_~6_combout\,
	combout => \inst13|inst46|inst4|_~7_combout\);

-- Location: FF_X30_Y18_N27
\inst13|inst46|inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(0));

-- Location: LCCOMB_X29_Y18_N10
\inst13|inst46|inst4|q[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[1]~23_combout\ = (\inst13|inst46|inst4|q\(1) & (\inst13|inst46|inst4|q\(0) $ (VCC))) # (!\inst13|inst46|inst4|q\(1) & (\inst13|inst46|inst4|q\(0) & VCC))
-- \inst13|inst46|inst4|q[1]~24\ = CARRY((\inst13|inst46|inst4|q\(1) & \inst13|inst46|inst4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(1),
	datab => \inst13|inst46|inst4|q\(0),
	datad => VCC,
	combout => \inst13|inst46|inst4|q[1]~23_combout\,
	cout => \inst13|inst46|inst4|q[1]~24\);

-- Location: FF_X29_Y18_N11
\inst13|inst46|inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[1]~23_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(1));

-- Location: LCCOMB_X29_Y18_N12
\inst13|inst46|inst4|q[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[2]~25_combout\ = (\inst13|inst46|inst4|q\(2) & (!\inst13|inst46|inst4|q[1]~24\)) # (!\inst13|inst46|inst4|q\(2) & ((\inst13|inst46|inst4|q[1]~24\) # (GND)))
-- \inst13|inst46|inst4|q[2]~26\ = CARRY((!\inst13|inst46|inst4|q[1]~24\) # (!\inst13|inst46|inst4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(2),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[1]~24\,
	combout => \inst13|inst46|inst4|q[2]~25_combout\,
	cout => \inst13|inst46|inst4|q[2]~26\);

-- Location: FF_X29_Y18_N13
\inst13|inst46|inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[2]~25_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(2));

-- Location: LCCOMB_X29_Y18_N14
\inst13|inst46|inst4|q[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|q[3]~27_combout\ = (\inst13|inst46|inst4|q\(3) & (\inst13|inst46|inst4|q[2]~26\ $ (GND))) # (!\inst13|inst46|inst4|q\(3) & (!\inst13|inst46|inst4|q[2]~26\ & VCC))
-- \inst13|inst46|inst4|q[3]~28\ = CARRY((\inst13|inst46|inst4|q\(3) & !\inst13|inst46|inst4|q[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst4|q\(3),
	datad => VCC,
	cin => \inst13|inst46|inst4|q[2]~26\,
	combout => \inst13|inst46|inst4|q[3]~27_combout\,
	cout => \inst13|inst46|inst4|q[3]~28\);

-- Location: FF_X29_Y18_N15
\inst13|inst46|inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[3]~27_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(3));

-- Location: FF_X29_Y18_N17
\inst13|inst46|inst4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|q[4]~29_combout\,
	sclr => \inst13|inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|q\(4));

-- Location: LCCOMB_X29_Y18_N6
\inst13|inst46|inst4|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|_~1_combout\ = (!\inst13|inst46|inst4|q\(4) & (\inst13|inst46|inst4|q\(5) & (!\inst13|inst46|inst4|q\(7) & !\inst13|inst46|inst4|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(4),
	datab => \inst13|inst46|inst4|q\(5),
	datac => \inst13|inst46|inst4|q\(7),
	datad => \inst13|inst46|inst4|q\(6),
	combout => \inst13|inst46|inst4|_~1_combout\);

-- Location: LCCOMB_X29_Y18_N0
\inst13|inst46|inst4|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|_~2_combout\ = (\inst13|inst46|inst4|q\(11) & (!\inst13|inst46|inst4|q\(8) & (!\inst13|inst46|inst4|q\(9) & \inst13|inst46|inst4|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(11),
	datab => \inst13|inst46|inst4|q\(8),
	datac => \inst13|inst46|inst4|q\(9),
	datad => \inst13|inst46|inst4|q\(10),
	combout => \inst13|inst46|inst4|_~2_combout\);

-- Location: LCCOMB_X29_Y18_N4
\inst13|inst46|inst4|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|_~0_combout\ = (!\inst13|inst46|inst4|q\(1) & (!\inst13|inst46|inst4|q\(0) & (!\inst13|inst46|inst4|q\(3) & !\inst13|inst46|inst4|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(1),
	datab => \inst13|inst46|inst4|q\(0),
	datac => \inst13|inst46|inst4|q\(3),
	datad => \inst13|inst46|inst4|q\(2),
	combout => \inst13|inst46|inst4|_~0_combout\);

-- Location: LCCOMB_X29_Y17_N24
\inst13|inst46|inst4|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|_~3_combout\ = (\inst13|inst46|inst4|q\(15) & (\inst13|inst46|inst4|q\(13) & (!\inst13|inst46|inst4|q\(14) & \inst13|inst46|inst4|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|q\(15),
	datab => \inst13|inst46|inst4|q\(13),
	datac => \inst13|inst46|inst4|q\(14),
	datad => \inst13|inst46|inst4|q\(12),
	combout => \inst13|inst46|inst4|_~3_combout\);

-- Location: LCCOMB_X29_Y18_N2
\inst13|inst46|inst4|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|_~4_combout\ = (\inst13|inst46|inst4|_~1_combout\ & (\inst13|inst46|inst4|_~2_combout\ & (\inst13|inst46|inst4|_~0_combout\ & \inst13|inst46|inst4|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|_~1_combout\,
	datab => \inst13|inst46|inst4|_~2_combout\,
	datac => \inst13|inst46|inst4|_~0_combout\,
	datad => \inst13|inst46|inst4|_~3_combout\,
	combout => \inst13|inst46|inst4|_~4_combout\);

-- Location: LCCOMB_X30_Y18_N8
\inst13|inst46|inst4|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst4|aux_tff~1_combout\ = \inst13|inst46|inst4|aux_tff~q\ $ (((\inst13|inst46|inst4|_~4_combout\ & (\inst13|inst46|inst4|_~5_combout\ & \inst13|inst46|inst4|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|_~4_combout\,
	datab => \inst13|inst46|inst4|_~5_combout\,
	datac => \inst13|inst46|inst4|aux_tff~q\,
	datad => \inst13|inst46|inst4|_~6_combout\,
	combout => \inst13|inst46|inst4|aux_tff~1_combout\);

-- Location: FF_X30_Y18_N9
\inst13|inst46|inst4|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst4|aux_tff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst4|aux_tff~q\);

-- Location: LCCOMB_X22_Y11_N18
\inst7|perm_alarme_q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|perm_alarme_q[3]~2_combout\ = (\inst7|perm_alarme_q[4]~0_combout\ & ((\inst7|flag_pulse\(3)) # ((!\inst7|flag_pulse\(4) & \inst7|perm_alarme_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|flag_pulse\(4),
	datab => \inst7|flag_pulse\(3),
	datac => \inst7|perm_alarme_q\(3),
	datad => \inst7|perm_alarme_q[4]~0_combout\,
	combout => \inst7|perm_alarme_q[3]~2_combout\);

-- Location: FF_X22_Y11_N19
\inst7|perm_alarme_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|perm_alarme_q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|perm_alarme_q\(3));

-- Location: LCCOMB_X26_Y15_N8
\inst28|alarme_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|alarme_out~0_combout\ = (\inst13|inst46|inst4|aux_tff~q\ & ((\inst7|perm_alarme_q\(2)) # ((\inst7|perm_alarme_q\(4)) # (\inst7|perm_alarme_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|perm_alarme_q\(2),
	datab => \inst7|perm_alarme_q\(4),
	datac => \inst13|inst46|inst4|aux_tff~q\,
	datad => \inst7|perm_alarme_q\(3),
	combout => \inst28|alarme_out~0_combout\);

-- Location: LCCOMB_X21_Y8_N28
\inst10|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|_~4_combout\ = (!\inst10|q\(0) & !\inst10|_~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|q\(0),
	datad => \inst10|_~3_combout\,
	combout => \inst10|_~4_combout\);

-- Location: FF_X21_Y8_N29
\inst10|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(0));

-- Location: LCCOMB_X21_Y8_N0
\inst10|q[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[1]~12_combout\ = (\inst10|q\(0) & (\inst10|q\(1) $ (VCC))) # (!\inst10|q\(0) & (\inst10|q\(1) & VCC))
-- \inst10|q[1]~13\ = CARRY((\inst10|q\(0) & \inst10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|q\(0),
	datab => \inst10|q\(1),
	datad => VCC,
	combout => \inst10|q[1]~12_combout\,
	cout => \inst10|q[1]~13\);

-- Location: FF_X21_Y8_N1
\inst10|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[1]~12_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(1));

-- Location: LCCOMB_X21_Y8_N2
\inst10|q[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[2]~14_combout\ = (\inst10|q\(2) & (!\inst10|q[1]~13\)) # (!\inst10|q\(2) & ((\inst10|q[1]~13\) # (GND)))
-- \inst10|q[2]~15\ = CARRY((!\inst10|q[1]~13\) # (!\inst10|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|q\(2),
	datad => VCC,
	cin => \inst10|q[1]~13\,
	combout => \inst10|q[2]~14_combout\,
	cout => \inst10|q[2]~15\);

-- Location: FF_X21_Y8_N3
\inst10|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[2]~14_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(2));

-- Location: LCCOMB_X21_Y8_N4
\inst10|q[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[3]~16_combout\ = (\inst10|q\(3) & (\inst10|q[2]~15\ $ (GND))) # (!\inst10|q\(3) & (!\inst10|q[2]~15\ & VCC))
-- \inst10|q[3]~17\ = CARRY((\inst10|q\(3) & !\inst10|q[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|q\(3),
	datad => VCC,
	cin => \inst10|q[2]~15\,
	combout => \inst10|q[3]~16_combout\,
	cout => \inst10|q[3]~17\);

-- Location: FF_X21_Y8_N5
\inst10|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[3]~16_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(3));

-- Location: LCCOMB_X21_Y8_N6
\inst10|q[4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[4]~18_combout\ = (\inst10|q\(4) & (!\inst10|q[3]~17\)) # (!\inst10|q\(4) & ((\inst10|q[3]~17\) # (GND)))
-- \inst10|q[4]~19\ = CARRY((!\inst10|q[3]~17\) # (!\inst10|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|q\(4),
	datad => VCC,
	cin => \inst10|q[3]~17\,
	combout => \inst10|q[4]~18_combout\,
	cout => \inst10|q[4]~19\);

-- Location: FF_X21_Y8_N7
\inst10|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[4]~18_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(4));

-- Location: LCCOMB_X21_Y8_N8
\inst10|q[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[5]~20_combout\ = (\inst10|q\(5) & (\inst10|q[4]~19\ $ (GND))) # (!\inst10|q\(5) & (!\inst10|q[4]~19\ & VCC))
-- \inst10|q[5]~21\ = CARRY((\inst10|q\(5) & !\inst10|q[4]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|q\(5),
	datad => VCC,
	cin => \inst10|q[4]~19\,
	combout => \inst10|q[5]~20_combout\,
	cout => \inst10|q[5]~21\);

-- Location: FF_X21_Y8_N9
\inst10|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[5]~20_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(5));

-- Location: LCCOMB_X21_Y8_N10
\inst10|q[6]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[6]~22_combout\ = (\inst10|q\(6) & (!\inst10|q[5]~21\)) # (!\inst10|q\(6) & ((\inst10|q[5]~21\) # (GND)))
-- \inst10|q[6]~23\ = CARRY((!\inst10|q[5]~21\) # (!\inst10|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|q\(6),
	datad => VCC,
	cin => \inst10|q[5]~21\,
	combout => \inst10|q[6]~22_combout\,
	cout => \inst10|q[6]~23\);

-- Location: FF_X21_Y8_N11
\inst10|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[6]~22_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(6));

-- Location: LCCOMB_X21_Y8_N12
\inst10|q[7]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[7]~24_combout\ = (\inst10|q\(7) & (\inst10|q[6]~23\ $ (GND))) # (!\inst10|q\(7) & (!\inst10|q[6]~23\ & VCC))
-- \inst10|q[7]~25\ = CARRY((\inst10|q\(7) & !\inst10|q[6]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|q\(7),
	datad => VCC,
	cin => \inst10|q[6]~23\,
	combout => \inst10|q[7]~24_combout\,
	cout => \inst10|q[7]~25\);

-- Location: FF_X21_Y8_N13
\inst10|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[7]~24_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(7));

-- Location: LCCOMB_X21_Y8_N14
\inst10|q[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[8]~26_combout\ = (\inst10|q\(8) & (!\inst10|q[7]~25\)) # (!\inst10|q\(8) & ((\inst10|q[7]~25\) # (GND)))
-- \inst10|q[8]~27\ = CARRY((!\inst10|q[7]~25\) # (!\inst10|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|q\(8),
	datad => VCC,
	cin => \inst10|q[7]~25\,
	combout => \inst10|q[8]~26_combout\,
	cout => \inst10|q[8]~27\);

-- Location: FF_X21_Y8_N15
\inst10|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[8]~26_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(8));

-- Location: LCCOMB_X21_Y8_N16
\inst10|q[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[9]~28_combout\ = (\inst10|q\(9) & (\inst10|q[8]~27\ $ (GND))) # (!\inst10|q\(9) & (!\inst10|q[8]~27\ & VCC))
-- \inst10|q[9]~29\ = CARRY((\inst10|q\(9) & !\inst10|q[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|q\(9),
	datad => VCC,
	cin => \inst10|q[8]~27\,
	combout => \inst10|q[9]~28_combout\,
	cout => \inst10|q[9]~29\);

-- Location: FF_X21_Y8_N17
\inst10|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[9]~28_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(9));

-- Location: LCCOMB_X21_Y8_N18
\inst10|q[10]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[10]~30_combout\ = (\inst10|q\(10) & (!\inst10|q[9]~29\)) # (!\inst10|q\(10) & ((\inst10|q[9]~29\) # (GND)))
-- \inst10|q[10]~31\ = CARRY((!\inst10|q[9]~29\) # (!\inst10|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|q\(10),
	datad => VCC,
	cin => \inst10|q[9]~29\,
	combout => \inst10|q[10]~30_combout\,
	cout => \inst10|q[10]~31\);

-- Location: FF_X21_Y8_N19
\inst10|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[10]~30_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(10));

-- Location: LCCOMB_X21_Y8_N20
\inst10|q[11]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[11]~32_combout\ = (\inst10|q\(11) & (\inst10|q[10]~31\ $ (GND))) # (!\inst10|q\(11) & (!\inst10|q[10]~31\ & VCC))
-- \inst10|q[11]~33\ = CARRY((\inst10|q\(11) & !\inst10|q[10]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst10|q\(11),
	datad => VCC,
	cin => \inst10|q[10]~31\,
	combout => \inst10|q[11]~32_combout\,
	cout => \inst10|q[11]~33\);

-- Location: FF_X21_Y8_N21
\inst10|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[11]~32_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(11));

-- Location: LCCOMB_X21_Y8_N22
\inst10|q[12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|q[12]~34_combout\ = \inst10|q\(12) $ (\inst10|q[11]~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|q\(12),
	cin => \inst10|q[11]~33\,
	combout => \inst10|q[12]~34_combout\);

-- Location: FF_X21_Y8_N23
\inst10|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|q[12]~34_combout\,
	sclr => \inst10|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|q\(12));

-- Location: LCCOMB_X21_Y8_N24
\inst10|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|_~2_combout\ = (!\inst10|q\(10) & (!\inst10|q\(11) & (\inst10|q\(8) & \inst10|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|q\(10),
	datab => \inst10|q\(11),
	datac => \inst10|q\(8),
	datad => \inst10|q\(9),
	combout => \inst10|_~2_combout\);

-- Location: LCCOMB_X21_Y8_N26
\inst10|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|_~0_combout\ = (!\inst10|q\(1) & (!\inst10|q\(0) & (\inst10|q\(3) & !\inst10|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|q\(1),
	datab => \inst10|q\(0),
	datac => \inst10|q\(3),
	datad => \inst10|q\(2),
	combout => \inst10|_~0_combout\);

-- Location: LCCOMB_X22_Y8_N26
\inst10|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|_~1_combout\ = (!\inst10|q\(5) & (!\inst10|q\(6) & (!\inst10|q\(4) & \inst10|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|q\(5),
	datab => \inst10|q\(6),
	datac => \inst10|q\(4),
	datad => \inst10|q\(7),
	combout => \inst10|_~1_combout\);

-- Location: LCCOMB_X21_Y8_N30
\inst10|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|_~3_combout\ = (\inst10|q\(12) & (\inst10|_~2_combout\ & (\inst10|_~0_combout\ & \inst10|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|q\(12),
	datab => \inst10|_~2_combout\,
	datac => \inst10|_~0_combout\,
	datad => \inst10|_~1_combout\,
	combout => \inst10|_~3_combout\);

-- Location: LCCOMB_X22_Y8_N24
\inst10|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|aux_tff~1_combout\ = \inst10|aux_tff~q\ $ (\inst10|_~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|aux_tff~q\,
	datad => \inst10|_~3_combout\,
	combout => \inst10|aux_tff~1_combout\);

-- Location: FF_X22_Y8_N25
\inst10|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst10|aux_tff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|aux_tff~q\);

-- Location: LCCOMB_X22_Y11_N24
\inst7|perm_alarme_q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|perm_alarme_q[1]~6_combout\ = (\inst7|flag_pulse\(1)) # ((\inst7|perm_alarme_q\(1) & (\inst7|perm_alarme_q[1]~4_combout\ & !\inst7|flag_pulse\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|perm_alarme_q\(1),
	datab => \inst7|flag_pulse\(1),
	datac => \inst7|perm_alarme_q[1]~4_combout\,
	datad => \inst7|flag_pulse\(2),
	combout => \inst7|perm_alarme_q[1]~6_combout\);

-- Location: LCCOMB_X22_Y11_N30
\inst7|perm_alarme_q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|perm_alarme_q[1]~7_combout\ = (!\inst7|reset_pulse~0_combout\ & (!\inst7|reset_pulse~1_combout\ & \inst7|perm_alarme_q[1]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|reset_pulse~0_combout\,
	datac => \inst7|reset_pulse~1_combout\,
	datad => \inst7|perm_alarme_q[1]~6_combout\,
	combout => \inst7|perm_alarme_q[1]~7_combout\);

-- Location: FF_X22_Y11_N31
\inst7|perm_alarme_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst7|perm_alarme_q[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|perm_alarme_q\(1));

-- Location: LCCOMB_X26_Y15_N22
\inst28|alarme_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst28|alarme_out~1_combout\ = (\inst10|aux_tff~q\ & ((\inst28|alarme_out~0_combout\) # ((\inst11|aux_tff~q\ & \inst7|perm_alarme_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|aux_tff~q\,
	datab => \inst28|alarme_out~0_combout\,
	datac => \inst10|aux_tff~q\,
	datad => \inst7|perm_alarme_q\(1),
	combout => \inst28|alarme_out~1_combout\);

-- Location: LCCOMB_X24_Y13_N0
\inst17|dig_out[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[3]~22_combout\ = (\inst1|crono_q\(1)) # ((\inst1|crono_q\(2)) # ((\inst1|crono_q\(4)) # (\inst1|crono_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst1|crono_q\(2),
	datac => \inst1|crono_q\(4),
	datad => \inst1|crono_q\(3),
	combout => \inst17|dig_out[3]~22_combout\);

-- Location: LCCOMB_X18_Y14_N6
\inst32|inst46|inst5|force_off[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst5|force_off[3]~1_combout\ = (\inst32|inst22|reset_cont~0_combout\ & (!\inst13|inst46|inst4|aux_tff~q\ & (!\inst32|inst39|q\(0) & !\inst32|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst22|reset_cont~0_combout\,
	datab => \inst13|inst46|inst4|aux_tff~q\,
	datac => \inst32|inst39|q\(0),
	datad => \inst32|inst39|q\(1),
	combout => \inst32|inst46|inst5|force_off[3]~1_combout\);

-- Location: LCCOMB_X30_Y14_N12
\inst13|inst46|inst6|q[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[18]~56_combout\ = (\inst13|inst46|inst6|q\(18) & (!\inst13|inst46|inst6|q[17]~55\)) # (!\inst13|inst46|inst6|q\(18) & ((\inst13|inst46|inst6|q[17]~55\) # (GND)))
-- \inst13|inst46|inst6|q[18]~57\ = CARRY((!\inst13|inst46|inst6|q[17]~55\) # (!\inst13|inst46|inst6|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(18),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[17]~55\,
	combout => \inst13|inst46|inst6|q[18]~56_combout\,
	cout => \inst13|inst46|inst6|q[18]~57\);

-- Location: LCCOMB_X30_Y14_N14
\inst13|inst46|inst6|q[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[19]~58_combout\ = (\inst13|inst46|inst6|q\(19) & (\inst13|inst46|inst6|q[18]~57\ $ (GND))) # (!\inst13|inst46|inst6|q\(19) & (!\inst13|inst46|inst6|q[18]~57\ & VCC))
-- \inst13|inst46|inst6|q[19]~59\ = CARRY((\inst13|inst46|inst6|q\(19) & !\inst13|inst46|inst6|q[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(19),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[18]~57\,
	combout => \inst13|inst46|inst6|q[19]~58_combout\,
	cout => \inst13|inst46|inst6|q[19]~59\);

-- Location: LCCOMB_X30_Y15_N2
\inst13|inst46|inst6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|_~2_combout\ = (\inst13|inst46|inst6|q\(9) & (!\inst13|inst46|inst6|q\(8) & (\inst13|inst46|inst6|q\(11) & \inst13|inst46|inst6|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(9),
	datab => \inst13|inst46|inst6|q\(8),
	datac => \inst13|inst46|inst6|q\(11),
	datad => \inst13|inst46|inst6|q\(10),
	combout => \inst13|inst46|inst6|_~2_combout\);

-- Location: LCCOMB_X30_Y14_N30
\inst13|inst46|inst6|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|_~3_combout\ = (!\inst13|inst46|inst6|q\(15) & (!\inst13|inst46|inst6|q\(13) & (\inst13|inst46|inst6|q\(14) & \inst13|inst46|inst6|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(15),
	datab => \inst13|inst46|inst6|q\(13),
	datac => \inst13|inst46|inst6|q\(14),
	datad => \inst13|inst46|inst6|q\(12),
	combout => \inst13|inst46|inst6|_~3_combout\);

-- Location: LCCOMB_X30_Y15_N6
\inst13|inst46|inst6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|_~0_combout\ = (!\inst13|inst46|inst6|q\(1) & (!\inst13|inst46|inst6|q\(0) & (!\inst13|inst46|inst6|q\(3) & !\inst13|inst46|inst6|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(1),
	datab => \inst13|inst46|inst6|q\(0),
	datac => \inst13|inst46|inst6|q\(3),
	datad => \inst13|inst46|inst6|q\(2),
	combout => \inst13|inst46|inst6|_~0_combout\);

-- Location: LCCOMB_X30_Y15_N4
\inst13|inst46|inst6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|_~1_combout\ = (!\inst13|inst46|inst6|q\(6) & (\inst13|inst46|inst6|q\(4) & (!\inst13|inst46|inst6|q\(7) & !\inst13|inst46|inst6|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(6),
	datab => \inst13|inst46|inst6|q\(4),
	datac => \inst13|inst46|inst6|q\(7),
	datad => \inst13|inst46|inst6|q\(5),
	combout => \inst13|inst46|inst6|_~1_combout\);

-- Location: LCCOMB_X30_Y14_N28
\inst13|inst46|inst6|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|_~4_combout\ = (\inst13|inst46|inst6|_~2_combout\ & (\inst13|inst46|inst6|_~3_combout\ & (\inst13|inst46|inst6|_~0_combout\ & \inst13|inst46|inst6|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|_~2_combout\,
	datab => \inst13|inst46|inst6|_~3_combout\,
	datac => \inst13|inst46|inst6|_~0_combout\,
	datad => \inst13|inst46|inst6|_~1_combout\,
	combout => \inst13|inst46|inst6|_~4_combout\);

-- Location: LCCOMB_X30_Y14_N22
\inst13|inst46|inst6|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|_~8_combout\ = (\inst13|inst46|inst6|_~6_combout\ & (\inst13|inst46|inst6|_~5_combout\ & \inst13|inst46|inst6|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|_~6_combout\,
	datac => \inst13|inst46|inst6|_~5_combout\,
	datad => \inst13|inst46|inst6|_~4_combout\,
	combout => \inst13|inst46|inst6|_~8_combout\);

-- Location: FF_X30_Y14_N15
\inst13|inst46|inst6|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[19]~58_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(19));

-- Location: LCCOMB_X30_Y14_N16
\inst13|inst46|inst6|q[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[20]~60_combout\ = (\inst13|inst46|inst6|q\(20) & (!\inst13|inst46|inst6|q[19]~59\)) # (!\inst13|inst46|inst6|q\(20) & ((\inst13|inst46|inst6|q[19]~59\) # (GND)))
-- \inst13|inst46|inst6|q[20]~61\ = CARRY((!\inst13|inst46|inst6|q[19]~59\) # (!\inst13|inst46|inst6|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(20),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[19]~59\,
	combout => \inst13|inst46|inst6|q[20]~60_combout\,
	cout => \inst13|inst46|inst6|q[20]~61\);

-- Location: FF_X30_Y14_N17
\inst13|inst46|inst6|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[20]~60_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(20));

-- Location: LCCOMB_X30_Y14_N18
\inst13|inst46|inst6|q[21]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[21]~62_combout\ = (\inst13|inst46|inst6|q\(21) & (\inst13|inst46|inst6|q[20]~61\ $ (GND))) # (!\inst13|inst46|inst6|q\(21) & (!\inst13|inst46|inst6|q[20]~61\ & VCC))
-- \inst13|inst46|inst6|q[21]~63\ = CARRY((\inst13|inst46|inst6|q\(21) & !\inst13|inst46|inst6|q[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(21),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[20]~61\,
	combout => \inst13|inst46|inst6|q[21]~62_combout\,
	cout => \inst13|inst46|inst6|q[21]~63\);

-- Location: FF_X30_Y14_N19
\inst13|inst46|inst6|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[21]~62_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(21));

-- Location: LCCOMB_X30_Y14_N20
\inst13|inst46|inst6|q[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[22]~64_combout\ = \inst13|inst46|inst6|q[21]~63\ $ (\inst13|inst46|inst6|q\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst13|inst46|inst6|q\(22),
	cin => \inst13|inst46|inst6|q[21]~63\,
	combout => \inst13|inst46|inst6|q[22]~64_combout\);

-- Location: FF_X30_Y14_N21
\inst13|inst46|inst6|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[22]~64_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(22));

-- Location: LCCOMB_X30_Y14_N24
\inst13|inst46|inst6|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|_~6_combout\ = (\inst13|inst46|inst6|q\(22) & (!\inst13|inst46|inst6|q\(21) & \inst13|inst46|inst6|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(22),
	datac => \inst13|inst46|inst6|q\(21),
	datad => \inst13|inst46|inst6|q\(20),
	combout => \inst13|inst46|inst6|_~6_combout\);

-- Location: LCCOMB_X30_Y15_N0
\inst13|inst46|inst6|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|_~7_combout\ = (!\inst13|inst46|inst6|q\(0) & (((!\inst13|inst46|inst6|_~4_combout\) # (!\inst13|inst46|inst6|_~5_combout\)) # (!\inst13|inst46|inst6|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|_~6_combout\,
	datab => \inst13|inst46|inst6|_~5_combout\,
	datac => \inst13|inst46|inst6|q\(0),
	datad => \inst13|inst46|inst6|_~4_combout\,
	combout => \inst13|inst46|inst6|_~7_combout\);

-- Location: FF_X30_Y15_N1
\inst13|inst46|inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(0));

-- Location: LCCOMB_X30_Y15_N10
\inst13|inst46|inst6|q[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[1]~22_combout\ = (\inst13|inst46|inst6|q\(1) & (\inst13|inst46|inst6|q\(0) $ (VCC))) # (!\inst13|inst46|inst6|q\(1) & (\inst13|inst46|inst6|q\(0) & VCC))
-- \inst13|inst46|inst6|q[1]~23\ = CARRY((\inst13|inst46|inst6|q\(1) & \inst13|inst46|inst6|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(1),
	datab => \inst13|inst46|inst6|q\(0),
	datad => VCC,
	combout => \inst13|inst46|inst6|q[1]~22_combout\,
	cout => \inst13|inst46|inst6|q[1]~23\);

-- Location: FF_X30_Y15_N11
\inst13|inst46|inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[1]~22_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(1));

-- Location: LCCOMB_X30_Y15_N12
\inst13|inst46|inst6|q[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[2]~24_combout\ = (\inst13|inst46|inst6|q\(2) & (!\inst13|inst46|inst6|q[1]~23\)) # (!\inst13|inst46|inst6|q\(2) & ((\inst13|inst46|inst6|q[1]~23\) # (GND)))
-- \inst13|inst46|inst6|q[2]~25\ = CARRY((!\inst13|inst46|inst6|q[1]~23\) # (!\inst13|inst46|inst6|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(2),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[1]~23\,
	combout => \inst13|inst46|inst6|q[2]~24_combout\,
	cout => \inst13|inst46|inst6|q[2]~25\);

-- Location: FF_X30_Y15_N13
\inst13|inst46|inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[2]~24_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(2));

-- Location: LCCOMB_X30_Y15_N14
\inst13|inst46|inst6|q[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[3]~26_combout\ = (\inst13|inst46|inst6|q\(3) & (\inst13|inst46|inst6|q[2]~25\ $ (GND))) # (!\inst13|inst46|inst6|q\(3) & (!\inst13|inst46|inst6|q[2]~25\ & VCC))
-- \inst13|inst46|inst6|q[3]~27\ = CARRY((\inst13|inst46|inst6|q\(3) & !\inst13|inst46|inst6|q[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(3),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[2]~25\,
	combout => \inst13|inst46|inst6|q[3]~26_combout\,
	cout => \inst13|inst46|inst6|q[3]~27\);

-- Location: FF_X30_Y15_N15
\inst13|inst46|inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[3]~26_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(3));

-- Location: LCCOMB_X30_Y15_N16
\inst13|inst46|inst6|q[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[4]~28_combout\ = (\inst13|inst46|inst6|q\(4) & (!\inst13|inst46|inst6|q[3]~27\)) # (!\inst13|inst46|inst6|q\(4) & ((\inst13|inst46|inst6|q[3]~27\) # (GND)))
-- \inst13|inst46|inst6|q[4]~29\ = CARRY((!\inst13|inst46|inst6|q[3]~27\) # (!\inst13|inst46|inst6|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(4),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[3]~27\,
	combout => \inst13|inst46|inst6|q[4]~28_combout\,
	cout => \inst13|inst46|inst6|q[4]~29\);

-- Location: FF_X30_Y15_N17
\inst13|inst46|inst6|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[4]~28_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(4));

-- Location: LCCOMB_X30_Y15_N18
\inst13|inst46|inst6|q[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[5]~30_combout\ = (\inst13|inst46|inst6|q\(5) & (\inst13|inst46|inst6|q[4]~29\ $ (GND))) # (!\inst13|inst46|inst6|q\(5) & (!\inst13|inst46|inst6|q[4]~29\ & VCC))
-- \inst13|inst46|inst6|q[5]~31\ = CARRY((\inst13|inst46|inst6|q\(5) & !\inst13|inst46|inst6|q[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(5),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[4]~29\,
	combout => \inst13|inst46|inst6|q[5]~30_combout\,
	cout => \inst13|inst46|inst6|q[5]~31\);

-- Location: FF_X30_Y15_N19
\inst13|inst46|inst6|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[5]~30_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(5));

-- Location: LCCOMB_X30_Y15_N20
\inst13|inst46|inst6|q[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[6]~32_combout\ = (\inst13|inst46|inst6|q\(6) & (!\inst13|inst46|inst6|q[5]~31\)) # (!\inst13|inst46|inst6|q\(6) & ((\inst13|inst46|inst6|q[5]~31\) # (GND)))
-- \inst13|inst46|inst6|q[6]~33\ = CARRY((!\inst13|inst46|inst6|q[5]~31\) # (!\inst13|inst46|inst6|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(6),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[5]~31\,
	combout => \inst13|inst46|inst6|q[6]~32_combout\,
	cout => \inst13|inst46|inst6|q[6]~33\);

-- Location: FF_X30_Y15_N21
\inst13|inst46|inst6|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[6]~32_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(6));

-- Location: LCCOMB_X30_Y15_N22
\inst13|inst46|inst6|q[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[7]~34_combout\ = (\inst13|inst46|inst6|q\(7) & (\inst13|inst46|inst6|q[6]~33\ $ (GND))) # (!\inst13|inst46|inst6|q\(7) & (!\inst13|inst46|inst6|q[6]~33\ & VCC))
-- \inst13|inst46|inst6|q[7]~35\ = CARRY((\inst13|inst46|inst6|q\(7) & !\inst13|inst46|inst6|q[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(7),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[6]~33\,
	combout => \inst13|inst46|inst6|q[7]~34_combout\,
	cout => \inst13|inst46|inst6|q[7]~35\);

-- Location: FF_X30_Y15_N23
\inst13|inst46|inst6|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[7]~34_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(7));

-- Location: LCCOMB_X30_Y15_N24
\inst13|inst46|inst6|q[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[8]~36_combout\ = (\inst13|inst46|inst6|q\(8) & (!\inst13|inst46|inst6|q[7]~35\)) # (!\inst13|inst46|inst6|q\(8) & ((\inst13|inst46|inst6|q[7]~35\) # (GND)))
-- \inst13|inst46|inst6|q[8]~37\ = CARRY((!\inst13|inst46|inst6|q[7]~35\) # (!\inst13|inst46|inst6|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(8),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[7]~35\,
	combout => \inst13|inst46|inst6|q[8]~36_combout\,
	cout => \inst13|inst46|inst6|q[8]~37\);

-- Location: FF_X30_Y15_N25
\inst13|inst46|inst6|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[8]~36_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(8));

-- Location: LCCOMB_X30_Y15_N26
\inst13|inst46|inst6|q[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[9]~38_combout\ = (\inst13|inst46|inst6|q\(9) & (\inst13|inst46|inst6|q[8]~37\ $ (GND))) # (!\inst13|inst46|inst6|q\(9) & (!\inst13|inst46|inst6|q[8]~37\ & VCC))
-- \inst13|inst46|inst6|q[9]~39\ = CARRY((\inst13|inst46|inst6|q\(9) & !\inst13|inst46|inst6|q[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(9),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[8]~37\,
	combout => \inst13|inst46|inst6|q[9]~38_combout\,
	cout => \inst13|inst46|inst6|q[9]~39\);

-- Location: FF_X30_Y15_N27
\inst13|inst46|inst6|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[9]~38_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(9));

-- Location: LCCOMB_X30_Y15_N28
\inst13|inst46|inst6|q[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[10]~40_combout\ = (\inst13|inst46|inst6|q\(10) & (!\inst13|inst46|inst6|q[9]~39\)) # (!\inst13|inst46|inst6|q\(10) & ((\inst13|inst46|inst6|q[9]~39\) # (GND)))
-- \inst13|inst46|inst6|q[10]~41\ = CARRY((!\inst13|inst46|inst6|q[9]~39\) # (!\inst13|inst46|inst6|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(10),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[9]~39\,
	combout => \inst13|inst46|inst6|q[10]~40_combout\,
	cout => \inst13|inst46|inst6|q[10]~41\);

-- Location: FF_X30_Y15_N29
\inst13|inst46|inst6|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[10]~40_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(10));

-- Location: LCCOMB_X30_Y15_N30
\inst13|inst46|inst6|q[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[11]~42_combout\ = (\inst13|inst46|inst6|q\(11) & (\inst13|inst46|inst6|q[10]~41\ $ (GND))) # (!\inst13|inst46|inst6|q\(11) & (!\inst13|inst46|inst6|q[10]~41\ & VCC))
-- \inst13|inst46|inst6|q[11]~43\ = CARRY((\inst13|inst46|inst6|q\(11) & !\inst13|inst46|inst6|q[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(11),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[10]~41\,
	combout => \inst13|inst46|inst6|q[11]~42_combout\,
	cout => \inst13|inst46|inst6|q[11]~43\);

-- Location: FF_X30_Y15_N31
\inst13|inst46|inst6|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[11]~42_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(11));

-- Location: LCCOMB_X30_Y14_N0
\inst13|inst46|inst6|q[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[12]~44_combout\ = (\inst13|inst46|inst6|q\(12) & (!\inst13|inst46|inst6|q[11]~43\)) # (!\inst13|inst46|inst6|q\(12) & ((\inst13|inst46|inst6|q[11]~43\) # (GND)))
-- \inst13|inst46|inst6|q[12]~45\ = CARRY((!\inst13|inst46|inst6|q[11]~43\) # (!\inst13|inst46|inst6|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(12),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[11]~43\,
	combout => \inst13|inst46|inst6|q[12]~44_combout\,
	cout => \inst13|inst46|inst6|q[12]~45\);

-- Location: FF_X30_Y14_N1
\inst13|inst46|inst6|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[12]~44_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(12));

-- Location: LCCOMB_X30_Y14_N2
\inst13|inst46|inst6|q[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[13]~46_combout\ = (\inst13|inst46|inst6|q\(13) & (\inst13|inst46|inst6|q[12]~45\ $ (GND))) # (!\inst13|inst46|inst6|q\(13) & (!\inst13|inst46|inst6|q[12]~45\ & VCC))
-- \inst13|inst46|inst6|q[13]~47\ = CARRY((\inst13|inst46|inst6|q\(13) & !\inst13|inst46|inst6|q[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(13),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[12]~45\,
	combout => \inst13|inst46|inst6|q[13]~46_combout\,
	cout => \inst13|inst46|inst6|q[13]~47\);

-- Location: FF_X30_Y14_N3
\inst13|inst46|inst6|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[13]~46_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(13));

-- Location: LCCOMB_X30_Y14_N4
\inst13|inst46|inst6|q[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[14]~48_combout\ = (\inst13|inst46|inst6|q\(14) & (!\inst13|inst46|inst6|q[13]~47\)) # (!\inst13|inst46|inst6|q\(14) & ((\inst13|inst46|inst6|q[13]~47\) # (GND)))
-- \inst13|inst46|inst6|q[14]~49\ = CARRY((!\inst13|inst46|inst6|q[13]~47\) # (!\inst13|inst46|inst6|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(14),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[13]~47\,
	combout => \inst13|inst46|inst6|q[14]~48_combout\,
	cout => \inst13|inst46|inst6|q[14]~49\);

-- Location: FF_X30_Y14_N5
\inst13|inst46|inst6|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[14]~48_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(14));

-- Location: LCCOMB_X30_Y14_N6
\inst13|inst46|inst6|q[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[15]~50_combout\ = (\inst13|inst46|inst6|q\(15) & (\inst13|inst46|inst6|q[14]~49\ $ (GND))) # (!\inst13|inst46|inst6|q\(15) & (!\inst13|inst46|inst6|q[14]~49\ & VCC))
-- \inst13|inst46|inst6|q[15]~51\ = CARRY((\inst13|inst46|inst6|q\(15) & !\inst13|inst46|inst6|q[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(15),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[14]~49\,
	combout => \inst13|inst46|inst6|q[15]~50_combout\,
	cout => \inst13|inst46|inst6|q[15]~51\);

-- Location: FF_X30_Y14_N7
\inst13|inst46|inst6|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[15]~50_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(15));

-- Location: LCCOMB_X30_Y14_N8
\inst13|inst46|inst6|q[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[16]~52_combout\ = (\inst13|inst46|inst6|q\(16) & (!\inst13|inst46|inst6|q[15]~51\)) # (!\inst13|inst46|inst6|q\(16) & ((\inst13|inst46|inst6|q[15]~51\) # (GND)))
-- \inst13|inst46|inst6|q[16]~53\ = CARRY((!\inst13|inst46|inst6|q[15]~51\) # (!\inst13|inst46|inst6|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst6|q\(16),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[15]~51\,
	combout => \inst13|inst46|inst6|q[16]~52_combout\,
	cout => \inst13|inst46|inst6|q[16]~53\);

-- Location: FF_X30_Y14_N9
\inst13|inst46|inst6|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[16]~52_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(16));

-- Location: LCCOMB_X30_Y14_N10
\inst13|inst46|inst6|q[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|q[17]~54_combout\ = (\inst13|inst46|inst6|q\(17) & (\inst13|inst46|inst6|q[16]~53\ $ (GND))) # (!\inst13|inst46|inst6|q\(17) & (!\inst13|inst46|inst6|q[16]~53\ & VCC))
-- \inst13|inst46|inst6|q[17]~55\ = CARRY((\inst13|inst46|inst6|q\(17) & !\inst13|inst46|inst6|q[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(17),
	datad => VCC,
	cin => \inst13|inst46|inst6|q[16]~53\,
	combout => \inst13|inst46|inst6|q[17]~54_combout\,
	cout => \inst13|inst46|inst6|q[17]~55\);

-- Location: FF_X30_Y14_N11
\inst13|inst46|inst6|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[17]~54_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(17));

-- Location: FF_X30_Y14_N13
\inst13|inst46|inst6|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|q[18]~56_combout\,
	sclr => \inst13|inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|q\(18));

-- Location: LCCOMB_X30_Y14_N26
\inst13|inst46|inst6|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|_~5_combout\ = (\inst13|inst46|inst6|q\(18) & (\inst13|inst46|inst6|q\(16) & (\inst13|inst46|inst6|q\(19) & \inst13|inst46|inst6|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|q\(18),
	datab => \inst13|inst46|inst6|q\(16),
	datac => \inst13|inst46|inst6|q\(19),
	datad => \inst13|inst46|inst6|q\(17),
	combout => \inst13|inst46|inst6|_~5_combout\);

-- Location: LCCOMB_X29_Y14_N12
\inst13|inst46|inst6|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst6|aux_tff~1_combout\ = \inst13|inst46|inst6|aux_tff~q\ $ (((\inst13|inst46|inst6|_~5_combout\ & (\inst13|inst46|inst6|_~6_combout\ & \inst13|inst46|inst6|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|_~5_combout\,
	datab => \inst13|inst46|inst6|_~6_combout\,
	datac => \inst13|inst46|inst6|aux_tff~q\,
	datad => \inst13|inst46|inst6|_~4_combout\,
	combout => \inst13|inst46|inst6|aux_tff~1_combout\);

-- Location: FF_X29_Y14_N13
\inst13|inst46|inst6|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst6|aux_tff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst6|aux_tff~q\);

-- Location: LCCOMB_X18_Y14_N16
\inst32|inst46|inst5|force_off[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst5|force_off[3]~0_combout\ = (!\inst13|inst46|inst6|aux_tff~q\ & ((\inst32|inst40|final_cont~12_combout\) # ((\inst32|inst40|final_cont~13_combout\ & \inst32|inst40|_~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|aux_tff~q\,
	datab => \inst32|inst40|final_cont~12_combout\,
	datac => \inst32|inst40|final_cont~13_combout\,
	datad => \inst32|inst40|_~0_combout\,
	combout => \inst32|inst46|inst5|force_off[3]~0_combout\);

-- Location: LCCOMB_X6_Y9_N6
\inst32|inst46|inst|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst|aux_tff~1_combout\ = !\inst32|inst46|inst|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst32|inst46|inst|aux_tff~q\,
	combout => \inst32|inst46|inst|aux_tff~1_combout\);

-- Location: FF_X7_Y9_N31
\inst32|inst46|inst|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst32|inst46|inst|aux_tff~1_combout\,
	sload => VCC,
	ena => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst46|inst|aux_tff~q\);

-- Location: CLKCTRL_G4
\inst32|inst46|inst|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst32|inst46|inst|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst32|inst46|inst|aux_tff~clkctrl_outclk\);

-- Location: LCCOMB_X18_Y14_N10
\inst32|inst46|inst1|q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst1|q[0]~1_combout\ = !\inst32|inst46|inst1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst32|inst46|inst1|q\(0),
	combout => \inst32|inst46|inst1|q[0]~1_combout\);

-- Location: FF_X18_Y14_N11
\inst32|inst46|inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst32|inst46|inst|aux_tff~clkctrl_outclk\,
	d => \inst32|inst46|inst1|q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst46|inst1|q\(0));

-- Location: LCCOMB_X18_Y14_N24
\inst32|inst46|inst1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst1|_~0_combout\ = \inst32|inst46|inst1|q\(1) $ (\inst32|inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst32|inst46|inst1|q\(1),
	datad => \inst32|inst46|inst1|q\(0),
	combout => \inst32|inst46|inst1|_~0_combout\);

-- Location: FF_X18_Y14_N25
\inst32|inst46|inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst32|inst46|inst|aux_tff~clkctrl_outclk\,
	d => \inst32|inst46|inst1|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|inst46|inst1|q\(1));

-- Location: LCCOMB_X18_Y14_N12
\inst32|inst46|inst5|alterna[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst5|alterna\(3) = (\inst32|inst46|inst5|force_off[3]~1_combout\) # ((\inst32|inst46|inst5|force_off[3]~0_combout\) # ((!\inst32|inst46|inst1|q\(1)) # (!\inst32|inst46|inst1|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst5|force_off[3]~1_combout\,
	datab => \inst32|inst46|inst5|force_off[3]~0_combout\,
	datac => \inst32|inst46|inst1|q\(0),
	datad => \inst32|inst46|inst1|q\(1),
	combout => \inst32|inst46|inst5|alterna\(3));

-- Location: LCCOMB_X6_Y9_N18
\inst30|inst46|inst|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst|aux_tff~1_combout\ = !\inst30|inst46|inst|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst46|inst|aux_tff~q\,
	combout => \inst30|inst46|inst|aux_tff~1_combout\);

-- Location: LCCOMB_X6_Y9_N2
\inst30|inst46|inst|aux_tff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst|aux_tff~feeder_combout\ = \inst30|inst46|inst|aux_tff~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst46|inst|aux_tff~1_combout\,
	combout => \inst30|inst46|inst|aux_tff~feeder_combout\);

-- Location: FF_X6_Y9_N3
\inst30|inst46|inst|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst30|inst46|inst|aux_tff~feeder_combout\,
	ena => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst46|inst|aux_tff~q\);

-- Location: CLKCTRL_G0
\inst30|inst46|inst|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst30|inst46|inst|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst30|inst46|inst|aux_tff~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y10_N2
\inst30|inst46|inst1|q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst1|q[0]~1_combout\ = !\inst30|inst46|inst1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst46|inst1|q\(0),
	combout => \inst30|inst46|inst1|q[0]~1_combout\);

-- Location: FF_X26_Y10_N3
\inst30|inst46|inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst46|inst|aux_tff~clkctrl_outclk\,
	d => \inst30|inst46|inst1|q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst46|inst1|q\(0));

-- Location: LCCOMB_X26_Y10_N28
\inst30|inst46|inst1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst1|_~0_combout\ = \inst30|inst46|inst1|q\(1) $ (\inst30|inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst30|inst46|inst1|q\(1),
	datad => \inst30|inst46|inst1|q\(0),
	combout => \inst30|inst46|inst1|_~0_combout\);

-- Location: FF_X26_Y10_N29
\inst30|inst46|inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst30|inst46|inst|aux_tff~clkctrl_outclk\,
	d => \inst30|inst46|inst1|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst30|inst46|inst1|q\(1));

-- Location: LCCOMB_X26_Y10_N12
\inst30|inst46|inst5|alterna[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst5|alterna[3]~4_combout\ = (((\inst30|inst37|blinkdig1~1_combout\ & !\inst13|inst46|inst4|aux_tff~q\)) # (!\inst30|inst46|inst1|q\(1))) # (!\inst30|inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst37|blinkdig1~1_combout\,
	datab => \inst30|inst46|inst1|q\(0),
	datac => \inst13|inst46|inst4|aux_tff~q\,
	datad => \inst30|inst46|inst1|q\(1),
	combout => \inst30|inst46|inst5|alterna[3]~4_combout\);

-- Location: LCCOMB_X26_Y10_N26
\inst30|inst46|inst5|alterna[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst5|alterna\(3) = (\inst30|inst46|inst5|alterna[3]~4_combout\) # ((\inst30|inst40|final_cont~15_combout\ & !\inst13|inst46|inst6|aux_tff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst40|final_cont~15_combout\,
	datac => \inst13|inst46|inst6|aux_tff~q\,
	datad => \inst30|inst46|inst5|alterna[3]~4_combout\,
	combout => \inst30|inst46|inst5|alterna\(3));

-- Location: LCCOMB_X24_Y13_N26
\inst17|dig_out[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[3]~21_combout\ = (\inst15|_~2_combout\ & ((\inst32|inst46|inst5|alterna\(3)) # ((\inst30|inst46|inst5|alterna\(3) & \inst15|_~1_combout\)))) # (!\inst15|_~2_combout\ & (((\inst30|inst46|inst5|alterna\(3) & \inst15|_~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datab => \inst32|inst46|inst5|alterna\(3),
	datac => \inst30|inst46|inst5|alterna\(3),
	datad => \inst15|_~1_combout\,
	combout => \inst17|dig_out[3]~21_combout\);

-- Location: LCCOMB_X21_Y15_N26
\inst13|inst37|blinkdig1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|blinkdig1~1_combout\ = (!\inst23|q\(1) & (\inst15|menu_out_c1[0]~2_combout\ & (!\inst13|inst39|q\(0) & !\inst13|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(1),
	datab => \inst15|menu_out_c1[0]~2_combout\,
	datac => \inst13|inst39|q\(0),
	datad => \inst13|inst39|q\(1),
	combout => \inst13|inst37|blinkdig1~1_combout\);

-- Location: LCCOMB_X7_Y9_N30
\inst13|inst46|inst|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|aux_tff~1_combout\ = !\inst13|inst46|inst|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst|aux_tff~q\,
	combout => \inst13|inst46|inst|aux_tff~1_combout\);

-- Location: LCCOMB_X7_Y9_N22
\inst13|inst46|inst|aux_tff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst|aux_tff~feeder_combout\ = \inst13|inst46|inst|aux_tff~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst46|inst|aux_tff~1_combout\,
	combout => \inst13|inst46|inst|aux_tff~feeder_combout\);

-- Location: FF_X7_Y9_N23
\inst13|inst46|inst|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst46|inst|aux_tff~feeder_combout\,
	ena => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst|aux_tff~q\);

-- Location: CLKCTRL_G3
\inst13|inst46|inst|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|inst46|inst|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|inst46|inst|aux_tff~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y15_N10
\inst13|inst46|inst1|q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst1|q[0]~1_combout\ = !\inst13|inst46|inst1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst46|inst1|q\(0),
	combout => \inst13|inst46|inst1|q[0]~1_combout\);

-- Location: FF_X21_Y15_N11
\inst13|inst46|inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst46|inst|aux_tff~clkctrl_outclk\,
	d => \inst13|inst46|inst1|q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst1|q\(0));

-- Location: LCCOMB_X21_Y15_N8
\inst13|inst46|inst1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst1|_~0_combout\ = \inst13|inst46|inst1|q\(1) $ (\inst13|inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst46|inst1|q\(1),
	datad => \inst13|inst46|inst1|q\(0),
	combout => \inst13|inst46|inst1|_~0_combout\);

-- Location: FF_X21_Y15_N9
\inst13|inst46|inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst46|inst|aux_tff~clkctrl_outclk\,
	d => \inst13|inst46|inst1|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst46|inst1|q\(1));

-- Location: LCCOMB_X21_Y15_N28
\inst13|inst46|inst5|alterna[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst5|alterna[3]~4_combout\ = (((\inst13|inst37|blinkdig1~1_combout\ & !\inst13|inst46|inst4|aux_tff~q\)) # (!\inst13|inst46|inst1|q\(0))) # (!\inst13|inst46|inst1|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|blinkdig1~1_combout\,
	datab => \inst13|inst46|inst1|q\(1),
	datac => \inst13|inst46|inst1|q\(0),
	datad => \inst13|inst46|inst4|aux_tff~q\,
	combout => \inst13|inst46|inst5|alterna[3]~4_combout\);

-- Location: LCCOMB_X21_Y15_N18
\inst13|inst46|inst5|alterna[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst5|alterna\(3) = (\inst13|inst46|inst5|alterna[3]~4_combout\) # ((!\inst13|inst46|inst6|aux_tff~q\ & ((\inst13|inst40|final_cont~16_combout\) # (\inst13|inst40|final_cont~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst40|final_cont~16_combout\,
	datab => \inst13|inst46|inst6|aux_tff~q\,
	datac => \inst13|inst46|inst5|alterna[3]~4_combout\,
	datad => \inst13|inst40|final_cont~5_combout\,
	combout => \inst13|inst46|inst5|alterna\(3));

-- Location: LCCOMB_X6_Y9_N14
\inst25|inst46|inst|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst|aux_tff~1_combout\ = !\inst25|inst46|inst|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst46|inst|aux_tff~q\,
	combout => \inst25|inst46|inst|aux_tff~1_combout\);

-- Location: LCCOMB_X7_Y9_N8
\inst25|inst46|inst|aux_tff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst|aux_tff~feeder_combout\ = \inst25|inst46|inst|aux_tff~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst46|inst|aux_tff~1_combout\,
	combout => \inst25|inst46|inst|aux_tff~feeder_combout\);

-- Location: FF_X7_Y9_N9
\inst25|inst46|inst|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst25|inst46|inst|aux_tff~feeder_combout\,
	ena => \inst13|inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst46|inst|aux_tff~q\);

-- Location: CLKCTRL_G1
\inst25|inst46|inst|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst25|inst46|inst|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst25|inst46|inst|aux_tff~clkctrl_outclk\);

-- Location: LCCOMB_X17_Y9_N6
\inst25|inst46|inst1|q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst1|q[0]~1_combout\ = !\inst25|inst46|inst1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|inst46|inst1|q\(0),
	combout => \inst25|inst46|inst1|q[0]~1_combout\);

-- Location: FF_X17_Y9_N7
\inst25|inst46|inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25|inst46|inst|aux_tff~clkctrl_outclk\,
	d => \inst25|inst46|inst1|q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst46|inst1|q\(0));

-- Location: LCCOMB_X17_Y9_N28
\inst25|inst46|inst1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst1|_~0_combout\ = \inst25|inst46|inst1|q\(1) $ (\inst25|inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst25|inst46|inst1|q\(1),
	datad => \inst25|inst46|inst1|q\(0),
	combout => \inst25|inst46|inst1|_~0_combout\);

-- Location: FF_X17_Y9_N29
\inst25|inst46|inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst25|inst46|inst|aux_tff~clkctrl_outclk\,
	d => \inst25|inst46|inst1|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst25|inst46|inst1|q\(1));

-- Location: LCCOMB_X17_Y9_N24
\inst25|inst46|inst5|decoder_out[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|decoder_out[3]~0_combout\ = (\inst25|inst46|inst1|q\(0) & \inst25|inst46|inst1|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst1|q\(0),
	datad => \inst25|inst46|inst1|q\(1),
	combout => \inst25|inst46|inst5|decoder_out[3]~0_combout\);

-- Location: LCCOMB_X16_Y9_N24
\inst25|inst46|inst5|force_off[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|force_off[3]~0_combout\ = (!\inst13|inst46|inst4|aux_tff~q\ & (\inst25|inst22|reset_cont~2_combout\ & (!\inst25|inst39|q\(0) & !\inst25|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|aux_tff~q\,
	datab => \inst25|inst22|reset_cont~2_combout\,
	datac => \inst25|inst39|q\(0),
	datad => \inst25|inst39|q\(1),
	combout => \inst25|inst46|inst5|force_off[3]~0_combout\);

-- Location: LCCOMB_X17_Y9_N10
\inst25|inst46|inst5|alterna[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|alterna\(3) = ((\inst25|inst46|inst5|force_off[3]~0_combout\) # ((!\inst13|inst46|inst6|aux_tff~q\ & \inst25|inst40|final_cont~14_combout\))) # (!\inst25|inst46|inst5|decoder_out[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|decoder_out[3]~0_combout\,
	datab => \inst25|inst46|inst5|force_off[3]~0_combout\,
	datac => \inst13|inst46|inst6|aux_tff~q\,
	datad => \inst25|inst40|final_cont~14_combout\,
	combout => \inst25|inst46|inst5|alterna\(3));

-- Location: LCCOMB_X24_Y13_N18
\inst17|dig_out[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[3]~32_combout\ = (\inst1|crono_q\(1) & (\inst13|inst46|inst5|alterna\(3))) # (!\inst1|crono_q\(1) & (((\inst1|crono_q\(2) & \inst25|inst46|inst5|alterna\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst5|alterna\(3),
	datab => \inst1|crono_q\(2),
	datac => \inst25|inst46|inst5|alterna\(3),
	datad => \inst1|crono_q\(1),
	combout => \inst17|dig_out[3]~32_combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst17|dig_out[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[3]~23_combout\ = ((\inst17|dig_out[3]~21_combout\) # (\inst17|dig_out[3]~32_combout\)) # (!\inst17|dig_out[3]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|dig_out[3]~22_combout\,
	datac => \inst17|dig_out[3]~21_combout\,
	datad => \inst17|dig_out[3]~32_combout\,
	combout => \inst17|dig_out[3]~23_combout\);

-- Location: LCCOMB_X16_Y9_N14
\inst25|inst46|inst5|force_off[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|force_off[2]~1_combout\ = (!\inst13|inst46|inst4|aux_tff~q\ & (\inst25|inst22|reset_cont~2_combout\ & (\inst25|inst39|q\(0) & \inst25|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|aux_tff~q\,
	datab => \inst25|inst22|reset_cont~2_combout\,
	datac => \inst25|inst39|q\(0),
	datad => \inst25|inst39|q\(1),
	combout => \inst25|inst46|inst5|force_off[2]~1_combout\);

-- Location: LCCOMB_X17_Y9_N4
\inst25|inst46|inst5|alterna[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|alterna[2]~4_combout\ = (\inst25|inst46|inst5|force_off[2]~1_combout\) # (!\inst25|inst46|inst1|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|force_off[2]~1_combout\,
	datad => \inst25|inst46|inst1|q\(1),
	combout => \inst25|inst46|inst5|alterna[2]~4_combout\);

-- Location: LCCOMB_X17_Y9_N26
\inst25|inst46|inst5|alterna[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|alterna\(2) = (\inst25|inst46|inst1|q\(0)) # ((\inst25|inst46|inst5|alterna[2]~4_combout\) # ((!\inst13|inst46|inst6|aux_tff~q\ & \inst25|inst40|final_cont~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst1|q\(0),
	datab => \inst13|inst46|inst6|aux_tff~q\,
	datac => \inst25|inst46|inst5|alterna[2]~4_combout\,
	datad => \inst25|inst40|final_cont~14_combout\,
	combout => \inst25|inst46|inst5|alterna\(2));

-- Location: LCCOMB_X26_Y10_N0
\inst30|inst46|inst5|alterna[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst5|alterna[2]~5_combout\ = (!\inst30|inst46|inst1|q\(0) & ((\inst13|inst46|inst6|aux_tff~q\) # (!\inst30|inst40|final_cont~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst40|final_cont~15_combout\,
	datab => \inst30|inst46|inst1|q\(0),
	datac => \inst13|inst46|inst6|aux_tff~q\,
	combout => \inst30|inst46|inst5|alterna[2]~5_combout\);

-- Location: LCCOMB_X26_Y10_N10
\inst30|inst46|inst5|alterna[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst5|alterna\(2) = (((\inst30|inst37|_~0_combout\ & !\inst13|inst46|inst4|aux_tff~q\)) # (!\inst30|inst46|inst1|q\(1))) # (!\inst30|inst46|inst5|alterna[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst37|_~0_combout\,
	datab => \inst30|inst46|inst5|alterna[2]~5_combout\,
	datac => \inst13|inst46|inst4|aux_tff~q\,
	datad => \inst30|inst46|inst1|q\(1),
	combout => \inst30|inst46|inst5|alterna\(2));

-- Location: LCCOMB_X18_Y14_N22
\inst32|inst46|inst5|force_off[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst5|force_off[2]~2_combout\ = (\inst32|inst22|reset_cont~0_combout\ & (!\inst13|inst46|inst4|aux_tff~q\ & (\inst32|inst39|q\(0) & \inst32|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst22|reset_cont~0_combout\,
	datab => \inst13|inst46|inst4|aux_tff~q\,
	datac => \inst32|inst39|q\(0),
	datad => \inst32|inst39|q\(1),
	combout => \inst32|inst46|inst5|force_off[2]~2_combout\);

-- Location: LCCOMB_X18_Y14_N0
\inst32|inst46|inst5|alterna[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst5|alterna\(2) = (\inst32|inst46|inst5|force_off[2]~2_combout\) # ((\inst32|inst46|inst5|force_off[3]~0_combout\) # ((\inst32|inst46|inst1|q\(0)) # (!\inst32|inst46|inst1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst5|force_off[2]~2_combout\,
	datab => \inst32|inst46|inst5|force_off[3]~0_combout\,
	datac => \inst32|inst46|inst1|q\(0),
	datad => \inst32|inst46|inst1|q\(1),
	combout => \inst32|inst46|inst5|alterna\(2));

-- Location: LCCOMB_X18_Y13_N24
\inst17|dig_out[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[2]~25_combout\ = (\inst30|inst46|inst5|alterna\(2) & ((\inst15|_~1_combout\) # ((\inst32|inst46|inst5|alterna\(2) & \inst15|_~2_combout\)))) # (!\inst30|inst46|inst5|alterna\(2) & (\inst32|inst46|inst5|alterna\(2) & 
-- (\inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst46|inst5|alterna\(2),
	datab => \inst32|inst46|inst5|alterna\(2),
	datac => \inst15|_~2_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst17|dig_out[2]~25_combout\);

-- Location: LCCOMB_X21_Y15_N30
\inst13|inst46|inst5|alterna[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst5|alterna[2]~5_combout\ = (!\inst13|inst46|inst1|q\(0) & ((\inst13|inst46|inst6|aux_tff~q\) # ((!\inst13|inst40|final_cont~5_combout\ & !\inst13|inst40|final_cont~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst6|aux_tff~q\,
	datab => \inst13|inst40|final_cont~5_combout\,
	datac => \inst13|inst46|inst1|q\(0),
	datad => \inst13|inst40|final_cont~16_combout\,
	combout => \inst13|inst46|inst5|alterna[2]~5_combout\);

-- Location: LCCOMB_X21_Y15_N24
\inst13|inst37|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|_~0_combout\ = (!\inst23|q\(1) & (\inst15|menu_out_c1[0]~2_combout\ & (\inst13|inst39|q\(0) & \inst13|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(1),
	datab => \inst15|menu_out_c1[0]~2_combout\,
	datac => \inst13|inst39|q\(0),
	datad => \inst13|inst39|q\(1),
	combout => \inst13|inst37|_~0_combout\);

-- Location: LCCOMB_X21_Y15_N16
\inst13|inst46|inst5|alterna[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst5|alterna\(2) = (((!\inst13|inst46|inst4|aux_tff~q\ & \inst13|inst37|_~0_combout\)) # (!\inst13|inst46|inst1|q\(1))) # (!\inst13|inst46|inst5|alterna[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst5|alterna[2]~5_combout\,
	datab => \inst13|inst46|inst4|aux_tff~q\,
	datac => \inst13|inst46|inst1|q\(1),
	datad => \inst13|inst37|_~0_combout\,
	combout => \inst13|inst46|inst5|alterna\(2));

-- Location: LCCOMB_X19_Y15_N8
\inst17|dig_out[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[2]~24_combout\ = ((\inst1|crono_q\(1) & \inst13|inst46|inst5|alterna\(2))) # (!\inst17|dig_out[3]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|dig_out[3]~22_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst13|inst46|inst5|alterna\(2),
	combout => \inst17|dig_out[2]~24_combout\);

-- Location: LCCOMB_X18_Y13_N18
\inst17|dig_out[2]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[2]~26_combout\ = (\inst17|dig_out[2]~25_combout\) # ((\inst17|dig_out[2]~24_combout\) # ((\inst25|inst46|inst5|alterna\(2) & \inst15|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|alterna\(2),
	datab => \inst17|dig_out[2]~25_combout\,
	datac => \inst15|_~0_combout\,
	datad => \inst17|dig_out[2]~24_combout\,
	combout => \inst17|dig_out[2]~26_combout\);

-- Location: LCCOMB_X26_Y10_N16
\inst30|inst46|inst5|alterna[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst5|alterna[1]~6_combout\ = ((\inst30|inst46|inst1|q\(1)) # ((\inst30|inst37|_~1_combout\ & !\inst13|inst46|inst4|aux_tff~q\))) # (!\inst30|inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst37|_~1_combout\,
	datab => \inst30|inst46|inst1|q\(0),
	datac => \inst13|inst46|inst4|aux_tff~q\,
	datad => \inst30|inst46|inst1|q\(1),
	combout => \inst30|inst46|inst5|alterna[1]~6_combout\);

-- Location: LCCOMB_X26_Y10_N14
\inst30|inst46|inst5|alterna[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst5|alterna\(1) = (\inst30|inst46|inst5|alterna[1]~6_combout\) # ((\inst30|inst40|final_cont~15_combout\ & !\inst13|inst46|inst6|aux_tff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst40|final_cont~15_combout\,
	datac => \inst13|inst46|inst6|aux_tff~q\,
	datad => \inst30|inst46|inst5|alterna[1]~6_combout\,
	combout => \inst30|inst46|inst5|alterna\(1));

-- Location: LCCOMB_X18_Y14_N14
\inst32|inst46|inst5|force_off[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst5|force_off[1]~3_combout\ = (\inst32|inst22|reset_cont~0_combout\ & (!\inst13|inst46|inst4|aux_tff~q\ & (!\inst32|inst39|q\(0) & \inst32|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst22|reset_cont~0_combout\,
	datab => \inst13|inst46|inst4|aux_tff~q\,
	datac => \inst32|inst39|q\(0),
	datad => \inst32|inst39|q\(1),
	combout => \inst32|inst46|inst5|force_off[1]~3_combout\);

-- Location: LCCOMB_X18_Y14_N20
\inst32|inst46|inst5|alterna[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst5|alterna\(1) = ((\inst32|inst46|inst5|force_off[3]~0_combout\) # ((\inst32|inst46|inst5|force_off[1]~3_combout\) # (\inst32|inst46|inst1|q\(1)))) # (!\inst32|inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst1|q\(0),
	datab => \inst32|inst46|inst5|force_off[3]~0_combout\,
	datac => \inst32|inst46|inst5|force_off[1]~3_combout\,
	datad => \inst32|inst46|inst1|q\(1),
	combout => \inst32|inst46|inst5|alterna\(1));

-- Location: LCCOMB_X19_Y12_N4
\inst17|dig_out[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[1]~27_combout\ = (\inst15|_~1_combout\ & ((\inst30|inst46|inst5|alterna\(1)) # ((\inst32|inst46|inst5|alterna\(1) & \inst15|_~2_combout\)))) # (!\inst15|_~1_combout\ & (((\inst32|inst46|inst5|alterna\(1) & \inst15|_~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~1_combout\,
	datab => \inst30|inst46|inst5|alterna\(1),
	datac => \inst32|inst46|inst5|alterna\(1),
	datad => \inst15|_~2_combout\,
	combout => \inst17|dig_out[1]~27_combout\);

-- Location: LCCOMB_X21_Y15_N6
\inst13|inst37|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|_~1_combout\ = (!\inst23|q\(1) & (\inst15|menu_out_c1[0]~2_combout\ & (!\inst13|inst39|q\(0) & \inst13|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(1),
	datab => \inst15|menu_out_c1[0]~2_combout\,
	datac => \inst13|inst39|q\(0),
	datad => \inst13|inst39|q\(1),
	combout => \inst13|inst37|_~1_combout\);

-- Location: LCCOMB_X21_Y15_N4
\inst13|inst46|inst5|alterna[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst5|alterna[1]~6_combout\ = (\inst13|inst46|inst1|q\(1)) # (((\inst13|inst37|_~1_combout\ & !\inst13|inst46|inst4|aux_tff~q\)) # (!\inst13|inst46|inst1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst37|_~1_combout\,
	datab => \inst13|inst46|inst1|q\(1),
	datac => \inst13|inst46|inst1|q\(0),
	datad => \inst13|inst46|inst4|aux_tff~q\,
	combout => \inst13|inst46|inst5|alterna[1]~6_combout\);

-- Location: LCCOMB_X21_Y15_N14
\inst13|inst46|inst5|alterna[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst5|alterna\(1) = (\inst13|inst46|inst5|alterna[1]~6_combout\) # ((!\inst13|inst46|inst6|aux_tff~q\ & ((\inst13|inst40|final_cont~16_combout\) # (\inst13|inst40|final_cont~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst40|final_cont~16_combout\,
	datab => \inst13|inst46|inst6|aux_tff~q\,
	datac => \inst13|inst46|inst5|alterna[1]~6_combout\,
	datad => \inst13|inst40|final_cont~5_combout\,
	combout => \inst13|inst46|inst5|alterna\(1));

-- Location: LCCOMB_X16_Y9_N4
\inst25|inst46|inst5|force_off[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|force_off[1]~2_combout\ = (!\inst13|inst46|inst4|aux_tff~q\ & (\inst25|inst22|reset_cont~2_combout\ & (!\inst25|inst39|q\(0) & \inst25|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|aux_tff~q\,
	datab => \inst25|inst22|reset_cont~2_combout\,
	datac => \inst25|inst39|q\(0),
	datad => \inst25|inst39|q\(1),
	combout => \inst25|inst46|inst5|force_off[1]~2_combout\);

-- Location: LCCOMB_X17_Y9_N16
\inst25|inst46|inst5|alterna[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|alterna[1]~5_combout\ = (\inst25|inst46|inst1|q\(1)) # (!\inst25|inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst1|q\(0),
	datad => \inst25|inst46|inst1|q\(1),
	combout => \inst25|inst46|inst5|alterna[1]~5_combout\);

-- Location: LCCOMB_X17_Y9_N30
\inst25|inst46|inst5|alterna[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|alterna\(1) = (\inst25|inst46|inst5|force_off[1]~2_combout\) # ((\inst25|inst46|inst5|alterna[1]~5_combout\) # ((\inst25|inst40|final_cont~14_combout\ & !\inst13|inst46|inst6|aux_tff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst40|final_cont~14_combout\,
	datab => \inst25|inst46|inst5|force_off[1]~2_combout\,
	datac => \inst13|inst46|inst6|aux_tff~q\,
	datad => \inst25|inst46|inst5|alterna[1]~5_combout\,
	combout => \inst25|inst46|inst5|alterna\(1));

-- Location: LCCOMB_X19_Y15_N12
\inst17|dig_out[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[1]~33_combout\ = (\inst1|crono_q\(1) & (((\inst13|inst46|inst5|alterna\(1))))) # (!\inst1|crono_q\(1) & (\inst1|crono_q\(2) & ((\inst25|inst46|inst5|alterna\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst1|crono_q\(2),
	datac => \inst13|inst46|inst5|alterna\(1),
	datad => \inst25|inst46|inst5|alterna\(1),
	combout => \inst17|dig_out[1]~33_combout\);

-- Location: LCCOMB_X19_Y15_N2
\inst17|dig_out[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[1]~28_combout\ = ((\inst17|dig_out[1]~27_combout\) # (\inst17|dig_out[1]~33_combout\)) # (!\inst17|dig_out[3]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|dig_out[3]~22_combout\,
	datac => \inst17|dig_out[1]~27_combout\,
	datad => \inst17|dig_out[1]~33_combout\,
	combout => \inst17|dig_out[1]~28_combout\);

-- Location: LCCOMB_X21_Y15_N12
\inst13|inst37|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst37|_~2_combout\ = (!\inst23|q\(1) & (\inst15|menu_out_c1[0]~2_combout\ & (\inst13|inst39|q\(0) & !\inst13|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(1),
	datab => \inst15|menu_out_c1[0]~2_combout\,
	datac => \inst13|inst39|q\(0),
	datad => \inst13|inst39|q\(1),
	combout => \inst13|inst37|_~2_combout\);

-- Location: LCCOMB_X21_Y15_N22
\inst13|inst46|inst5|alterna[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst46|inst5|alterna\(0) = ((\inst13|inst46|inst1|q\(1)) # ((!\inst13|inst46|inst4|aux_tff~q\ & \inst13|inst37|_~2_combout\))) # (!\inst13|inst46|inst5|alterna[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst5|alterna[2]~5_combout\,
	datab => \inst13|inst46|inst4|aux_tff~q\,
	datac => \inst13|inst46|inst1|q\(1),
	datad => \inst13|inst37|_~2_combout\,
	combout => \inst13|inst46|inst5|alterna\(0));

-- Location: LCCOMB_X19_Y15_N28
\inst17|dig_out[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[0]~29_combout\ = ((\inst13|inst46|inst5|alterna\(0) & \inst1|crono_q\(1))) # (!\inst17|dig_out[3]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst46|inst5|alterna\(0),
	datac => \inst1|crono_q\(1),
	datad => \inst17|dig_out[3]~22_combout\,
	combout => \inst17|dig_out[0]~29_combout\);

-- Location: LCCOMB_X16_Y9_N10
\inst25|inst46|inst5|force_off[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|force_off[0]~3_combout\ = (!\inst13|inst46|inst4|aux_tff~q\ & (\inst25|inst22|reset_cont~2_combout\ & (\inst25|inst39|q\(0) & !\inst25|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst4|aux_tff~q\,
	datab => \inst25|inst22|reset_cont~2_combout\,
	datac => \inst25|inst39|q\(0),
	datad => \inst25|inst39|q\(1),
	combout => \inst25|inst46|inst5|force_off[0]~3_combout\);

-- Location: LCCOMB_X17_Y9_N12
\inst25|inst46|inst5|alterna[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|alterna[0]~6_combout\ = (\inst25|inst46|inst5|force_off[0]~3_combout\) # (\inst25|inst46|inst1|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|force_off[0]~3_combout\,
	datad => \inst25|inst46|inst1|q\(1),
	combout => \inst25|inst46|inst5|alterna[0]~6_combout\);

-- Location: LCCOMB_X17_Y9_N14
\inst25|inst46|inst5|alterna[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|alterna\(0) = (\inst25|inst46|inst5|alterna[0]~6_combout\) # ((\inst25|inst46|inst1|q\(0)) # ((!\inst13|inst46|inst6|aux_tff~q\ & \inst25|inst40|final_cont~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|alterna[0]~6_combout\,
	datab => \inst25|inst46|inst1|q\(0),
	datac => \inst13|inst46|inst6|aux_tff~q\,
	datad => \inst25|inst40|final_cont~14_combout\,
	combout => \inst25|inst46|inst5|alterna\(0));

-- Location: LCCOMB_X26_Y10_N4
\inst30|inst46|inst5|alterna[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst46|inst5|alterna\(0) = ((\inst30|inst46|inst1|q\(1)) # ((\inst30|inst37|_~2_combout\ & !\inst13|inst46|inst4|aux_tff~q\))) # (!\inst30|inst46|inst5|alterna[2]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst37|_~2_combout\,
	datab => \inst30|inst46|inst5|alterna[2]~5_combout\,
	datac => \inst13|inst46|inst4|aux_tff~q\,
	datad => \inst30|inst46|inst1|q\(1),
	combout => \inst30|inst46|inst5|alterna\(0));

-- Location: LCCOMB_X18_Y14_N30
\inst32|inst46|inst5|force_off[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst5|force_off[0]~4_combout\ = (\inst32|inst22|reset_cont~0_combout\ & (!\inst13|inst46|inst4|aux_tff~q\ & (\inst32|inst39|q\(0) & !\inst32|inst39|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst22|reset_cont~0_combout\,
	datab => \inst13|inst46|inst4|aux_tff~q\,
	datac => \inst32|inst39|q\(0),
	datad => \inst32|inst39|q\(1),
	combout => \inst32|inst46|inst5|force_off[0]~4_combout\);

-- Location: LCCOMB_X18_Y14_N28
\inst32|inst46|inst5|alterna[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst46|inst5|alterna\(0) = (\inst32|inst46|inst5|force_off[0]~4_combout\) # ((\inst32|inst46|inst5|force_off[3]~0_combout\) # ((\inst32|inst46|inst1|q\(0)) # (\inst32|inst46|inst1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst5|force_off[0]~4_combout\,
	datab => \inst32|inst46|inst5|force_off[3]~0_combout\,
	datac => \inst32|inst46|inst1|q\(0),
	datad => \inst32|inst46|inst1|q\(1),
	combout => \inst32|inst46|inst5|alterna\(0));

-- Location: LCCOMB_X16_Y12_N24
\inst17|dig_out[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[0]~30_combout\ = (\inst30|inst46|inst5|alterna\(0) & ((\inst15|_~1_combout\) # ((\inst15|_~2_combout\ & \inst32|inst46|inst5|alterna\(0))))) # (!\inst30|inst46|inst5|alterna\(0) & (\inst15|_~2_combout\ & 
-- ((\inst32|inst46|inst5|alterna\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst46|inst5|alterna\(0),
	datab => \inst15|_~2_combout\,
	datac => \inst15|_~1_combout\,
	datad => \inst32|inst46|inst5|alterna\(0),
	combout => \inst17|dig_out[0]~30_combout\);

-- Location: LCCOMB_X16_Y12_N22
\inst17|dig_out[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|dig_out[0]~31_combout\ = (\inst17|dig_out[0]~29_combout\) # ((\inst17|dig_out[0]~30_combout\) # ((\inst15|_~0_combout\ & \inst25|inst46|inst5|alterna\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|dig_out[0]~29_combout\,
	datab => \inst15|_~0_combout\,
	datac => \inst25|inst46|inst5|alterna\(0),
	datad => \inst17|dig_out[0]~30_combout\,
	combout => \inst17|dig_out[0]~31_combout\);

-- Location: LCCOMB_X30_Y12_N10
\inst33|led4_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|led4_out~11_combout\ = ((!\inst23|q\(1) & (!\inst23|q\(0) & \inst13|inst46|inst4|aux_tff~q\))) # (!\inst15|_~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datab => \inst23|q\(1),
	datac => \inst23|q\(0),
	datad => \inst13|inst46|inst4|aux_tff~q\,
	combout => \inst33|led4_out~11_combout\);

-- Location: LCCOMB_X30_Y12_N4
\inst33|led3_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|led3_out~5_combout\ = ((!\inst23|q\(0) & (!\inst23|q\(1) & \inst13|inst46|inst4|aux_tff~q\))) # (!\inst15|_~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(0),
	datab => \inst23|q\(1),
	datac => \inst15|_~1_combout\,
	datad => \inst13|inst46|inst4|aux_tff~q\,
	combout => \inst33|led3_out~5_combout\);

-- Location: LCCOMB_X30_Y12_N22
\inst33|led2_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|led2_out~5_combout\ = ((!\inst23|q\(1) & (!\inst23|q\(0) & \inst13|inst46|inst4|aux_tff~q\))) # (!\inst15|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~0_combout\,
	datab => \inst23|q\(1),
	datac => \inst23|q\(0),
	datad => \inst13|inst46|inst4|aux_tff~q\,
	combout => \inst33|led2_out~5_combout\);

-- Location: LCCOMB_X30_Y12_N16
\inst33|led1_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|led1_out~1_combout\ = ((!\inst23|q\(1) & (!\inst23|q\(0) & \inst13|inst46|inst4|aux_tff~q\))) # (!\inst1|crono_q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst23|q\(1),
	datac => \inst23|q\(0),
	datad => \inst13|inst46|inst4|aux_tff~q\,
	combout => \inst33|led1_out~1_combout\);

-- Location: LCCOMB_X19_Y13_N12
\inst25|inst31|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|_~0_combout\ = (!\inst1|crono_q\(1) & (\inst1|crono_q\(2) & (\inst23|q\(1) $ (\inst23|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(1),
	datab => \inst1|crono_q\(1),
	datac => \inst23|q\(0),
	datad => \inst1|crono_q\(2),
	combout => \inst25|inst31|_~0_combout\);

-- Location: LCCOMB_X22_Y9_N30
\inst25|inst31|cnt_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|cnt_out[2]~13_combout\ = (\inst25|inst31|_~0_combout\ & (\inst25|inst27|q\(2))) # (!\inst25|inst31|_~0_combout\ & ((\inst25|inst23|centena_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst31|_~0_combout\,
	datac => \inst25|inst27|q\(2),
	datad => \inst25|inst23|centena_q\(2),
	combout => \inst25|inst31|cnt_out[2]~13_combout\);

-- Location: LCCOMB_X23_Y10_N8
\inst25|inst31|cnt_out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|cnt_out[1]~12_combout\ = (\inst25|inst31|_~0_combout\ & (!\inst25|inst27|q\(1))) # (!\inst25|inst31|_~0_combout\ & ((!\inst25|inst23|centena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst27|q\(1),
	datac => \inst25|inst31|_~0_combout\,
	datad => \inst25|inst23|centena_q\(1),
	combout => \inst25|inst31|cnt_out[1]~12_combout\);

-- Location: LCCOMB_X22_Y9_N4
\inst25|inst31|cnt_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|cnt_out[0]~14_combout\ = (\inst25|inst31|_~0_combout\ & ((\inst25|inst27|q\(0)))) # (!\inst25|inst31|_~0_combout\ & (\inst25|inst23|centena_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|centena_q\(0),
	datab => \inst25|inst31|_~0_combout\,
	datac => \inst25|inst27|q\(0),
	combout => \inst25|inst31|cnt_out[0]~14_combout\);

-- Location: LCCOMB_X22_Y9_N12
\inst17|seg_out[4]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~43_combout\ = (!\inst25|inst46|inst5|alterna\(1) & ((\inst25|inst31|_~0_combout\ & (!\inst25|inst27|q\(3))) # (!\inst25|inst31|_~0_combout\ & ((!\inst25|inst23|centena_q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|alterna\(1),
	datab => \inst25|inst31|_~0_combout\,
	datac => \inst25|inst27|q\(3),
	datad => \inst25|inst23|centena_q\(3),
	combout => \inst17|seg_out[4]~43_combout\);

-- Location: LCCOMB_X22_Y9_N14
\inst25|inst|segmento_out[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[0]~30_combout\ = (\inst25|inst31|cnt_out[1]~12_combout\ & (\inst17|seg_out[4]~43_combout\ & (\inst25|inst31|cnt_out[2]~13_combout\ $ (\inst25|inst31|cnt_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|cnt_out[2]~13_combout\,
	datab => \inst25|inst31|cnt_out[1]~12_combout\,
	datac => \inst25|inst31|cnt_out[0]~14_combout\,
	datad => \inst17|seg_out[4]~43_combout\,
	combout => \inst25|inst|segmento_out[0]~30_combout\);

-- Location: LCCOMB_X23_Y10_N2
\inst25|inst31|dzn_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|dzn_out[0]~15_combout\ = (\inst25|inst31|_~0_combout\ & ((\inst25|inst26|q\(0)))) # (!\inst25|inst31|_~0_combout\ & (\inst25|inst23|dezena_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst23|dezena_q\(0),
	datac => \inst25|inst31|_~0_combout\,
	datad => \inst25|inst26|q\(0),
	combout => \inst25|inst31|dzn_out[0]~15_combout\);

-- Location: LCCOMB_X23_Y10_N30
\inst25|inst31|dzn_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|dzn_out[1]~13_combout\ = (\inst25|inst31|_~0_combout\ & ((!\inst25|inst26|q\(1)))) # (!\inst25|inst31|_~0_combout\ & (!\inst25|inst23|dezena_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst23|dezena_q\(1),
	datac => \inst25|inst31|_~0_combout\,
	datad => \inst25|inst26|q\(1),
	combout => \inst25|inst31|dzn_out[1]~13_combout\);

-- Location: LCCOMB_X23_Y10_N20
\inst25|inst31|dzn_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|dzn_out[2]~14_combout\ = (\inst25|inst31|_~0_combout\ & (\inst25|inst26|q\(2))) # (!\inst25|inst31|_~0_combout\ & ((\inst25|inst23|dezena_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst26|q\(2),
	datac => \inst25|inst31|_~0_combout\,
	datad => \inst25|inst23|dezena_q\(2),
	combout => \inst25|inst31|dzn_out[2]~14_combout\);

-- Location: LCCOMB_X23_Y9_N20
\inst25|inst|segmento_out[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[0]~32_combout\ = (\inst25|inst31|dzn_out[1]~13_combout\ & (\inst25|inst31|dzn_out[0]~15_combout\ $ (\inst25|inst31|dzn_out[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst31|dzn_out[0]~15_combout\,
	datac => \inst25|inst31|dzn_out[1]~13_combout\,
	datad => \inst25|inst31|dzn_out[2]~14_combout\,
	combout => \inst25|inst|segmento_out[0]~32_combout\);

-- Location: LCCOMB_X17_Y9_N8
\inst25|inst46|inst5|alterna[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst46|inst5|alterna[2]~7_combout\ = (!\inst25|inst46|inst1|q\(0) & ((\inst13|inst46|inst6|aux_tff~q\) # (!\inst25|inst40|final_cont~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst40|final_cont~14_combout\,
	datac => \inst13|inst46|inst6|aux_tff~q\,
	datad => \inst25|inst46|inst1|q\(0),
	combout => \inst25|inst46|inst5|alterna[2]~7_combout\);

-- Location: LCCOMB_X25_Y10_N30
\inst25|inst31|dzn_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|dzn_out[3]~12_combout\ = (\inst25|inst31|_~0_combout\ & (!\inst25|inst26|q\(3))) # (!\inst25|inst31|_~0_combout\ & ((!\inst25|inst23|dezena_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst26|q\(3),
	datac => \inst25|inst23|dezena_q\(3),
	datad => \inst25|inst31|_~0_combout\,
	combout => \inst25|inst31|dzn_out[3]~12_combout\);

-- Location: LCCOMB_X17_Y9_N20
\inst17|seg_out[4]~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~164_combout\ = (!\inst25|inst46|inst5|force_off[2]~1_combout\ & (\inst25|inst46|inst5|alterna[2]~7_combout\ & (\inst25|inst31|dzn_out[3]~12_combout\ & \inst25|inst46|inst1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|force_off[2]~1_combout\,
	datab => \inst25|inst46|inst5|alterna[2]~7_combout\,
	datac => \inst25|inst31|dzn_out[3]~12_combout\,
	datad => \inst25|inst46|inst1|q\(1),
	combout => \inst17|seg_out[4]~164_combout\);

-- Location: LCCOMB_X22_Y14_N30
\inst25|inst31|mil_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|mil_out[3]~12_combout\ = (\inst25|inst31|_~0_combout\ & (!\inst25|inst28|q\(3))) # (!\inst25|inst31|_~0_combout\ & ((!\inst25|inst23|milhar_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(3),
	datab => \inst25|inst31|_~0_combout\,
	datad => \inst25|inst23|milhar_q\(3),
	combout => \inst25|inst31|mil_out[3]~12_combout\);

-- Location: LCCOMB_X17_Y9_N22
\inst17|seg_out[4]~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~163_combout\ = (!\inst25|inst46|inst5|force_off[0]~3_combout\ & (\inst25|inst31|mil_out[3]~12_combout\ & (\inst25|inst46|inst5|alterna[2]~7_combout\ & !\inst25|inst46|inst1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|force_off[0]~3_combout\,
	datab => \inst25|inst31|mil_out[3]~12_combout\,
	datac => \inst25|inst46|inst5|alterna[2]~7_combout\,
	datad => \inst25|inst46|inst1|q\(1),
	combout => \inst17|seg_out[4]~163_combout\);

-- Location: LCCOMB_X24_Y15_N20
\inst25|inst31|mil_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|mil_out[1]~13_combout\ = (\inst25|inst31|_~0_combout\ & ((!\inst25|inst28|q\(1)))) # (!\inst25|inst31|_~0_combout\ & (!\inst25|inst23|milhar_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst23|milhar_q\(1),
	datac => \inst25|inst28|q\(1),
	datad => \inst25|inst31|_~0_combout\,
	combout => \inst25|inst31|mil_out[1]~13_combout\);

-- Location: LCCOMB_X24_Y15_N30
\inst25|inst31|mil_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|mil_out[0]~15_combout\ = (\inst25|inst31|_~0_combout\ & ((\inst25|inst28|q\(0)))) # (!\inst25|inst31|_~0_combout\ & (\inst25|inst23|milhar_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|_~0_combout\,
	datab => \inst25|inst23|milhar_q\(0),
	datad => \inst25|inst28|q\(0),
	combout => \inst25|inst31|mil_out[0]~15_combout\);

-- Location: LCCOMB_X19_Y13_N30
\inst25|inst31|mil_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|mil_out[2]~14_combout\ = (\inst25|inst31|_~0_combout\ & (\inst25|inst28|q\(2))) # (!\inst25|inst31|_~0_combout\ & ((\inst25|inst23|milhar_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst28|q\(2),
	datac => \inst25|inst23|milhar_q\(2),
	datad => \inst25|inst31|_~0_combout\,
	combout => \inst25|inst31|mil_out[2]~14_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst25|inst|segmento_out[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[0]~31_combout\ = (\inst17|seg_out[4]~163_combout\ & (\inst25|inst31|mil_out[1]~13_combout\ & (\inst25|inst31|mil_out[0]~15_combout\ $ (\inst25|inst31|mil_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~163_combout\,
	datab => \inst25|inst31|mil_out[1]~13_combout\,
	datac => \inst25|inst31|mil_out[0]~15_combout\,
	datad => \inst25|inst31|mil_out[2]~14_combout\,
	combout => \inst25|inst|segmento_out[0]~31_combout\);

-- Location: LCCOMB_X23_Y9_N30
\inst25|inst|segmento_out[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[0]~33_combout\ = (\inst25|inst|segmento_out[0]~30_combout\) # ((\inst25|inst|segmento_out[0]~31_combout\) # ((\inst25|inst|segmento_out[0]~32_combout\ & \inst17|seg_out[4]~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|segmento_out[0]~30_combout\,
	datab => \inst25|inst|segmento_out[0]~32_combout\,
	datac => \inst17|seg_out[4]~164_combout\,
	datad => \inst25|inst|segmento_out[0]~31_combout\,
	combout => \inst25|inst|segmento_out[0]~33_combout\);

-- Location: LCCOMB_X17_Y9_N2
\inst25|inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|_~0_combout\ = (\inst25|inst46|inst5|alterna\(1) & (((\inst25|inst46|inst5|alterna[2]~4_combout\ & \inst25|inst46|inst5|alterna[0]~6_combout\)) # (!\inst25|inst46|inst5|alterna[2]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|alterna\(1),
	datab => \inst25|inst46|inst5|alterna[2]~7_combout\,
	datac => \inst25|inst46|inst5|alterna[2]~4_combout\,
	datad => \inst25|inst46|inst5|alterna[0]~6_combout\,
	combout => \inst25|inst|_~0_combout\);

-- Location: LCCOMB_X24_Y9_N10
\inst25|inst|segmento_out[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[0]~34_combout\ = (!\inst25|inst46|inst5|alterna\(3)) # (!\inst25|inst|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|_~0_combout\,
	datad => \inst25|inst46|inst5|alterna\(3),
	combout => \inst25|inst|segmento_out[0]~34_combout\);

-- Location: LCCOMB_X24_Y9_N12
\inst25|inst31|und_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|und_out[2]~14_combout\ = (\inst25|inst31|_~0_combout\ & ((\inst25|inst25|q\(2)))) # (!\inst25|inst31|_~0_combout\ & (\inst25|inst23|unidade_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst23|unidade_q\(2),
	datac => \inst25|inst25|q\(2),
	datad => \inst25|inst31|_~0_combout\,
	combout => \inst25|inst31|und_out[2]~14_combout\);

-- Location: LCCOMB_X25_Y10_N20
\inst25|inst31|und_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|und_out[1]~13_combout\ = (\inst25|inst31|_~0_combout\ & (!\inst25|inst25|q\(1))) # (!\inst25|inst31|_~0_combout\ & ((!\inst25|inst23|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|_~0_combout\,
	datab => \inst25|inst25|q\(1),
	datad => \inst25|inst23|unidade_q\(1),
	combout => \inst25|inst31|und_out[1]~13_combout\);

-- Location: LCCOMB_X24_Y9_N4
\inst25|inst31|und_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|und_out[3]~12_combout\ = (\inst25|inst31|_~0_combout\ & ((!\inst25|inst25|q\(3)))) # (!\inst25|inst31|_~0_combout\ & (!\inst25|inst23|unidade_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|_~0_combout\,
	datac => \inst25|inst23|unidade_q\(3),
	datad => \inst25|inst25|q\(3),
	combout => \inst25|inst31|und_out[3]~12_combout\);

-- Location: LCCOMB_X24_Y9_N30
\inst17|seg_out[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~42_combout\ = (\inst25|inst|_~0_combout\ & (\inst25|inst31|und_out[3]~12_combout\ & !\inst25|inst46|inst5|alterna\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|_~0_combout\,
	datab => \inst25|inst31|und_out[3]~12_combout\,
	datad => \inst25|inst46|inst5|alterna\(3),
	combout => \inst17|seg_out[4]~42_combout\);

-- Location: LCCOMB_X24_Y9_N6
\inst25|inst31|und_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|und_out[0]~15_combout\ = (\inst25|inst31|_~0_combout\ & (\inst25|inst25|q\(0))) # (!\inst25|inst31|_~0_combout\ & ((\inst25|inst23|unidade_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst25|q\(0),
	datab => \inst25|inst23|unidade_q\(0),
	datad => \inst25|inst31|_~0_combout\,
	combout => \inst25|inst31|und_out[0]~15_combout\);

-- Location: LCCOMB_X24_Y9_N24
\inst25|inst|segmento_out[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[0]~29_combout\ = (\inst25|inst31|und_out[1]~13_combout\ & (\inst17|seg_out[4]~42_combout\ & (\inst25|inst31|und_out[2]~14_combout\ $ (\inst25|inst31|und_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|und_out[2]~14_combout\,
	datab => \inst25|inst31|und_out[1]~13_combout\,
	datac => \inst17|seg_out[4]~42_combout\,
	datad => \inst25|inst31|und_out[0]~15_combout\,
	combout => \inst25|inst|segmento_out[0]~29_combout\);

-- Location: LCCOMB_X23_Y9_N8
\inst17|seg_out[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[6]~44_combout\ = (\inst15|_~0_combout\ & ((\inst25|inst|segmento_out[0]~33_combout\) # ((\inst25|inst|segmento_out[0]~29_combout\) # (!\inst25|inst|segmento_out[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|segmento_out[0]~33_combout\,
	datab => \inst15|_~0_combout\,
	datac => \inst25|inst|segmento_out[0]~34_combout\,
	datad => \inst25|inst|segmento_out[0]~29_combout\,
	combout => \inst17|seg_out[6]~44_combout\);

-- Location: LCCOMB_X22_Y13_N22
\inst13|inst31|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|_~0_combout\ = (\inst1|crono_q\(1) & (\inst23|q\(0) $ (\inst23|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(0),
	datac => \inst1|crono_q\(1),
	datad => \inst23|q\(1),
	combout => \inst13|inst31|_~0_combout\);

-- Location: LCCOMB_X21_Y14_N18
\inst13|inst31|dzn_out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|dzn_out[1]~12_combout\ = (\inst13|inst31|_~0_combout\ & ((!\inst13|inst26|q\(1)))) # (!\inst13|inst31|_~0_combout\ & (!\inst13|inst23|dezena_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|dezena_q\(1),
	datac => \inst13|inst31|_~0_combout\,
	datad => \inst13|inst26|q\(1),
	combout => \inst13|inst31|dzn_out[1]~12_combout\);

-- Location: LCCOMB_X21_Y14_N4
\inst13|inst31|dzn_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|dzn_out[2]~13_combout\ = (\inst13|inst31|_~0_combout\ & (\inst13|inst26|q\(2))) # (!\inst13|inst31|_~0_combout\ & ((\inst13|inst23|dezena_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst26|q\(2),
	datac => \inst13|inst31|_~0_combout\,
	datad => \inst13|inst23|dezena_q\(2),
	combout => \inst13|inst31|dzn_out[2]~13_combout\);

-- Location: LCCOMB_X21_Y14_N20
\inst17|seg_out[4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~45_combout\ = (!\inst13|inst46|inst5|alterna\(2) & ((\inst13|inst31|_~0_combout\ & ((!\inst13|inst26|q\(3)))) # (!\inst13|inst31|_~0_combout\ & (!\inst13|inst23|dezena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|_~0_combout\,
	datab => \inst13|inst46|inst5|alterna\(2),
	datac => \inst13|inst23|dezena_q\(3),
	datad => \inst13|inst26|q\(3),
	combout => \inst17|seg_out[4]~45_combout\);

-- Location: LCCOMB_X21_Y14_N26
\inst13|inst31|dzn_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|dzn_out[0]~14_combout\ = (\inst13|inst31|_~0_combout\ & (\inst13|inst26|q\(0))) # (!\inst13|inst31|_~0_combout\ & ((\inst13|inst23|dezena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst26|q\(0),
	datac => \inst13|inst31|_~0_combout\,
	datad => \inst13|inst23|dezena_q\(0),
	combout => \inst13|inst31|dzn_out[0]~14_combout\);

-- Location: LCCOMB_X17_Y14_N0
\inst13|inst|segmento_out[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[0]~32_combout\ = (\inst13|inst31|dzn_out[1]~12_combout\ & (\inst17|seg_out[4]~45_combout\ & (\inst13|inst31|dzn_out[2]~13_combout\ $ (\inst13|inst31|dzn_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|dzn_out[1]~12_combout\,
	datab => \inst13|inst31|dzn_out[2]~13_combout\,
	datac => \inst17|seg_out[4]~45_combout\,
	datad => \inst13|inst31|dzn_out[0]~14_combout\,
	combout => \inst13|inst|segmento_out[0]~32_combout\);

-- Location: LCCOMB_X23_Y13_N0
\inst17|seg_out[4]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~47_combout\ = (!\inst13|inst46|inst5|alterna\(0) & ((\inst13|inst31|_~0_combout\ & ((!\inst13|inst28|q\(3)))) # (!\inst13|inst31|_~0_combout\ & (!\inst13|inst23|milhar_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|milhar_q\(3),
	datab => \inst13|inst28|q\(3),
	datac => \inst13|inst46|inst5|alterna\(0),
	datad => \inst13|inst31|_~0_combout\,
	combout => \inst17|seg_out[4]~47_combout\);

-- Location: LCCOMB_X23_Y13_N14
\inst13|inst31|mil_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|mil_out[0]~14_combout\ = (\inst13|inst31|_~0_combout\ & ((\inst13|inst28|q\(0)))) # (!\inst13|inst31|_~0_combout\ & (\inst13|inst23|milhar_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst31|_~0_combout\,
	datac => \inst13|inst23|milhar_q\(0),
	datad => \inst13|inst28|q\(0),
	combout => \inst13|inst31|mil_out[0]~14_combout\);

-- Location: LCCOMB_X22_Y13_N24
\inst13|inst31|mil_out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|mil_out[1]~12_combout\ = (\inst13|inst31|_~0_combout\ & (!\inst13|inst28|q\(1))) # (!\inst13|inst31|_~0_combout\ & ((!\inst13|inst23|milhar_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|_~0_combout\,
	datab => \inst13|inst28|q\(1),
	datac => \inst13|inst23|milhar_q\(1),
	combout => \inst13|inst31|mil_out[1]~12_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst13|inst31|mil_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|mil_out[2]~13_combout\ = (\inst13|inst31|_~0_combout\ & ((\inst13|inst28|q\(2)))) # (!\inst13|inst31|_~0_combout\ & (\inst13|inst23|milhar_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|_~0_combout\,
	datac => \inst13|inst23|milhar_q\(2),
	datad => \inst13|inst28|q\(2),
	combout => \inst13|inst31|mil_out[2]~13_combout\);

-- Location: LCCOMB_X16_Y13_N28
\inst13|inst|segmento_out[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[0]~34_combout\ = (\inst17|seg_out[4]~47_combout\ & (\inst13|inst31|mil_out[1]~12_combout\ & (\inst13|inst31|mil_out[0]~14_combout\ $ (\inst13|inst31|mil_out[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~47_combout\,
	datab => \inst13|inst31|mil_out[0]~14_combout\,
	datac => \inst13|inst31|mil_out[1]~12_combout\,
	datad => \inst13|inst31|mil_out[2]~13_combout\,
	combout => \inst13|inst|segmento_out[0]~34_combout\);

-- Location: LCCOMB_X23_Y15_N10
\inst13|inst31|cnt_out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|cnt_out[1]~12_combout\ = (\inst13|inst31|_~0_combout\ & (!\inst13|inst27|q\(1))) # (!\inst13|inst31|_~0_combout\ & ((!\inst13|inst23|centena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst27|q\(1),
	datab => \inst13|inst23|centena_q\(1),
	datad => \inst13|inst31|_~0_combout\,
	combout => \inst13|inst31|cnt_out[1]~12_combout\);

-- Location: LCCOMB_X23_Y15_N8
\inst17|seg_out[4]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~46_combout\ = (!\inst13|inst46|inst5|alterna\(1) & ((\inst13|inst31|_~0_combout\ & (!\inst13|inst27|q\(3))) # (!\inst13|inst31|_~0_combout\ & ((!\inst13|inst23|centena_q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|_~0_combout\,
	datab => \inst13|inst27|q\(3),
	datac => \inst13|inst46|inst5|alterna\(1),
	datad => \inst13|inst23|centena_q\(3),
	combout => \inst17|seg_out[4]~46_combout\);

-- Location: LCCOMB_X23_Y15_N14
\inst13|inst31|cnt_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|cnt_out[0]~14_combout\ = (\inst13|inst31|_~0_combout\ & ((\inst13|inst27|q\(0)))) # (!\inst13|inst31|_~0_combout\ & (\inst13|inst23|centena_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst31|_~0_combout\,
	datac => \inst13|inst23|centena_q\(0),
	datad => \inst13|inst27|q\(0),
	combout => \inst13|inst31|cnt_out[0]~14_combout\);

-- Location: LCCOMB_X23_Y15_N28
\inst13|inst31|cnt_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|cnt_out[2]~13_combout\ = (\inst13|inst31|_~0_combout\ & ((\inst13|inst27|q\(2)))) # (!\inst13|inst31|_~0_combout\ & (\inst13|inst23|centena_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|centena_q\(2),
	datab => \inst13|inst31|_~0_combout\,
	datad => \inst13|inst27|q\(2),
	combout => \inst13|inst31|cnt_out[2]~13_combout\);

-- Location: LCCOMB_X23_Y15_N16
\inst13|inst|segmento_out[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[0]~33_combout\ = (\inst13|inst31|cnt_out[1]~12_combout\ & (\inst17|seg_out[4]~46_combout\ & (\inst13|inst31|cnt_out[0]~14_combout\ $ (\inst13|inst31|cnt_out[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|cnt_out[1]~12_combout\,
	datab => \inst17|seg_out[4]~46_combout\,
	datac => \inst13|inst31|cnt_out[0]~14_combout\,
	datad => \inst13|inst31|cnt_out[2]~13_combout\,
	combout => \inst13|inst|segmento_out[0]~33_combout\);

-- Location: LCCOMB_X19_Y15_N6
\inst13|inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|_~0_combout\ = (!\inst13|inst46|inst5|alterna\(3) & (\inst13|inst46|inst5|alterna\(1) & (\inst13|inst46|inst5|alterna\(0) & \inst13|inst46|inst5|alterna\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst5|alterna\(3),
	datab => \inst13|inst46|inst5|alterna\(1),
	datac => \inst13|inst46|inst5|alterna\(0),
	datad => \inst13|inst46|inst5|alterna\(2),
	combout => \inst13|inst|_~0_combout\);

-- Location: LCCOMB_X18_Y12_N28
\inst13|inst31|und_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|und_out[3]~12_combout\ = (\inst13|inst31|_~0_combout\ & (!\inst13|inst25|q\(3))) # (!\inst13|inst31|_~0_combout\ & ((!\inst13|inst23|unidade_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst25|q\(3),
	datac => \inst13|inst23|unidade_q\(3),
	datad => \inst13|inst31|_~0_combout\,
	combout => \inst13|inst31|und_out[3]~12_combout\);

-- Location: LCCOMB_X18_Y12_N0
\inst13|inst31|und_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|und_out[2]~14_combout\ = (\inst13|inst31|_~0_combout\ & ((\inst13|inst25|q\(2)))) # (!\inst13|inst31|_~0_combout\ & (\inst13|inst23|unidade_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst23|unidade_q\(2),
	datab => \inst13|inst25|q\(2),
	datad => \inst13|inst31|_~0_combout\,
	combout => \inst13|inst31|und_out[2]~14_combout\);

-- Location: LCCOMB_X18_Y12_N14
\inst13|inst31|und_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|und_out[0]~15_combout\ = (\inst13|inst31|_~0_combout\ & (\inst13|inst25|q\(0))) # (!\inst13|inst31|_~0_combout\ & ((\inst13|inst23|unidade_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|_~0_combout\,
	datab => \inst13|inst25|q\(0),
	datad => \inst13|inst23|unidade_q\(0),
	combout => \inst13|inst31|und_out[0]~15_combout\);

-- Location: LCCOMB_X18_Y12_N18
\inst13|inst31|und_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|und_out[1]~13_combout\ = (\inst13|inst31|_~0_combout\ & (!\inst13|inst25|q\(1))) # (!\inst13|inst31|_~0_combout\ & ((!\inst13|inst23|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst25|q\(1),
	datac => \inst13|inst23|unidade_q\(1),
	datad => \inst13|inst31|_~0_combout\,
	combout => \inst13|inst31|und_out[1]~13_combout\);

-- Location: LCCOMB_X18_Y12_N8
\inst13|inst|segmento_out[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[0]~29_combout\ = (\inst13|inst31|und_out[1]~13_combout\ & (\inst13|inst31|und_out[2]~14_combout\ $ (\inst13|inst31|und_out[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst31|und_out[2]~14_combout\,
	datac => \inst13|inst31|und_out[0]~15_combout\,
	datad => \inst13|inst31|und_out[1]~13_combout\,
	combout => \inst13|inst|segmento_out[0]~29_combout\);

-- Location: LCCOMB_X19_Y15_N20
\inst13|inst|segmento_out[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[0]~30_combout\ = (((!\inst13|inst46|inst5|alterna\(2)) # (!\inst13|inst46|inst5|alterna\(0))) # (!\inst13|inst46|inst5|alterna\(1))) # (!\inst13|inst46|inst5|alterna\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst46|inst5|alterna\(3),
	datab => \inst13|inst46|inst5|alterna\(1),
	datac => \inst13|inst46|inst5|alterna\(0),
	datad => \inst13|inst46|inst5|alterna\(2),
	combout => \inst13|inst|segmento_out[0]~30_combout\);

-- Location: LCCOMB_X18_Y12_N10
\inst13|inst|segmento_out[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[0]~31_combout\ = ((\inst13|inst|_~0_combout\ & (\inst13|inst31|und_out[3]~12_combout\ & \inst13|inst|segmento_out[0]~29_combout\))) # (!\inst13|inst|segmento_out[0]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|_~0_combout\,
	datab => \inst13|inst31|und_out[3]~12_combout\,
	datac => \inst13|inst|segmento_out[0]~29_combout\,
	datad => \inst13|inst|segmento_out[0]~30_combout\,
	combout => \inst13|inst|segmento_out[0]~31_combout\);

-- Location: LCCOMB_X16_Y13_N6
\inst13|inst|segmento_out[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[0]~35_combout\ = (\inst13|inst|segmento_out[0]~32_combout\) # ((\inst13|inst|segmento_out[0]~34_combout\) # ((\inst13|inst|segmento_out[0]~33_combout\) # (\inst13|inst|segmento_out[0]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|segmento_out[0]~32_combout\,
	datab => \inst13|inst|segmento_out[0]~34_combout\,
	datac => \inst13|inst|segmento_out[0]~33_combout\,
	datad => \inst13|inst|segmento_out[0]~31_combout\,
	combout => \inst13|inst|segmento_out[0]~35_combout\);

-- Location: LCCOMB_X16_Y13_N12
\inst17|seg_out[6]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[6]~48_combout\ = (\inst17|seg_out[6]~44_combout\) # (((\inst1|crono_q\(1) & \inst13|inst|segmento_out[0]~35_combout\)) # (!\inst17|dig_out[3]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[6]~44_combout\,
	datab => \inst17|dig_out[3]~22_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst13|inst|segmento_out[0]~35_combout\,
	combout => \inst17|seg_out[6]~48_combout\);

-- Location: LCCOMB_X26_Y10_N18
\inst30|inst|segmento_out[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[0]~34_combout\ = (((!\inst30|inst46|inst5|alterna\(3)) # (!\inst30|inst46|inst5|alterna\(0))) # (!\inst30|inst46|inst5|alterna\(1))) # (!\inst30|inst46|inst5|alterna\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst46|inst5|alterna\(2),
	datab => \inst30|inst46|inst5|alterna\(1),
	datac => \inst30|inst46|inst5|alterna\(0),
	datad => \inst30|inst46|inst5|alterna\(3),
	combout => \inst30|inst|segmento_out[0]~34_combout\);

-- Location: LCCOMB_X25_Y10_N26
\inst30|inst31|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|_~0_combout\ = (\inst15|_~1_combout\ & (\inst23|q\(0) $ (\inst23|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|q\(0),
	datab => \inst23|q\(1),
	datad => \inst15|_~1_combout\,
	combout => \inst30|inst31|_~0_combout\);

-- Location: LCCOMB_X28_Y11_N6
\inst30|inst31|mil_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|mil_out[1]~13_combout\ = (\inst30|inst31|_~0_combout\ & ((!\inst30|inst28|q\(1)))) # (!\inst30|inst31|_~0_combout\ & (!\inst30|inst23|milhar_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|milhar_q\(1),
	datac => \inst30|inst28|q\(1),
	datad => \inst30|inst31|_~0_combout\,
	combout => \inst30|inst31|mil_out[1]~13_combout\);

-- Location: LCCOMB_X28_Y11_N28
\inst30|inst31|mil_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|mil_out[2]~14_combout\ = (\inst30|inst31|_~0_combout\ & ((\inst30|inst28|q\(2)))) # (!\inst30|inst31|_~0_combout\ & (\inst30|inst23|milhar_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst23|milhar_q\(2),
	datac => \inst30|inst31|_~0_combout\,
	datad => \inst30|inst28|q\(2),
	combout => \inst30|inst31|mil_out[2]~14_combout\);

-- Location: LCCOMB_X26_Y10_N22
\inst17|seg_out[4]~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~165_combout\ = (!\inst30|inst46|inst5|alterna\(0) & ((\inst30|inst31|_~0_combout\ & (!\inst30|inst28|q\(3))) # (!\inst30|inst31|_~0_combout\ & ((!\inst30|inst23|milhar_q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst28|q\(3),
	datab => \inst30|inst46|inst5|alterna\(0),
	datac => \inst30|inst23|milhar_q\(3),
	datad => \inst30|inst31|_~0_combout\,
	combout => \inst17|seg_out[4]~165_combout\);

-- Location: LCCOMB_X28_Y11_N2
\inst30|inst31|mil_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|mil_out[0]~15_combout\ = (\inst30|inst31|_~0_combout\ & (\inst30|inst28|q\(0))) # (!\inst30|inst31|_~0_combout\ & ((\inst30|inst23|milhar_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst28|q\(0),
	datac => \inst30|inst31|_~0_combout\,
	datad => \inst30|inst23|milhar_q\(0),
	combout => \inst30|inst31|mil_out[0]~15_combout\);

-- Location: LCCOMB_X28_Y11_N8
\inst30|inst|segmento_out[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[0]~31_combout\ = (\inst30|inst31|mil_out[1]~13_combout\ & (\inst17|seg_out[4]~165_combout\ & (\inst30|inst31|mil_out[2]~14_combout\ $ (\inst30|inst31|mil_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|mil_out[1]~13_combout\,
	datab => \inst30|inst31|mil_out[2]~14_combout\,
	datac => \inst17|seg_out[4]~165_combout\,
	datad => \inst30|inst31|mil_out[0]~15_combout\,
	combout => \inst30|inst|segmento_out[0]~31_combout\);

-- Location: LCCOMB_X29_Y11_N24
\inst30|inst31|dzn_out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|dzn_out[1]~12_combout\ = (\inst30|inst31|_~0_combout\ & (!\inst30|inst26|q\(1))) # (!\inst30|inst31|_~0_combout\ & ((!\inst30|inst23|dezena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|q\(1),
	datac => \inst30|inst31|_~0_combout\,
	datad => \inst30|inst23|dezena_q\(1),
	combout => \inst30|inst31|dzn_out[1]~12_combout\);

-- Location: LCCOMB_X29_Y11_N14
\inst30|inst31|dzn_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|dzn_out[0]~14_combout\ = (\inst30|inst31|_~0_combout\ & (\inst30|inst26|q\(0))) # (!\inst30|inst31|_~0_combout\ & ((\inst30|inst23|dezena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|q\(0),
	datac => \inst30|inst31|_~0_combout\,
	datad => \inst30|inst23|dezena_q\(0),
	combout => \inst30|inst31|dzn_out[0]~14_combout\);

-- Location: LCCOMB_X26_Y11_N28
\inst30|inst31|dzn_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|dzn_out[2]~13_combout\ = (\inst30|inst31|_~0_combout\ & (\inst30|inst26|q\(2))) # (!\inst30|inst31|_~0_combout\ & ((\inst30|inst23|dezena_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst26|q\(2),
	datab => \inst30|inst31|_~0_combout\,
	datac => \inst30|inst23|dezena_q\(2),
	combout => \inst30|inst31|dzn_out[2]~13_combout\);

-- Location: LCCOMB_X24_Y8_N20
\inst30|inst|segmento_out[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[0]~32_combout\ = (\inst30|inst31|dzn_out[1]~12_combout\ & (\inst30|inst31|dzn_out[0]~14_combout\ $ (\inst30|inst31|dzn_out[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst31|dzn_out[1]~12_combout\,
	datac => \inst30|inst31|dzn_out[0]~14_combout\,
	datad => \inst30|inst31|dzn_out[2]~13_combout\,
	combout => \inst30|inst|segmento_out[0]~32_combout\);

-- Location: LCCOMB_X29_Y11_N2
\inst17|seg_out[4]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~51_combout\ = (!\inst30|inst46|inst5|alterna\(2) & ((\inst30|inst31|_~0_combout\ & ((!\inst30|inst26|q\(3)))) # (!\inst30|inst31|_~0_combout\ & (!\inst30|inst23|dezena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|dezena_q\(3),
	datab => \inst30|inst46|inst5|alterna\(2),
	datac => \inst30|inst31|_~0_combout\,
	datad => \inst30|inst26|q\(3),
	combout => \inst17|seg_out[4]~51_combout\);

-- Location: LCCOMB_X26_Y12_N20
\inst30|inst31|cnt_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|cnt_out[2]~14_combout\ = (\inst30|inst31|_~0_combout\ & ((\inst30|inst27|q\(2)))) # (!\inst30|inst31|_~0_combout\ & (\inst30|inst23|centena_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|centena_q\(2),
	datac => \inst30|inst31|_~0_combout\,
	datad => \inst30|inst27|q\(2),
	combout => \inst30|inst31|cnt_out[2]~14_combout\);

-- Location: LCCOMB_X26_Y12_N14
\inst30|inst31|cnt_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|cnt_out[0]~15_combout\ = (\inst30|inst31|_~0_combout\ & (\inst30|inst27|q\(0))) # (!\inst30|inst31|_~0_combout\ & ((\inst30|inst23|centena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|q\(0),
	datac => \inst30|inst31|_~0_combout\,
	datad => \inst30|inst23|centena_q\(0),
	combout => \inst30|inst31|cnt_out[0]~15_combout\);

-- Location: LCCOMB_X26_Y12_N16
\inst30|inst31|cnt_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|cnt_out[3]~12_combout\ = (\inst30|inst31|_~0_combout\ & ((!\inst30|inst27|q\(3)))) # (!\inst30|inst31|_~0_combout\ & (!\inst30|inst23|centena_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|centena_q\(3),
	datac => \inst30|inst31|_~0_combout\,
	datad => \inst30|inst27|q\(3),
	combout => \inst30|inst31|cnt_out[3]~12_combout\);

-- Location: LCCOMB_X26_Y10_N24
\inst17|seg_out[4]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~50_combout\ = (!\inst30|inst46|inst5|alterna[1]~6_combout\ & (\inst30|inst31|cnt_out[3]~12_combout\ & ((\inst13|inst46|inst6|aux_tff~q\) # (!\inst30|inst40|final_cont~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst40|final_cont~15_combout\,
	datab => \inst30|inst46|inst5|alterna[1]~6_combout\,
	datac => \inst13|inst46|inst6|aux_tff~q\,
	datad => \inst30|inst31|cnt_out[3]~12_combout\,
	combout => \inst17|seg_out[4]~50_combout\);

-- Location: LCCOMB_X26_Y12_N6
\inst30|inst31|cnt_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|cnt_out[1]~13_combout\ = (\inst30|inst31|_~0_combout\ & (!\inst30|inst27|q\(1))) # (!\inst30|inst31|_~0_combout\ & ((!\inst30|inst23|centena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst27|q\(1),
	datab => \inst30|inst23|centena_q\(1),
	datac => \inst30|inst31|_~0_combout\,
	combout => \inst30|inst31|cnt_out[1]~13_combout\);

-- Location: LCCOMB_X22_Y9_N24
\inst30|inst|segmento_out[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[0]~30_combout\ = (\inst17|seg_out[4]~50_combout\ & (\inst30|inst31|cnt_out[1]~13_combout\ & (\inst30|inst31|cnt_out[2]~14_combout\ $ (\inst30|inst31|cnt_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|cnt_out[2]~14_combout\,
	datab => \inst30|inst31|cnt_out[0]~15_combout\,
	datac => \inst17|seg_out[4]~50_combout\,
	datad => \inst30|inst31|cnt_out[1]~13_combout\,
	combout => \inst30|inst|segmento_out[0]~30_combout\);

-- Location: LCCOMB_X24_Y8_N18
\inst30|inst|segmento_out[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[0]~33_combout\ = (\inst30|inst|segmento_out[0]~31_combout\) # ((\inst30|inst|segmento_out[0]~30_combout\) # ((\inst30|inst|segmento_out[0]~32_combout\ & \inst17|seg_out[4]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|segmento_out[0]~31_combout\,
	datab => \inst30|inst|segmento_out[0]~32_combout\,
	datac => \inst17|seg_out[4]~51_combout\,
	datad => \inst30|inst|segmento_out[0]~30_combout\,
	combout => \inst30|inst|segmento_out[0]~33_combout\);

-- Location: LCCOMB_X25_Y8_N12
\inst30|inst31|und_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|und_out[2]~13_combout\ = (\inst30|inst31|_~0_combout\ & ((\inst30|inst25|q\(2)))) # (!\inst30|inst31|_~0_combout\ & (\inst30|inst23|unidade_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|unidade_q\(2),
	datab => \inst30|inst25|q\(2),
	datad => \inst30|inst31|_~0_combout\,
	combout => \inst30|inst31|und_out[2]~13_combout\);

-- Location: LCCOMB_X26_Y10_N30
\inst30|inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|_~0_combout\ = (\inst30|inst46|inst5|alterna\(2) & (\inst30|inst46|inst5|alterna\(1) & (\inst30|inst46|inst5|alterna\(0) & !\inst30|inst46|inst5|alterna\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst46|inst5|alterna\(2),
	datab => \inst30|inst46|inst5|alterna\(1),
	datac => \inst30|inst46|inst5|alterna\(0),
	datad => \inst30|inst46|inst5|alterna\(3),
	combout => \inst30|inst|_~0_combout\);

-- Location: LCCOMB_X25_Y8_N24
\inst17|seg_out[4]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~49_combout\ = (\inst30|inst|_~0_combout\ & ((\inst30|inst31|_~0_combout\ & ((!\inst30|inst25|q\(3)))) # (!\inst30|inst31|_~0_combout\ & (!\inst30|inst23|unidade_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|unidade_q\(3),
	datab => \inst30|inst31|_~0_combout\,
	datac => \inst30|inst25|q\(3),
	datad => \inst30|inst|_~0_combout\,
	combout => \inst17|seg_out[4]~49_combout\);

-- Location: LCCOMB_X25_Y8_N14
\inst30|inst31|und_out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|und_out[1]~12_combout\ = (\inst30|inst31|_~0_combout\ & (!\inst30|inst25|q\(1))) # (!\inst30|inst31|_~0_combout\ & ((!\inst30|inst23|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst25|q\(1),
	datac => \inst30|inst23|unidade_q\(1),
	datad => \inst30|inst31|_~0_combout\,
	combout => \inst30|inst31|und_out[1]~12_combout\);

-- Location: LCCOMB_X26_Y11_N2
\inst30|inst31|und_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|und_out[0]~14_combout\ = (\inst30|inst31|_~0_combout\ & ((\inst30|inst25|q\(0)))) # (!\inst30|inst31|_~0_combout\ & (\inst30|inst23|unidade_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst23|unidade_q\(0),
	datac => \inst30|inst25|q\(0),
	datad => \inst30|inst31|_~0_combout\,
	combout => \inst30|inst31|und_out[0]~14_combout\);

-- Location: LCCOMB_X25_Y8_N6
\inst30|inst|segmento_out[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[0]~29_combout\ = (\inst17|seg_out[4]~49_combout\ & (\inst30|inst31|und_out[1]~12_combout\ & (\inst30|inst31|und_out[2]~13_combout\ $ (\inst30|inst31|und_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|und_out[2]~13_combout\,
	datab => \inst17|seg_out[4]~49_combout\,
	datac => \inst30|inst31|und_out[1]~12_combout\,
	datad => \inst30|inst31|und_out[0]~14_combout\,
	combout => \inst30|inst|segmento_out[0]~29_combout\);

-- Location: LCCOMB_X24_Y8_N0
\inst17|seg_out[6]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[6]~52_combout\ = (\inst15|_~1_combout\ & (((\inst30|inst|segmento_out[0]~33_combout\) # (\inst30|inst|segmento_out[0]~29_combout\)) # (!\inst30|inst|segmento_out[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|segmento_out[0]~34_combout\,
	datab => \inst30|inst|segmento_out[0]~33_combout\,
	datac => \inst30|inst|segmento_out[0]~29_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst17|seg_out[6]~52_combout\);

-- Location: LCCOMB_X19_Y14_N18
\inst32|inst31|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|_~1_combout\ = (\inst15|_~2_combout\ & (\inst23|q\(1) $ (\inst23|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datac => \inst23|q\(1),
	datad => \inst23|q\(0),
	combout => \inst32|inst31|_~1_combout\);

-- Location: LCCOMB_X16_Y10_N6
\inst32|inst31|dzn_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|dzn_out[2]~14_combout\ = (\inst32|inst31|_~1_combout\ & ((\inst32|inst26|q\(2)))) # (!\inst32|inst31|_~1_combout\ & (\inst32|inst23|dezena_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~1_combout\,
	datac => \inst32|inst23|dezena_q\(2),
	datad => \inst32|inst26|q\(2),
	combout => \inst32|inst31|dzn_out[2]~14_combout\);

-- Location: LCCOMB_X16_Y10_N20
\inst32|inst31|dzn_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|dzn_out[0]~15_combout\ = (\inst32|inst31|_~1_combout\ & (\inst32|inst26|q\(0))) # (!\inst32|inst31|_~1_combout\ & ((\inst32|inst23|dezena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~1_combout\,
	datab => \inst32|inst26|q\(0),
	datad => \inst32|inst23|dezena_q\(0),
	combout => \inst32|inst31|dzn_out[0]~15_combout\);

-- Location: LCCOMB_X16_Y10_N8
\inst17|seg_out[4]~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~167_combout\ = (!\inst32|inst46|inst5|alterna\(2) & ((\inst32|inst31|_~1_combout\ & ((!\inst32|inst26|q\(3)))) # (!\inst32|inst31|_~1_combout\ & (!\inst32|inst23|dezena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|dezena_q\(3),
	datab => \inst32|inst26|q\(3),
	datac => \inst32|inst31|_~1_combout\,
	datad => \inst32|inst46|inst5|alterna\(2),
	combout => \inst17|seg_out[4]~167_combout\);

-- Location: LCCOMB_X16_Y11_N14
\inst32|inst31|dzn_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|dzn_out[1]~13_combout\ = (\inst32|inst31|_~1_combout\ & (!\inst32|inst26|q\(1))) # (!\inst32|inst31|_~1_combout\ & ((!\inst32|inst23|dezena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst26|q\(1),
	datab => \inst32|inst23|dezena_q\(1),
	datad => \inst32|inst31|_~1_combout\,
	combout => \inst32|inst31|dzn_out[1]~13_combout\);

-- Location: LCCOMB_X16_Y10_N14
\inst32|inst|segmento_out[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[0]~30_combout\ = (\inst17|seg_out[4]~167_combout\ & (\inst32|inst31|dzn_out[1]~13_combout\ & (\inst32|inst31|dzn_out[2]~14_combout\ $ (\inst32|inst31|dzn_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|dzn_out[2]~14_combout\,
	datab => \inst32|inst31|dzn_out[0]~15_combout\,
	datac => \inst17|seg_out[4]~167_combout\,
	datad => \inst32|inst31|dzn_out[1]~13_combout\,
	combout => \inst32|inst|segmento_out[0]~30_combout\);

-- Location: LCCOMB_X19_Y12_N16
\inst32|inst31|cnt_out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|cnt_out[1]~12_combout\ = (\inst32|inst31|_~1_combout\ & (!\inst32|inst27|q\(1))) # (!\inst32|inst31|_~1_combout\ & ((!\inst32|inst23|centena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|q\(1),
	datab => \inst32|inst23|centena_q\(1),
	datac => \inst32|inst31|_~1_combout\,
	combout => \inst32|inst31|cnt_out[1]~12_combout\);

-- Location: LCCOMB_X19_Y12_N2
\inst32|inst31|cnt_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|cnt_out[2]~13_combout\ = (\inst32|inst31|_~1_combout\ & (\inst32|inst27|q\(2))) # (!\inst32|inst31|_~1_combout\ & ((\inst32|inst23|centena_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst27|q\(2),
	datac => \inst32|inst31|_~1_combout\,
	datad => \inst32|inst23|centena_q\(2),
	combout => \inst32|inst31|cnt_out[2]~13_combout\);

-- Location: LCCOMB_X19_Y12_N28
\inst32|inst31|cnt_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|cnt_out[0]~14_combout\ = (\inst32|inst31|_~1_combout\ & (\inst32|inst27|q\(0))) # (!\inst32|inst31|_~1_combout\ & ((\inst32|inst23|centena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst27|q\(0),
	datab => \inst32|inst31|_~1_combout\,
	datac => \inst32|inst23|centena_q\(0),
	combout => \inst32|inst31|cnt_out[0]~14_combout\);

-- Location: LCCOMB_X17_Y10_N16
\inst32|inst|segmento_out[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[0]~32_combout\ = (\inst32|inst31|cnt_out[1]~12_combout\ & (\inst32|inst31|cnt_out[2]~13_combout\ $ (\inst32|inst31|cnt_out[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|cnt_out[1]~12_combout\,
	datab => \inst32|inst31|cnt_out[2]~13_combout\,
	datac => \inst32|inst31|cnt_out[0]~14_combout\,
	combout => \inst32|inst|segmento_out[0]~32_combout\);

-- Location: LCCOMB_X19_Y12_N26
\inst17|seg_out[4]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~54_combout\ = (!\inst32|inst46|inst5|alterna\(1) & ((\inst32|inst31|_~1_combout\ & (!\inst32|inst27|q\(3))) # (!\inst32|inst31|_~1_combout\ & ((!\inst32|inst23|centena_q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst5|alterna\(1),
	datab => \inst32|inst27|q\(3),
	datac => \inst32|inst31|_~1_combout\,
	datad => \inst32|inst23|centena_q\(3),
	combout => \inst17|seg_out[4]~54_combout\);

-- Location: LCCOMB_X14_Y11_N10
\inst32|inst31|mil_out[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|mil_out[1]~12_combout\ = (\inst32|inst31|_~1_combout\ & ((!\inst32|inst28|q\(1)))) # (!\inst32|inst31|_~1_combout\ & (!\inst32|inst23|milhar_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst31|_~1_combout\,
	datac => \inst32|inst23|milhar_q\(1),
	datad => \inst32|inst28|q\(1),
	combout => \inst32|inst31|mil_out[1]~12_combout\);

-- Location: LCCOMB_X14_Y11_N20
\inst17|seg_out[4]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~53_combout\ = (!\inst32|inst46|inst5|alterna\(0) & ((\inst32|inst31|_~1_combout\ & (!\inst32|inst28|q\(3))) # (!\inst32|inst31|_~1_combout\ & ((!\inst32|inst23|milhar_q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst5|alterna\(0),
	datab => \inst32|inst28|q\(3),
	datac => \inst32|inst31|_~1_combout\,
	datad => \inst32|inst23|milhar_q\(3),
	combout => \inst17|seg_out[4]~53_combout\);

-- Location: LCCOMB_X14_Y11_N22
\inst32|inst31|mil_out[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|mil_out[0]~14_combout\ = (\inst32|inst31|_~1_combout\ & ((\inst32|inst28|q\(0)))) # (!\inst32|inst31|_~1_combout\ & (\inst32|inst23|milhar_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|milhar_q\(0),
	datab => \inst32|inst31|_~1_combout\,
	datac => \inst32|inst28|q\(0),
	combout => \inst32|inst31|mil_out[0]~14_combout\);

-- Location: LCCOMB_X14_Y11_N16
\inst32|inst31|mil_out[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|mil_out[2]~13_combout\ = (\inst32|inst31|_~1_combout\ & (\inst32|inst28|q\(2))) # (!\inst32|inst31|_~1_combout\ & ((\inst32|inst23|milhar_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst28|q\(2),
	datac => \inst32|inst31|_~1_combout\,
	datad => \inst32|inst23|milhar_q\(2),
	combout => \inst32|inst31|mil_out[2]~13_combout\);

-- Location: LCCOMB_X14_Y11_N8
\inst32|inst|segmento_out[0]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[0]~31_combout\ = (\inst32|inst31|mil_out[1]~12_combout\ & (\inst17|seg_out[4]~53_combout\ & (\inst32|inst31|mil_out[0]~14_combout\ $ (\inst32|inst31|mil_out[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|mil_out[1]~12_combout\,
	datab => \inst17|seg_out[4]~53_combout\,
	datac => \inst32|inst31|mil_out[0]~14_combout\,
	datad => \inst32|inst31|mil_out[2]~13_combout\,
	combout => \inst32|inst|segmento_out[0]~31_combout\);

-- Location: LCCOMB_X17_Y10_N22
\inst32|inst|segmento_out[0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[0]~33_combout\ = (\inst32|inst|segmento_out[0]~30_combout\) # ((\inst32|inst|segmento_out[0]~31_combout\) # ((\inst32|inst|segmento_out[0]~32_combout\ & \inst17|seg_out[4]~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst|segmento_out[0]~30_combout\,
	datab => \inst32|inst|segmento_out[0]~32_combout\,
	datac => \inst17|seg_out[4]~54_combout\,
	datad => \inst32|inst|segmento_out[0]~31_combout\,
	combout => \inst32|inst|segmento_out[0]~33_combout\);

-- Location: LCCOMB_X18_Y14_N4
\inst32|inst|segmento_out[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[0]~34_combout\ = (((!\inst32|inst46|inst5|alterna\(0)) # (!\inst32|inst46|inst5|alterna\(2))) # (!\inst32|inst46|inst5|alterna\(1))) # (!\inst32|inst46|inst5|alterna\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst5|alterna\(3),
	datab => \inst32|inst46|inst5|alterna\(1),
	datac => \inst32|inst46|inst5|alterna\(2),
	datad => \inst32|inst46|inst5|alterna\(0),
	combout => \inst32|inst|segmento_out[0]~34_combout\);

-- Location: LCCOMB_X19_Y9_N18
\inst32|inst31|und_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|und_out[2]~14_combout\ = (\inst32|inst31|_~1_combout\ & ((\inst32|inst25|q\(2)))) # (!\inst32|inst31|_~1_combout\ & (\inst32|inst23|unidade_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~1_combout\,
	datac => \inst32|inst23|unidade_q\(2),
	datad => \inst32|inst25|q\(2),
	combout => \inst32|inst31|und_out[2]~14_combout\);

-- Location: LCCOMB_X18_Y14_N26
\inst32|inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|_~0_combout\ = (!\inst32|inst46|inst5|alterna\(3) & (\inst32|inst46|inst5|alterna\(1) & (\inst32|inst46|inst5|alterna\(2) & \inst32|inst46|inst5|alterna\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst5|alterna\(3),
	datab => \inst32|inst46|inst5|alterna\(1),
	datac => \inst32|inst46|inst5|alterna\(2),
	datad => \inst32|inst46|inst5|alterna\(0),
	combout => \inst32|inst|_~0_combout\);

-- Location: LCCOMB_X19_Y9_N30
\inst17|seg_out[4]~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~166_combout\ = (\inst32|inst|_~0_combout\ & ((\inst32|inst31|_~1_combout\ & (!\inst32|inst25|q\(3))) # (!\inst32|inst31|_~1_combout\ & ((!\inst32|inst23|unidade_q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~1_combout\,
	datab => \inst32|inst25|q\(3),
	datac => \inst32|inst23|unidade_q\(3),
	datad => \inst32|inst|_~0_combout\,
	combout => \inst17|seg_out[4]~166_combout\);

-- Location: LCCOMB_X19_Y9_N4
\inst32|inst31|und_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|und_out[1]~13_combout\ = (\inst32|inst31|_~1_combout\ & (!\inst32|inst25|q\(1))) # (!\inst32|inst31|_~1_combout\ & ((!\inst32|inst23|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst25|q\(1),
	datac => \inst32|inst31|_~1_combout\,
	datad => \inst32|inst23|unidade_q\(1),
	combout => \inst32|inst31|und_out[1]~13_combout\);

-- Location: LCCOMB_X19_Y9_N16
\inst32|inst31|und_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|und_out[0]~15_combout\ = (\inst32|inst31|_~1_combout\ & ((\inst32|inst25|q\(0)))) # (!\inst32|inst31|_~1_combout\ & (\inst32|inst23|unidade_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|unidade_q\(0),
	datac => \inst32|inst31|_~1_combout\,
	datad => \inst32|inst25|q\(0),
	combout => \inst32|inst31|und_out[0]~15_combout\);

-- Location: LCCOMB_X18_Y10_N16
\inst32|inst|segmento_out[0]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[0]~29_combout\ = (\inst17|seg_out[4]~166_combout\ & (\inst32|inst31|und_out[1]~13_combout\ & (\inst32|inst31|und_out[2]~14_combout\ $ (\inst32|inst31|und_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|und_out[2]~14_combout\,
	datab => \inst17|seg_out[4]~166_combout\,
	datac => \inst32|inst31|und_out[1]~13_combout\,
	datad => \inst32|inst31|und_out[0]~15_combout\,
	combout => \inst32|inst|segmento_out[0]~29_combout\);

-- Location: LCCOMB_X17_Y10_N4
\inst17|seg_out[6]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[6]~55_combout\ = (\inst15|_~2_combout\ & ((\inst32|inst|segmento_out[0]~33_combout\) # ((\inst32|inst|segmento_out[0]~29_combout\) # (!\inst32|inst|segmento_out[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst|segmento_out[0]~33_combout\,
	datab => \inst15|_~2_combout\,
	datac => \inst32|inst|segmento_out[0]~34_combout\,
	datad => \inst32|inst|segmento_out[0]~29_combout\,
	combout => \inst17|seg_out[6]~55_combout\);

-- Location: LCCOMB_X16_Y13_N22
\inst17|seg_out[6]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[6]~56_combout\ = (\inst17|seg_out[6]~48_combout\) # ((\inst17|seg_out[6]~52_combout\) # (\inst17|seg_out[6]~55_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[6]~48_combout\,
	datab => \inst17|seg_out[6]~52_combout\,
	datad => \inst17|seg_out[6]~55_combout\,
	combout => \inst17|seg_out[6]~56_combout\);

-- Location: LCCOMB_X22_Y9_N26
\inst25|inst|segmento_out[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[1]~36_combout\ = (\inst25|inst31|cnt_out[2]~13_combout\ & (\inst17|seg_out[4]~43_combout\ & (\inst25|inst31|cnt_out[1]~12_combout\ $ (!\inst25|inst31|cnt_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|cnt_out[2]~13_combout\,
	datab => \inst25|inst31|cnt_out[1]~12_combout\,
	datac => \inst25|inst31|cnt_out[0]~14_combout\,
	datad => \inst17|seg_out[4]~43_combout\,
	combout => \inst25|inst|segmento_out[1]~36_combout\);

-- Location: LCCOMB_X23_Y9_N14
\inst25|inst|segmento_out[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[1]~38_combout\ = (\inst25|inst31|dzn_out[2]~14_combout\ & (\inst25|inst31|dzn_out[0]~15_combout\ $ (!\inst25|inst31|dzn_out[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst31|dzn_out[0]~15_combout\,
	datac => \inst25|inst31|dzn_out[1]~13_combout\,
	datad => \inst25|inst31|dzn_out[2]~14_combout\,
	combout => \inst25|inst|segmento_out[1]~38_combout\);

-- Location: LCCOMB_X24_Y15_N14
\inst25|inst|segmento_out[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[1]~37_combout\ = (\inst17|seg_out[4]~163_combout\ & (\inst25|inst31|mil_out[2]~14_combout\ & (\inst25|inst31|mil_out[1]~13_combout\ $ (!\inst25|inst31|mil_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~163_combout\,
	datab => \inst25|inst31|mil_out[1]~13_combout\,
	datac => \inst25|inst31|mil_out[0]~15_combout\,
	datad => \inst25|inst31|mil_out[2]~14_combout\,
	combout => \inst25|inst|segmento_out[1]~37_combout\);

-- Location: LCCOMB_X23_Y9_N24
\inst25|inst|segmento_out[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[1]~39_combout\ = (\inst25|inst|segmento_out[1]~36_combout\) # ((\inst25|inst|segmento_out[1]~37_combout\) # ((\inst25|inst|segmento_out[1]~38_combout\ & \inst17|seg_out[4]~164_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|segmento_out[1]~36_combout\,
	datab => \inst25|inst|segmento_out[1]~38_combout\,
	datac => \inst17|seg_out[4]~164_combout\,
	datad => \inst25|inst|segmento_out[1]~37_combout\,
	combout => \inst25|inst|segmento_out[1]~39_combout\);

-- Location: LCCOMB_X24_Y9_N16
\inst25|inst|segmento_out[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[1]~35_combout\ = (\inst25|inst31|und_out[2]~14_combout\ & (\inst17|seg_out[4]~42_combout\ & (\inst25|inst31|und_out[1]~13_combout\ $ (!\inst25|inst31|und_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|und_out[2]~14_combout\,
	datab => \inst25|inst31|und_out[1]~13_combout\,
	datac => \inst17|seg_out[4]~42_combout\,
	datad => \inst25|inst31|und_out[0]~15_combout\,
	combout => \inst25|inst|segmento_out[1]~35_combout\);

-- Location: LCCOMB_X24_Y9_N14
\inst17|seg_out[5]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[5]~57_combout\ = (\inst15|_~0_combout\ & (((\inst25|inst|segmento_out[1]~39_combout\) # (\inst25|inst|segmento_out[1]~35_combout\)) # (!\inst25|inst|segmento_out[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|segmento_out[0]~34_combout\,
	datab => \inst25|inst|segmento_out[1]~39_combout\,
	datac => \inst15|_~0_combout\,
	datad => \inst25|inst|segmento_out[1]~35_combout\,
	combout => \inst17|seg_out[5]~57_combout\);

-- Location: LCCOMB_X23_Y15_N6
\inst13|inst|segmento_out[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[1]~39_combout\ = (\inst17|seg_out[4]~46_combout\ & (\inst13|inst31|cnt_out[2]~13_combout\ & (\inst13|inst31|cnt_out[1]~12_combout\ $ (!\inst13|inst31|cnt_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|cnt_out[1]~12_combout\,
	datab => \inst17|seg_out[4]~46_combout\,
	datac => \inst13|inst31|cnt_out[0]~14_combout\,
	datad => \inst13|inst31|cnt_out[2]~13_combout\,
	combout => \inst13|inst|segmento_out[1]~39_combout\);

-- Location: LCCOMB_X16_Y13_N20
\inst13|inst|segmento_out[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[1]~40_combout\ = (\inst17|seg_out[4]~47_combout\ & (\inst13|inst31|mil_out[2]~13_combout\ & (\inst13|inst31|mil_out[0]~14_combout\ $ (!\inst13|inst31|mil_out[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~47_combout\,
	datab => \inst13|inst31|mil_out[0]~14_combout\,
	datac => \inst13|inst31|mil_out[1]~12_combout\,
	datad => \inst13|inst31|mil_out[2]~13_combout\,
	combout => \inst13|inst|segmento_out[1]~40_combout\);

-- Location: LCCOMB_X17_Y14_N30
\inst13|inst|segmento_out[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[1]~38_combout\ = (\inst13|inst31|dzn_out[2]~13_combout\ & (\inst17|seg_out[4]~45_combout\ & (\inst13|inst31|dzn_out[1]~12_combout\ $ (!\inst13|inst31|dzn_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|dzn_out[1]~12_combout\,
	datab => \inst13|inst31|dzn_out[2]~13_combout\,
	datac => \inst17|seg_out[4]~45_combout\,
	datad => \inst13|inst31|dzn_out[0]~14_combout\,
	combout => \inst13|inst|segmento_out[1]~38_combout\);

-- Location: LCCOMB_X18_Y12_N4
\inst13|inst|segmento_out[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[1]~36_combout\ = (\inst13|inst31|und_out[2]~14_combout\ & (\inst13|inst31|und_out[0]~15_combout\ $ (!\inst13|inst31|und_out[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst31|und_out[2]~14_combout\,
	datac => \inst13|inst31|und_out[0]~15_combout\,
	datad => \inst13|inst31|und_out[1]~13_combout\,
	combout => \inst13|inst|segmento_out[1]~36_combout\);

-- Location: LCCOMB_X18_Y12_N6
\inst13|inst|segmento_out[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[1]~37_combout\ = ((\inst13|inst|_~0_combout\ & (\inst13|inst31|und_out[3]~12_combout\ & \inst13|inst|segmento_out[1]~36_combout\))) # (!\inst13|inst|segmento_out[0]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|_~0_combout\,
	datab => \inst13|inst31|und_out[3]~12_combout\,
	datac => \inst13|inst|segmento_out[1]~36_combout\,
	datad => \inst13|inst|segmento_out[0]~30_combout\,
	combout => \inst13|inst|segmento_out[1]~37_combout\);

-- Location: LCCOMB_X17_Y13_N28
\inst13|inst|segmento_out[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[1]~41_combout\ = (\inst13|inst|segmento_out[1]~39_combout\) # ((\inst13|inst|segmento_out[1]~40_combout\) # ((\inst13|inst|segmento_out[1]~38_combout\) # (\inst13|inst|segmento_out[1]~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|segmento_out[1]~39_combout\,
	datab => \inst13|inst|segmento_out[1]~40_combout\,
	datac => \inst13|inst|segmento_out[1]~38_combout\,
	datad => \inst13|inst|segmento_out[1]~37_combout\,
	combout => \inst13|inst|segmento_out[1]~41_combout\);

-- Location: LCCOMB_X16_Y13_N30
\inst17|seg_out[5]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[5]~58_combout\ = (\inst17|seg_out[5]~57_combout\) # (((\inst1|crono_q\(1) & \inst13|inst|segmento_out[1]~41_combout\)) # (!\inst17|dig_out[3]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[5]~57_combout\,
	datab => \inst17|dig_out[3]~22_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst13|inst|segmento_out[1]~41_combout\,
	combout => \inst17|seg_out[5]~58_combout\);

-- Location: LCCOMB_X24_Y8_N6
\inst30|inst|segmento_out[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[1]~38_combout\ = (\inst30|inst31|dzn_out[2]~13_combout\ & (\inst30|inst31|dzn_out[1]~12_combout\ $ (!\inst30|inst31|dzn_out[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst31|dzn_out[1]~12_combout\,
	datac => \inst30|inst31|dzn_out[0]~14_combout\,
	datad => \inst30|inst31|dzn_out[2]~13_combout\,
	combout => \inst30|inst|segmento_out[1]~38_combout\);

-- Location: LCCOMB_X26_Y12_N8
\inst30|inst|segmento_out[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[1]~36_combout\ = (\inst30|inst31|cnt_out[2]~14_combout\ & (\inst17|seg_out[4]~50_combout\ & (\inst30|inst31|cnt_out[0]~15_combout\ $ (!\inst30|inst31|cnt_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|cnt_out[2]~14_combout\,
	datab => \inst30|inst31|cnt_out[0]~15_combout\,
	datac => \inst30|inst31|cnt_out[1]~13_combout\,
	datad => \inst17|seg_out[4]~50_combout\,
	combout => \inst30|inst|segmento_out[1]~36_combout\);

-- Location: LCCOMB_X28_Y11_N10
\inst30|inst|segmento_out[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[1]~37_combout\ = (\inst30|inst31|mil_out[2]~14_combout\ & (\inst17|seg_out[4]~165_combout\ & (\inst30|inst31|mil_out[1]~13_combout\ $ (!\inst30|inst31|mil_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|mil_out[1]~13_combout\,
	datab => \inst30|inst31|mil_out[2]~14_combout\,
	datac => \inst17|seg_out[4]~165_combout\,
	datad => \inst30|inst31|mil_out[0]~15_combout\,
	combout => \inst30|inst|segmento_out[1]~37_combout\);

-- Location: LCCOMB_X24_Y8_N28
\inst30|inst|segmento_out[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[1]~39_combout\ = (\inst30|inst|segmento_out[1]~36_combout\) # ((\inst30|inst|segmento_out[1]~37_combout\) # ((\inst30|inst|segmento_out[1]~38_combout\ & \inst17|seg_out[4]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|segmento_out[1]~38_combout\,
	datab => \inst17|seg_out[4]~51_combout\,
	datac => \inst30|inst|segmento_out[1]~36_combout\,
	datad => \inst30|inst|segmento_out[1]~37_combout\,
	combout => \inst30|inst|segmento_out[1]~39_combout\);

-- Location: LCCOMB_X25_Y8_N0
\inst30|inst|segmento_out[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[1]~35_combout\ = (\inst30|inst31|und_out[2]~13_combout\ & (\inst17|seg_out[4]~49_combout\ & (\inst30|inst31|und_out[1]~12_combout\ $ (!\inst30|inst31|und_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|und_out[2]~13_combout\,
	datab => \inst17|seg_out[4]~49_combout\,
	datac => \inst30|inst31|und_out[1]~12_combout\,
	datad => \inst30|inst31|und_out[0]~14_combout\,
	combout => \inst30|inst|segmento_out[1]~35_combout\);

-- Location: LCCOMB_X24_Y8_N30
\inst17|seg_out[5]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[5]~59_combout\ = (\inst15|_~1_combout\ & (((\inst30|inst|segmento_out[1]~39_combout\) # (\inst30|inst|segmento_out[1]~35_combout\)) # (!\inst30|inst|segmento_out[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|segmento_out[0]~34_combout\,
	datab => \inst30|inst|segmento_out[1]~39_combout\,
	datac => \inst30|inst|segmento_out[1]~35_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst17|seg_out[5]~59_combout\);

-- Location: LCCOMB_X18_Y10_N6
\inst32|inst|segmento_out[1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[1]~35_combout\ = (\inst32|inst31|und_out[2]~14_combout\ & (\inst17|seg_out[4]~166_combout\ & (\inst32|inst31|und_out[1]~13_combout\ $ (!\inst32|inst31|und_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|und_out[2]~14_combout\,
	datab => \inst17|seg_out[4]~166_combout\,
	datac => \inst32|inst31|und_out[1]~13_combout\,
	datad => \inst32|inst31|und_out[0]~15_combout\,
	combout => \inst32|inst|segmento_out[1]~35_combout\);

-- Location: LCCOMB_X14_Y11_N30
\inst32|inst|segmento_out[1]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[1]~37_combout\ = (\inst17|seg_out[4]~53_combout\ & (\inst32|inst31|mil_out[2]~13_combout\ & (\inst32|inst31|mil_out[1]~12_combout\ $ (!\inst32|inst31|mil_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|mil_out[1]~12_combout\,
	datab => \inst17|seg_out[4]~53_combout\,
	datac => \inst32|inst31|mil_out[0]~14_combout\,
	datad => \inst32|inst31|mil_out[2]~13_combout\,
	combout => \inst32|inst|segmento_out[1]~37_combout\);

-- Location: LCCOMB_X16_Y10_N24
\inst32|inst|segmento_out[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[1]~36_combout\ = (\inst32|inst31|dzn_out[2]~14_combout\ & (\inst17|seg_out[4]~167_combout\ & (\inst32|inst31|dzn_out[0]~15_combout\ $ (!\inst32|inst31|dzn_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|dzn_out[2]~14_combout\,
	datab => \inst32|inst31|dzn_out[0]~15_combout\,
	datac => \inst17|seg_out[4]~167_combout\,
	datad => \inst32|inst31|dzn_out[1]~13_combout\,
	combout => \inst32|inst|segmento_out[1]~36_combout\);

-- Location: LCCOMB_X17_Y10_N2
\inst32|inst|segmento_out[1]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[1]~38_combout\ = (\inst32|inst31|cnt_out[2]~13_combout\ & (\inst32|inst31|cnt_out[1]~12_combout\ $ (!\inst32|inst31|cnt_out[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|cnt_out[1]~12_combout\,
	datab => \inst32|inst31|cnt_out[2]~13_combout\,
	datac => \inst32|inst31|cnt_out[0]~14_combout\,
	combout => \inst32|inst|segmento_out[1]~38_combout\);

-- Location: LCCOMB_X17_Y10_N28
\inst32|inst|segmento_out[1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[1]~39_combout\ = (\inst32|inst|segmento_out[1]~37_combout\) # ((\inst32|inst|segmento_out[1]~36_combout\) # ((\inst17|seg_out[4]~54_combout\ & \inst32|inst|segmento_out[1]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst|segmento_out[1]~37_combout\,
	datab => \inst32|inst|segmento_out[1]~36_combout\,
	datac => \inst17|seg_out[4]~54_combout\,
	datad => \inst32|inst|segmento_out[1]~38_combout\,
	combout => \inst32|inst|segmento_out[1]~39_combout\);

-- Location: LCCOMB_X17_Y10_N10
\inst17|seg_out[5]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[5]~60_combout\ = (\inst15|_~2_combout\ & ((\inst32|inst|segmento_out[1]~35_combout\) # ((\inst32|inst|segmento_out[1]~39_combout\) # (!\inst32|inst|segmento_out[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst|segmento_out[1]~35_combout\,
	datab => \inst15|_~2_combout\,
	datac => \inst32|inst|segmento_out[0]~34_combout\,
	datad => \inst32|inst|segmento_out[1]~39_combout\,
	combout => \inst17|seg_out[5]~60_combout\);

-- Location: LCCOMB_X17_Y10_N0
\inst17|seg_out[5]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[5]~61_combout\ = (\inst17|seg_out[5]~58_combout\) # ((\inst17|seg_out[5]~59_combout\) # (\inst17|seg_out[5]~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seg_out[5]~58_combout\,
	datac => \inst17|seg_out[5]~59_combout\,
	datad => \inst17|seg_out[5]~60_combout\,
	combout => \inst17|seg_out[5]~61_combout\);

-- Location: LCCOMB_X22_Y9_N2
\inst17|seg_out[4]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~90_combout\ = (\inst15|_~0_combout\ & (!\inst25|inst31|cnt_out[0]~14_combout\ & (!\inst25|inst31|cnt_out[2]~13_combout\ & !\inst25|inst31|cnt_out[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~0_combout\,
	datab => \inst25|inst31|cnt_out[0]~14_combout\,
	datac => \inst25|inst31|cnt_out[2]~13_combout\,
	datad => \inst25|inst31|cnt_out[1]~12_combout\,
	combout => \inst17|seg_out[4]~90_combout\);

-- Location: LCCOMB_X22_Y9_N0
\inst17|seg_out[4]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~89_combout\ = (!\inst30|inst31|cnt_out[2]~14_combout\ & (!\inst30|inst31|cnt_out[0]~15_combout\ & (\inst15|_~1_combout\ & !\inst30|inst31|cnt_out[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|cnt_out[2]~14_combout\,
	datab => \inst30|inst31|cnt_out[0]~15_combout\,
	datac => \inst15|_~1_combout\,
	datad => \inst30|inst31|cnt_out[1]~13_combout\,
	combout => \inst17|seg_out[4]~89_combout\);

-- Location: LCCOMB_X22_Y9_N28
\inst17|seg_out[4]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~91_combout\ = (\inst17|seg_out[4]~43_combout\ & ((\inst17|seg_out[4]~90_combout\) # ((\inst17|seg_out[4]~50_combout\ & \inst17|seg_out[4]~89_combout\)))) # (!\inst17|seg_out[4]~43_combout\ & (((\inst17|seg_out[4]~50_combout\ & 
-- \inst17|seg_out[4]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~43_combout\,
	datab => \inst17|seg_out[4]~90_combout\,
	datac => \inst17|seg_out[4]~50_combout\,
	datad => \inst17|seg_out[4]~89_combout\,
	combout => \inst17|seg_out[4]~91_combout\);

-- Location: LCCOMB_X23_Y15_N0
\inst17|seg_out[4]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~92_combout\ = (!\inst13|inst31|cnt_out[1]~12_combout\ & (!\inst13|inst31|cnt_out[0]~14_combout\ & (\inst1|crono_q\(1) & !\inst13|inst31|cnt_out[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|cnt_out[1]~12_combout\,
	datab => \inst13|inst31|cnt_out[0]~14_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst13|inst31|cnt_out[2]~13_combout\,
	combout => \inst17|seg_out[4]~92_combout\);

-- Location: LCCOMB_X17_Y10_N6
\inst17|seg_out[4]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~85_combout\ = (!\inst32|inst31|cnt_out[1]~12_combout\ & (!\inst32|inst31|cnt_out[2]~13_combout\ & !\inst32|inst31|cnt_out[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|cnt_out[1]~12_combout\,
	datab => \inst32|inst31|cnt_out[2]~13_combout\,
	datac => \inst32|inst31|cnt_out[0]~14_combout\,
	combout => \inst17|seg_out[4]~85_combout\);

-- Location: LCCOMB_X19_Y12_N22
\inst32|inst31|cnt_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|cnt_out[3]~15_combout\ = (\inst32|inst31|_~1_combout\ & (!\inst32|inst27|q\(3))) # (!\inst32|inst31|_~1_combout\ & ((!\inst32|inst23|centena_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst27|q\(3),
	datac => \inst32|inst31|_~1_combout\,
	datad => \inst32|inst23|centena_q\(3),
	combout => \inst32|inst31|cnt_out[3]~15_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst17|seg_out[4]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~86_combout\ = (\inst17|seg_out[4]~85_combout\ & (\inst15|_~2_combout\ & (!\inst32|inst46|inst5|alterna\(1) & \inst32|inst31|cnt_out[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~85_combout\,
	datab => \inst15|_~2_combout\,
	datac => \inst32|inst46|inst5|alterna\(1),
	datad => \inst32|inst31|cnt_out[3]~15_combout\,
	combout => \inst17|seg_out[4]~86_combout\);

-- Location: LCCOMB_X24_Y8_N2
\inst17|seg_out[4]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~82_combout\ = (!\inst30|inst31|dzn_out[1]~12_combout\ & (!\inst30|inst31|dzn_out[2]~13_combout\ & (!\inst30|inst31|dzn_out[0]~14_combout\ & \inst15|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|dzn_out[1]~12_combout\,
	datab => \inst30|inst31|dzn_out[2]~13_combout\,
	datac => \inst30|inst31|dzn_out[0]~14_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst17|seg_out[4]~82_combout\);

-- Location: LCCOMB_X24_Y15_N16
\inst17|seg_out[4]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~83_combout\ = (\inst15|_~0_combout\ & (!\inst25|inst31|mil_out[1]~13_combout\ & (!\inst25|inst31|mil_out[0]~15_combout\ & !\inst25|inst31|mil_out[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~0_combout\,
	datab => \inst25|inst31|mil_out[1]~13_combout\,
	datac => \inst25|inst31|mil_out[0]~15_combout\,
	datad => \inst25|inst31|mil_out[2]~14_combout\,
	combout => \inst17|seg_out[4]~83_combout\);

-- Location: LCCOMB_X24_Y15_N6
\inst17|seg_out[4]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~84_combout\ = (\inst17|seg_out[4]~163_combout\ & ((\inst17|seg_out[4]~83_combout\) # ((\inst17|seg_out[4]~51_combout\ & \inst17|seg_out[4]~82_combout\)))) # (!\inst17|seg_out[4]~163_combout\ & (\inst17|seg_out[4]~51_combout\ & 
-- (\inst17|seg_out[4]~82_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~163_combout\,
	datab => \inst17|seg_out[4]~51_combout\,
	datac => \inst17|seg_out[4]~82_combout\,
	datad => \inst17|seg_out[4]~83_combout\,
	combout => \inst17|seg_out[4]~84_combout\);

-- Location: LCCOMB_X28_Y11_N16
\inst17|seg_out[4]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~87_combout\ = (!\inst30|inst31|mil_out[1]~13_combout\ & (!\inst30|inst31|mil_out[2]~14_combout\ & (\inst15|_~1_combout\ & !\inst30|inst31|mil_out[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|mil_out[1]~13_combout\,
	datab => \inst30|inst31|mil_out[2]~14_combout\,
	datac => \inst15|_~1_combout\,
	datad => \inst30|inst31|mil_out[0]~15_combout\,
	combout => \inst17|seg_out[4]~87_combout\);

-- Location: LCCOMB_X24_Y14_N2
\inst17|seg_out[4]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~88_combout\ = (\inst17|seg_out[4]~86_combout\) # ((\inst17|seg_out[4]~84_combout\) # ((\inst17|seg_out[4]~165_combout\ & \inst17|seg_out[4]~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~86_combout\,
	datab => \inst17|seg_out[4]~165_combout\,
	datac => \inst17|seg_out[4]~84_combout\,
	datad => \inst17|seg_out[4]~87_combout\,
	combout => \inst17|seg_out[4]~88_combout\);

-- Location: LCCOMB_X23_Y15_N26
\inst17|seg_out[4]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~93_combout\ = (\inst17|seg_out[4]~91_combout\) # ((\inst17|seg_out[4]~88_combout\) # ((\inst17|seg_out[4]~92_combout\ & \inst17|seg_out[4]~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~91_combout\,
	datab => \inst17|seg_out[4]~92_combout\,
	datac => \inst17|seg_out[4]~46_combout\,
	datad => \inst17|seg_out[4]~88_combout\,
	combout => \inst17|seg_out[4]~93_combout\);

-- Location: LCCOMB_X14_Y11_N4
\inst32|inst31|mil_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|mil_out[3]~15_combout\ = (\inst32|inst31|_~1_combout\ & (!\inst32|inst28|q\(3))) # (!\inst32|inst31|_~1_combout\ & ((!\inst32|inst23|milhar_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst28|q\(3),
	datac => \inst32|inst31|_~1_combout\,
	datad => \inst32|inst23|milhar_q\(3),
	combout => \inst32|inst31|mil_out[3]~15_combout\);

-- Location: LCCOMB_X14_Y11_N14
\inst17|seg_out[4]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~75_combout\ = (!\inst32|inst31|mil_out[2]~13_combout\ & (!\inst32|inst31|mil_out[0]~14_combout\ & !\inst32|inst31|mil_out[1]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst31|mil_out[2]~13_combout\,
	datac => \inst32|inst31|mil_out[0]~14_combout\,
	datad => \inst32|inst31|mil_out[1]~12_combout\,
	combout => \inst17|seg_out[4]~75_combout\);

-- Location: LCCOMB_X16_Y12_N12
\inst17|seg_out[4]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~76_combout\ = (\inst32|inst31|mil_out[3]~15_combout\ & (\inst15|_~2_combout\ & (\inst17|seg_out[4]~75_combout\ & !\inst32|inst46|inst5|alterna\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|mil_out[3]~15_combout\,
	datab => \inst15|_~2_combout\,
	datac => \inst17|seg_out[4]~75_combout\,
	datad => \inst32|inst46|inst5|alterna\(0),
	combout => \inst17|seg_out[4]~76_combout\);

-- Location: LCCOMB_X16_Y10_N30
\inst17|seg_out[4]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~73_combout\ = (!\inst32|inst31|dzn_out[2]~14_combout\ & (!\inst32|inst31|dzn_out[1]~13_combout\ & !\inst32|inst31|dzn_out[0]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|dzn_out[2]~14_combout\,
	datab => \inst32|inst31|dzn_out[1]~13_combout\,
	datad => \inst32|inst31|dzn_out[0]~15_combout\,
	combout => \inst17|seg_out[4]~73_combout\);

-- Location: LCCOMB_X16_Y10_N12
\inst32|inst31|dzn_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|dzn_out[3]~12_combout\ = (\inst32|inst31|_~1_combout\ & ((!\inst32|inst26|q\(3)))) # (!\inst32|inst31|_~1_combout\ & (!\inst32|inst23|dezena_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|_~1_combout\,
	datac => \inst32|inst23|dezena_q\(3),
	datad => \inst32|inst26|q\(3),
	combout => \inst32|inst31|dzn_out[3]~12_combout\);

-- Location: LCCOMB_X16_Y10_N28
\inst17|seg_out[4]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~74_combout\ = (\inst17|seg_out[4]~73_combout\ & (\inst15|_~2_combout\ & (\inst32|inst31|dzn_out[3]~12_combout\ & !\inst32|inst46|inst5|alterna\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~73_combout\,
	datab => \inst15|_~2_combout\,
	datac => \inst32|inst31|dzn_out[3]~12_combout\,
	datad => \inst32|inst46|inst5|alterna\(2),
	combout => \inst17|seg_out[4]~74_combout\);

-- Location: LCCOMB_X25_Y8_N30
\inst17|seg_out[4]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~68_combout\ = (!\inst30|inst31|und_out[2]~13_combout\ & (!\inst30|inst31|und_out[1]~12_combout\ & (\inst15|_~1_combout\ & !\inst30|inst31|und_out[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|und_out[2]~13_combout\,
	datab => \inst30|inst31|und_out[1]~12_combout\,
	datac => \inst15|_~1_combout\,
	datad => \inst30|inst31|und_out[0]~14_combout\,
	combout => \inst17|seg_out[4]~68_combout\);

-- Location: LCCOMB_X24_Y9_N20
\inst17|seg_out[4]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~69_combout\ = (!\inst25|inst31|und_out[0]~15_combout\ & (!\inst25|inst31|und_out[1]~13_combout\ & (\inst15|_~0_combout\ & !\inst25|inst31|und_out[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|und_out[0]~15_combout\,
	datab => \inst25|inst31|und_out[1]~13_combout\,
	datac => \inst15|_~0_combout\,
	datad => \inst25|inst31|und_out[2]~14_combout\,
	combout => \inst17|seg_out[4]~69_combout\);

-- Location: LCCOMB_X24_Y8_N24
\inst17|seg_out[4]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~70_combout\ = (\inst17|seg_out[4]~68_combout\ & ((\inst17|seg_out[4]~49_combout\) # ((\inst17|seg_out[4]~69_combout\ & \inst17|seg_out[4]~42_combout\)))) # (!\inst17|seg_out[4]~68_combout\ & (\inst17|seg_out[4]~69_combout\ & 
-- (\inst17|seg_out[4]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~68_combout\,
	datab => \inst17|seg_out[4]~69_combout\,
	datac => \inst17|seg_out[4]~42_combout\,
	datad => \inst17|seg_out[4]~49_combout\,
	combout => \inst17|seg_out[4]~70_combout\);

-- Location: LCCOMB_X17_Y14_N28
\inst17|seg_out[4]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~71_combout\ = (!\inst13|inst31|dzn_out[1]~12_combout\ & (!\inst13|inst31|dzn_out[2]~13_combout\ & (\inst1|crono_q\(1) & !\inst13|inst31|dzn_out[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|dzn_out[1]~12_combout\,
	datab => \inst13|inst31|dzn_out[2]~13_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst13|inst31|dzn_out[0]~14_combout\,
	combout => \inst17|seg_out[4]~71_combout\);

-- Location: LCCOMB_X17_Y14_N14
\inst17|seg_out[4]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~72_combout\ = (\inst17|seg_out[4]~45_combout\ & ((\inst17|seg_out[4]~71_combout\) # ((\inst1|crono_q\(1) & !\inst13|inst|segmento_out[0]~30_combout\)))) # (!\inst17|seg_out[4]~45_combout\ & (((\inst1|crono_q\(1) & 
-- !\inst13|inst|segmento_out[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~45_combout\,
	datab => \inst17|seg_out[4]~71_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst13|inst|segmento_out[0]~30_combout\,
	combout => \inst17|seg_out[4]~72_combout\);

-- Location: LCCOMB_X16_Y12_N18
\inst17|seg_out[4]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~77_combout\ = (\inst17|seg_out[4]~76_combout\) # ((\inst17|seg_out[4]~74_combout\) # ((\inst17|seg_out[4]~70_combout\) # (\inst17|seg_out[4]~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~76_combout\,
	datab => \inst17|seg_out[4]~74_combout\,
	datac => \inst17|seg_out[4]~70_combout\,
	datad => \inst17|seg_out[4]~72_combout\,
	combout => \inst17|seg_out[4]~77_combout\);

-- Location: LCCOMB_X24_Y13_N16
\inst17|seg_out[4]~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~168_combout\ = (!\inst1|crono_q\(1) & (\inst1|crono_q\(2) & (\inst25|inst46|inst5|alterna\(3) & \inst25|inst|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst1|crono_q\(2),
	datac => \inst25|inst46|inst5|alterna\(3),
	datad => \inst25|inst|_~0_combout\,
	combout => \inst17|seg_out[4]~168_combout\);

-- Location: LCCOMB_X23_Y9_N18
\inst17|seg_out[4]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~78_combout\ = (!\inst25|inst31|dzn_out[2]~14_combout\ & (\inst15|_~0_combout\ & (!\inst25|inst31|dzn_out[1]~13_combout\ & !\inst25|inst31|dzn_out[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|dzn_out[2]~14_combout\,
	datab => \inst15|_~0_combout\,
	datac => \inst25|inst31|dzn_out[1]~13_combout\,
	datad => \inst25|inst31|dzn_out[0]~15_combout\,
	combout => \inst17|seg_out[4]~78_combout\);

-- Location: LCCOMB_X23_Y9_N16
\inst17|seg_out[4]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~79_combout\ = (\inst17|seg_out[4]~164_combout\ & ((\inst17|seg_out[4]~78_combout\) # ((\inst15|_~1_combout\ & !\inst30|inst|segmento_out[0]~34_combout\)))) # (!\inst17|seg_out[4]~164_combout\ & (\inst15|_~1_combout\ & 
-- (!\inst30|inst|segmento_out[0]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~164_combout\,
	datab => \inst15|_~1_combout\,
	datac => \inst30|inst|segmento_out[0]~34_combout\,
	datad => \inst17|seg_out[4]~78_combout\,
	combout => \inst17|seg_out[4]~79_combout\);

-- Location: LCCOMB_X16_Y13_N16
\inst17|seg_out[4]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~80_combout\ = (!\inst13|inst31|mil_out[1]~12_combout\ & (!\inst13|inst31|mil_out[0]~14_combout\ & (\inst1|crono_q\(1) & !\inst13|inst31|mil_out[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|mil_out[1]~12_combout\,
	datab => \inst13|inst31|mil_out[0]~14_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst13|inst31|mil_out[2]~13_combout\,
	combout => \inst17|seg_out[4]~80_combout\);

-- Location: LCCOMB_X16_Y13_N26
\inst17|seg_out[4]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~81_combout\ = (\inst17|seg_out[4]~168_combout\) # ((\inst17|seg_out[4]~79_combout\) # ((\inst17|seg_out[4]~47_combout\ & \inst17|seg_out[4]~80_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~47_combout\,
	datab => \inst17|seg_out[4]~168_combout\,
	datac => \inst17|seg_out[4]~79_combout\,
	datad => \inst17|seg_out[4]~80_combout\,
	combout => \inst17|seg_out[4]~81_combout\);

-- Location: LCCOMB_X19_Y10_N8
\inst32|inst31|und_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst31|und_out[3]~12_combout\ = (\inst32|inst31|_~1_combout\ & ((!\inst32|inst25|q\(3)))) # (!\inst32|inst31|_~1_combout\ & (!\inst32|inst23|unidade_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst23|unidade_q\(3),
	datac => \inst32|inst31|_~1_combout\,
	datad => \inst32|inst25|q\(3),
	combout => \inst32|inst31|und_out[3]~12_combout\);

-- Location: LCCOMB_X19_Y9_N10
\inst17|seg_out[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~62_combout\ = (\inst15|_~2_combout\ & (\inst32|inst31|und_out[3]~12_combout\ & \inst32|inst|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|_~2_combout\,
	datac => \inst32|inst31|und_out[3]~12_combout\,
	datad => \inst32|inst|_~0_combout\,
	combout => \inst17|seg_out[4]~62_combout\);

-- Location: LCCOMB_X19_Y9_N20
\inst17|seg_out[4]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~63_combout\ = (\inst17|seg_out[4]~62_combout\ & (!\inst32|inst31|und_out[2]~14_combout\ & (!\inst32|inst31|und_out[1]~13_combout\ & !\inst32|inst31|und_out[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~62_combout\,
	datab => \inst32|inst31|und_out[2]~14_combout\,
	datac => \inst32|inst31|und_out[1]~13_combout\,
	datad => \inst32|inst31|und_out[0]~15_combout\,
	combout => \inst17|seg_out[4]~63_combout\);

-- Location: LCCOMB_X24_Y13_N20
\inst17|seg_out[4]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~66_combout\ = (\inst17|dig_out[3]~22_combout\ & ((\inst32|inst|segmento_out[0]~34_combout\) # (!\inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst|segmento_out[0]~34_combout\,
	datac => \inst15|_~2_combout\,
	datad => \inst17|dig_out[3]~22_combout\,
	combout => \inst17|seg_out[4]~66_combout\);

-- Location: LCCOMB_X18_Y12_N26
\inst17|seg_out[4]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~65_combout\ = (\inst1|crono_q\(1) & (!\inst13|inst31|und_out[2]~14_combout\ & (!\inst13|inst31|und_out[0]~15_combout\ & !\inst13|inst31|und_out[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|crono_q\(1),
	datab => \inst13|inst31|und_out[2]~14_combout\,
	datac => \inst13|inst31|und_out[0]~15_combout\,
	datad => \inst13|inst31|und_out[1]~13_combout\,
	combout => \inst17|seg_out[4]~65_combout\);

-- Location: LCCOMB_X18_Y12_N24
\inst17|seg_out[4]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~64_combout\ = (\inst13|inst|_~0_combout\ & ((\inst13|inst31|_~0_combout\ & (!\inst13|inst25|q\(3))) # (!\inst13|inst31|_~0_combout\ & ((!\inst13|inst23|unidade_q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|_~0_combout\,
	datab => \inst13|inst25|q\(3),
	datac => \inst13|inst23|unidade_q\(3),
	datad => \inst13|inst31|_~0_combout\,
	combout => \inst17|seg_out[4]~64_combout\);

-- Location: LCCOMB_X18_Y12_N12
\inst17|seg_out[4]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~67_combout\ = (\inst17|seg_out[4]~63_combout\) # (((\inst17|seg_out[4]~65_combout\ & \inst17|seg_out[4]~64_combout\)) # (!\inst17|seg_out[4]~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~63_combout\,
	datab => \inst17|seg_out[4]~66_combout\,
	datac => \inst17|seg_out[4]~65_combout\,
	datad => \inst17|seg_out[4]~64_combout\,
	combout => \inst17|seg_out[4]~67_combout\);

-- Location: LCCOMB_X16_Y12_N28
\inst17|seg_out[4]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[4]~94_combout\ = (\inst17|seg_out[4]~93_combout\) # ((\inst17|seg_out[4]~77_combout\) # ((\inst17|seg_out[4]~81_combout\) # (\inst17|seg_out[4]~67_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~93_combout\,
	datab => \inst17|seg_out[4]~77_combout\,
	datac => \inst17|seg_out[4]~81_combout\,
	datad => \inst17|seg_out[4]~67_combout\,
	combout => \inst17|seg_out[4]~94_combout\);

-- Location: LCCOMB_X24_Y8_N12
\inst30|inst|segmento_out[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[3]~43_combout\ = (\inst30|inst31|dzn_out[1]~12_combout\ & (\inst30|inst31|dzn_out[0]~14_combout\ $ (\inst30|inst31|dzn_out[2]~13_combout\))) # (!\inst30|inst31|dzn_out[1]~12_combout\ & (\inst30|inst31|dzn_out[0]~14_combout\ & 
-- \inst30|inst31|dzn_out[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst31|dzn_out[1]~12_combout\,
	datac => \inst30|inst31|dzn_out[0]~14_combout\,
	datad => \inst30|inst31|dzn_out[2]~13_combout\,
	combout => \inst30|inst|segmento_out[3]~43_combout\);

-- Location: LCCOMB_X28_Y11_N18
\inst30|inst|segmento_out[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[3]~42_combout\ = (\inst17|seg_out[4]~165_combout\ & ((\inst30|inst31|mil_out[1]~13_combout\ & (\inst30|inst31|mil_out[2]~14_combout\ $ (\inst30|inst31|mil_out[0]~15_combout\))) # (!\inst30|inst31|mil_out[1]~13_combout\ & 
-- (\inst30|inst31|mil_out[2]~14_combout\ & \inst30|inst31|mil_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|mil_out[1]~13_combout\,
	datab => \inst30|inst31|mil_out[2]~14_combout\,
	datac => \inst17|seg_out[4]~165_combout\,
	datad => \inst30|inst31|mil_out[0]~15_combout\,
	combout => \inst30|inst|segmento_out[3]~42_combout\);

-- Location: LCCOMB_X22_Y9_N8
\inst30|inst|segmento_out[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[3]~41_combout\ = (\inst17|seg_out[4]~50_combout\ & ((\inst30|inst31|cnt_out[2]~14_combout\ & (\inst30|inst31|cnt_out[0]~15_combout\ $ (\inst30|inst31|cnt_out[1]~13_combout\))) # (!\inst30|inst31|cnt_out[2]~14_combout\ & 
-- (\inst30|inst31|cnt_out[0]~15_combout\ & \inst30|inst31|cnt_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|cnt_out[2]~14_combout\,
	datab => \inst30|inst31|cnt_out[0]~15_combout\,
	datac => \inst17|seg_out[4]~50_combout\,
	datad => \inst30|inst31|cnt_out[1]~13_combout\,
	combout => \inst30|inst|segmento_out[3]~41_combout\);

-- Location: LCCOMB_X24_Y8_N10
\inst30|inst|segmento_out[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[3]~44_combout\ = (\inst30|inst|segmento_out[3]~42_combout\) # ((\inst30|inst|segmento_out[3]~41_combout\) # ((\inst30|inst|segmento_out[3]~43_combout\ & \inst17|seg_out[4]~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|segmento_out[3]~43_combout\,
	datab => \inst30|inst|segmento_out[3]~42_combout\,
	datac => \inst17|seg_out[4]~51_combout\,
	datad => \inst30|inst|segmento_out[3]~41_combout\,
	combout => \inst30|inst|segmento_out[3]~44_combout\);

-- Location: LCCOMB_X25_Y8_N28
\inst30|inst|segmento_out[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[3]~40_combout\ = (\inst17|seg_out[4]~49_combout\ & ((\inst30|inst31|und_out[2]~13_combout\ & (\inst30|inst31|und_out[1]~12_combout\ $ (\inst30|inst31|und_out[0]~14_combout\))) # (!\inst30|inst31|und_out[2]~13_combout\ & 
-- (\inst30|inst31|und_out[1]~12_combout\ & \inst30|inst31|und_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|und_out[2]~13_combout\,
	datab => \inst17|seg_out[4]~49_combout\,
	datac => \inst30|inst31|und_out[1]~12_combout\,
	datad => \inst30|inst31|und_out[0]~14_combout\,
	combout => \inst30|inst|segmento_out[3]~40_combout\);

-- Location: LCCOMB_X24_Y8_N16
\inst17|seg_out[3]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[3]~99_combout\ = (\inst15|_~1_combout\ & ((\inst30|inst|segmento_out[3]~44_combout\) # ((\inst30|inst|segmento_out[3]~40_combout\) # (!\inst30|inst|segmento_out[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|segmento_out[3]~44_combout\,
	datab => \inst30|inst|segmento_out[3]~40_combout\,
	datac => \inst30|inst|segmento_out[0]~34_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst17|seg_out[3]~99_combout\);

-- Location: LCCOMB_X24_Y9_N26
\inst25|inst|segmento_out[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[3]~40_combout\ = (\inst17|seg_out[4]~42_combout\ & ((\inst25|inst31|und_out[2]~14_combout\ & (\inst25|inst31|und_out[1]~13_combout\ $ (\inst25|inst31|und_out[0]~15_combout\))) # (!\inst25|inst31|und_out[2]~14_combout\ & 
-- (\inst25|inst31|und_out[1]~13_combout\ & \inst25|inst31|und_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|und_out[2]~14_combout\,
	datab => \inst25|inst31|und_out[1]~13_combout\,
	datac => \inst17|seg_out[4]~42_combout\,
	datad => \inst25|inst31|und_out[0]~15_combout\,
	combout => \inst25|inst|segmento_out[3]~40_combout\);

-- Location: LCCOMB_X22_Y9_N6
\inst25|inst|segmento_out[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[3]~41_combout\ = (\inst17|seg_out[4]~43_combout\ & ((\inst25|inst31|cnt_out[2]~13_combout\ & (\inst25|inst31|cnt_out[1]~12_combout\ $ (\inst25|inst31|cnt_out[0]~14_combout\))) # (!\inst25|inst31|cnt_out[2]~13_combout\ & 
-- (\inst25|inst31|cnt_out[1]~12_combout\ & \inst25|inst31|cnt_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|cnt_out[2]~13_combout\,
	datab => \inst25|inst31|cnt_out[1]~12_combout\,
	datac => \inst25|inst31|cnt_out[0]~14_combout\,
	datad => \inst17|seg_out[4]~43_combout\,
	combout => \inst25|inst|segmento_out[3]~41_combout\);

-- Location: LCCOMB_X24_Y15_N0
\inst25|inst|segmento_out[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[3]~42_combout\ = (\inst17|seg_out[4]~163_combout\ & ((\inst25|inst31|mil_out[1]~13_combout\ & (\inst25|inst31|mil_out[0]~15_combout\ $ (\inst25|inst31|mil_out[2]~14_combout\))) # (!\inst25|inst31|mil_out[1]~13_combout\ & 
-- (\inst25|inst31|mil_out[0]~15_combout\ & \inst25|inst31|mil_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~163_combout\,
	datab => \inst25|inst31|mil_out[1]~13_combout\,
	datac => \inst25|inst31|mil_out[0]~15_combout\,
	datad => \inst25|inst31|mil_out[2]~14_combout\,
	combout => \inst25|inst|segmento_out[3]~42_combout\);

-- Location: LCCOMB_X23_Y9_N6
\inst25|inst|segmento_out[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[3]~43_combout\ = (\inst25|inst31|dzn_out[0]~15_combout\ & (\inst25|inst31|dzn_out[1]~13_combout\ $ (\inst25|inst31|dzn_out[2]~14_combout\))) # (!\inst25|inst31|dzn_out[0]~15_combout\ & (\inst25|inst31|dzn_out[1]~13_combout\ & 
-- \inst25|inst31|dzn_out[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst31|dzn_out[0]~15_combout\,
	datac => \inst25|inst31|dzn_out[1]~13_combout\,
	datad => \inst25|inst31|dzn_out[2]~14_combout\,
	combout => \inst25|inst|segmento_out[3]~43_combout\);

-- Location: LCCOMB_X23_Y9_N28
\inst25|inst|segmento_out[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[3]~44_combout\ = (\inst25|inst|segmento_out[3]~41_combout\) # ((\inst25|inst|segmento_out[3]~42_combout\) # ((\inst17|seg_out[4]~164_combout\ & \inst25|inst|segmento_out[3]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~164_combout\,
	datab => \inst25|inst|segmento_out[3]~41_combout\,
	datac => \inst25|inst|segmento_out[3]~42_combout\,
	datad => \inst25|inst|segmento_out[3]~43_combout\,
	combout => \inst25|inst|segmento_out[3]~44_combout\);

-- Location: LCCOMB_X23_Y9_N22
\inst17|seg_out[3]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[3]~95_combout\ = (\inst15|_~0_combout\ & ((\inst25|inst|segmento_out[3]~40_combout\) # ((\inst25|inst|segmento_out[3]~44_combout\) # (!\inst25|inst|segmento_out[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|segmento_out[3]~40_combout\,
	datab => \inst25|inst|segmento_out[3]~44_combout\,
	datac => \inst25|inst|segmento_out[0]~34_combout\,
	datad => \inst15|_~0_combout\,
	combout => \inst17|seg_out[3]~95_combout\);

-- Location: LCCOMB_X19_Y9_N22
\inst32|inst|segmento_out[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[3]~40_combout\ = (\inst17|seg_out[4]~166_combout\ & ((\inst32|inst31|und_out[2]~14_combout\ & (\inst32|inst31|und_out[1]~13_combout\ $ (\inst32|inst31|und_out[0]~15_combout\))) # (!\inst32|inst31|und_out[2]~14_combout\ & 
-- (\inst32|inst31|und_out[1]~13_combout\ & \inst32|inst31|und_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~166_combout\,
	datab => \inst32|inst31|und_out[2]~14_combout\,
	datac => \inst32|inst31|und_out[1]~13_combout\,
	datad => \inst32|inst31|und_out[0]~15_combout\,
	combout => \inst32|inst|segmento_out[3]~40_combout\);

-- Location: LCCOMB_X16_Y10_N18
\inst32|inst|segmento_out[3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[3]~41_combout\ = (\inst17|seg_out[4]~167_combout\ & ((\inst32|inst31|dzn_out[2]~14_combout\ & (\inst32|inst31|dzn_out[0]~15_combout\ $ (\inst32|inst31|dzn_out[1]~13_combout\))) # (!\inst32|inst31|dzn_out[2]~14_combout\ & 
-- (\inst32|inst31|dzn_out[0]~15_combout\ & \inst32|inst31|dzn_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|dzn_out[2]~14_combout\,
	datab => \inst32|inst31|dzn_out[0]~15_combout\,
	datac => \inst17|seg_out[4]~167_combout\,
	datad => \inst32|inst31|dzn_out[1]~13_combout\,
	combout => \inst32|inst|segmento_out[3]~41_combout\);

-- Location: LCCOMB_X14_Y11_N28
\inst32|inst|segmento_out[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[3]~43_combout\ = (\inst17|seg_out[4]~53_combout\ & ((\inst32|inst31|mil_out[1]~12_combout\ & (\inst32|inst31|mil_out[0]~14_combout\ $ (\inst32|inst31|mil_out[2]~13_combout\))) # (!\inst32|inst31|mil_out[1]~12_combout\ & 
-- (\inst32|inst31|mil_out[0]~14_combout\ & \inst32|inst31|mil_out[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|mil_out[1]~12_combout\,
	datab => \inst17|seg_out[4]~53_combout\,
	datac => \inst32|inst31|mil_out[0]~14_combout\,
	datad => \inst32|inst31|mil_out[2]~13_combout\,
	combout => \inst32|inst|segmento_out[3]~43_combout\);

-- Location: LCCOMB_X17_Y10_N18
\inst32|inst|segmento_out[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[3]~42_combout\ = (\inst17|seg_out[4]~54_combout\ & ((\inst32|inst31|cnt_out[0]~14_combout\ & (\inst32|inst31|cnt_out[2]~13_combout\ $ (\inst32|inst31|cnt_out[1]~12_combout\))) # (!\inst32|inst31|cnt_out[0]~14_combout\ & 
-- (\inst32|inst31|cnt_out[2]~13_combout\ & \inst32|inst31|cnt_out[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|cnt_out[0]~14_combout\,
	datab => \inst32|inst31|cnt_out[2]~13_combout\,
	datac => \inst17|seg_out[4]~54_combout\,
	datad => \inst32|inst31|cnt_out[1]~12_combout\,
	combout => \inst32|inst|segmento_out[3]~42_combout\);

-- Location: LCCOMB_X17_Y10_N8
\inst32|inst|segmento_out[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[3]~44_combout\ = (\inst32|inst|segmento_out[3]~41_combout\) # ((\inst32|inst|segmento_out[3]~43_combout\) # (\inst32|inst|segmento_out[3]~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst|segmento_out[3]~41_combout\,
	datac => \inst32|inst|segmento_out[3]~43_combout\,
	datad => \inst32|inst|segmento_out[3]~42_combout\,
	combout => \inst32|inst|segmento_out[3]~44_combout\);

-- Location: LCCOMB_X17_Y10_N30
\inst17|seg_out[3]~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[3]~100_combout\ = (\inst15|_~2_combout\ & ((\inst32|inst|segmento_out[3]~40_combout\) # ((\inst32|inst|segmento_out[3]~44_combout\) # (!\inst32|inst|segmento_out[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst|segmento_out[3]~40_combout\,
	datab => \inst32|inst|segmento_out[0]~34_combout\,
	datac => \inst32|inst|segmento_out[3]~44_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst17|seg_out[3]~100_combout\);

-- Location: LCCOMB_X16_Y13_N0
\inst13|inst|segmento_out[3]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[3]~44_combout\ = (\inst17|seg_out[4]~47_combout\ & ((\inst13|inst31|mil_out[0]~14_combout\ & (\inst13|inst31|mil_out[1]~12_combout\ $ (\inst13|inst31|mil_out[2]~13_combout\))) # (!\inst13|inst31|mil_out[0]~14_combout\ & 
-- (\inst13|inst31|mil_out[1]~12_combout\ & \inst13|inst31|mil_out[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~47_combout\,
	datab => \inst13|inst31|mil_out[0]~14_combout\,
	datac => \inst13|inst31|mil_out[1]~12_combout\,
	datad => \inst13|inst31|mil_out[2]~13_combout\,
	combout => \inst13|inst|segmento_out[3]~44_combout\);

-- Location: LCCOMB_X17_Y14_N24
\inst17|seg_out[3]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[3]~96_combout\ = (\inst17|seg_out[4]~45_combout\ & ((\inst13|inst31|dzn_out[1]~12_combout\ & (\inst13|inst31|dzn_out[2]~13_combout\ $ (\inst13|inst31|dzn_out[0]~14_combout\))) # (!\inst13|inst31|dzn_out[1]~12_combout\ & 
-- (\inst13|inst31|dzn_out[2]~13_combout\ & \inst13|inst31|dzn_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|dzn_out[1]~12_combout\,
	datab => \inst13|inst31|dzn_out[2]~13_combout\,
	datac => \inst17|seg_out[4]~45_combout\,
	datad => \inst13|inst31|dzn_out[0]~14_combout\,
	combout => \inst17|seg_out[3]~96_combout\);

-- Location: LCCOMB_X23_Y15_N12
\inst13|inst|segmento_out[3]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[3]~43_combout\ = (\inst17|seg_out[4]~46_combout\ & ((\inst13|inst31|cnt_out[1]~12_combout\ & (\inst13|inst31|cnt_out[0]~14_combout\ $ (\inst13|inst31|cnt_out[2]~13_combout\))) # (!\inst13|inst31|cnt_out[1]~12_combout\ & 
-- (\inst13|inst31|cnt_out[0]~14_combout\ & \inst13|inst31|cnt_out[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|cnt_out[1]~12_combout\,
	datab => \inst17|seg_out[4]~46_combout\,
	datac => \inst13|inst31|cnt_out[0]~14_combout\,
	datad => \inst13|inst31|cnt_out[2]~13_combout\,
	combout => \inst13|inst|segmento_out[3]~43_combout\);

-- Location: LCCOMB_X17_Y14_N10
\inst17|seg_out[3]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[3]~97_combout\ = (!\inst13|inst|segmento_out[3]~44_combout\ & (!\inst17|seg_out[3]~96_combout\ & (!\inst13|inst|segmento_out[3]~43_combout\ & \inst13|inst|segmento_out[0]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|segmento_out[3]~44_combout\,
	datab => \inst17|seg_out[3]~96_combout\,
	datac => \inst13|inst|segmento_out[3]~43_combout\,
	datad => \inst13|inst|segmento_out[0]~30_combout\,
	combout => \inst17|seg_out[3]~97_combout\);

-- Location: LCCOMB_X18_Y12_N30
\inst13|inst|segmento_out[3]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[3]~42_combout\ = (\inst17|seg_out[4]~64_combout\ & ((\inst13|inst31|und_out[2]~14_combout\ & (\inst13|inst31|und_out[0]~15_combout\ $ (\inst13|inst31|und_out[1]~13_combout\))) # (!\inst13|inst31|und_out[2]~14_combout\ & 
-- (\inst13|inst31|und_out[0]~15_combout\ & \inst13|inst31|und_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|und_out[2]~14_combout\,
	datab => \inst17|seg_out[4]~64_combout\,
	datac => \inst13|inst31|und_out[0]~15_combout\,
	datad => \inst13|inst31|und_out[1]~13_combout\,
	combout => \inst13|inst|segmento_out[3]~42_combout\);

-- Location: LCCOMB_X17_Y14_N20
\inst17|seg_out[3]~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[3]~98_combout\ = ((\inst1|crono_q\(1) & ((\inst13|inst|segmento_out[3]~42_combout\) # (!\inst17|seg_out[3]~97_combout\)))) # (!\inst17|dig_out[3]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[3]~97_combout\,
	datab => \inst17|dig_out[3]~22_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst13|inst|segmento_out[3]~42_combout\,
	combout => \inst17|seg_out[3]~98_combout\);

-- Location: LCCOMB_X17_Y10_N12
\inst17|seg_out[3]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[3]~101_combout\ = (\inst17|seg_out[3]~99_combout\) # ((\inst17|seg_out[3]~95_combout\) # ((\inst17|seg_out[3]~100_combout\) # (\inst17|seg_out[3]~98_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[3]~99_combout\,
	datab => \inst17|seg_out[3]~95_combout\,
	datac => \inst17|seg_out[3]~100_combout\,
	datad => \inst17|seg_out[3]~98_combout\,
	combout => \inst17|seg_out[3]~101_combout\);

-- Location: LCCOMB_X21_Y14_N8
\inst13|inst31|dzn_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|dzn_out[3]~15_combout\ = (\inst13|inst31|_~0_combout\ & ((!\inst13|inst26|q\(3)))) # (!\inst13|inst31|_~0_combout\ & (!\inst13|inst23|dezena_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|_~0_combout\,
	datac => \inst13|inst23|dezena_q\(3),
	datad => \inst13|inst26|q\(3),
	combout => \inst13|inst31|dzn_out[3]~15_combout\);

-- Location: LCCOMB_X17_Y14_N18
\inst17|seg_out[2]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~125_combout\ = (\inst13|inst31|dzn_out[1]~12_combout\ & ((\inst13|inst31|dzn_out[2]~13_combout\ & (\inst13|inst31|dzn_out[3]~15_combout\)) # (!\inst13|inst31|dzn_out[2]~13_combout\ & ((\inst13|inst31|dzn_out[0]~14_combout\))))) # 
-- (!\inst13|inst31|dzn_out[1]~12_combout\ & (\inst13|inst31|dzn_out[3]~15_combout\ & ((\inst13|inst31|dzn_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|dzn_out[1]~12_combout\,
	datab => \inst13|inst31|dzn_out[3]~15_combout\,
	datac => \inst13|inst31|dzn_out[2]~13_combout\,
	datad => \inst13|inst31|dzn_out[0]~14_combout\,
	combout => \inst17|seg_out[2]~125_combout\);

-- Location: LCCOMB_X19_Y15_N10
\inst17|seg_out[2]~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~126_combout\ = ((\inst17|seg_out[2]~125_combout\ & !\inst13|inst46|inst5|alterna\(2))) # (!\inst13|inst|segmento_out[0]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|segmento_out[0]~30_combout\,
	datac => \inst17|seg_out[2]~125_combout\,
	datad => \inst13|inst46|inst5|alterna\(2),
	combout => \inst17|seg_out[2]~126_combout\);

-- Location: LCCOMB_X18_Y12_N20
\inst17|seg_out[2]~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~130_combout\ = (\inst13|inst31|und_out[1]~13_combout\ & ((\inst13|inst31|und_out[2]~14_combout\ & (\inst13|inst31|und_out[3]~12_combout\)) # (!\inst13|inst31|und_out[2]~14_combout\ & ((\inst13|inst31|und_out[0]~15_combout\))))) # 
-- (!\inst13|inst31|und_out[1]~13_combout\ & (((\inst13|inst31|und_out[3]~12_combout\ & \inst13|inst31|und_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|und_out[2]~14_combout\,
	datab => \inst13|inst31|und_out[3]~12_combout\,
	datac => \inst13|inst31|und_out[0]~15_combout\,
	datad => \inst13|inst31|und_out[1]~13_combout\,
	combout => \inst17|seg_out[2]~130_combout\);

-- Location: LCCOMB_X23_Y15_N22
\inst13|inst31|cnt_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|cnt_out[3]~15_combout\ = (\inst13|inst31|_~0_combout\ & (!\inst13|inst27|q\(3))) # (!\inst13|inst31|_~0_combout\ & ((!\inst13|inst23|centena_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|_~0_combout\,
	datab => \inst13|inst27|q\(3),
	datad => \inst13|inst23|centena_q\(3),
	combout => \inst13|inst31|cnt_out[3]~15_combout\);

-- Location: LCCOMB_X23_Y15_N20
\inst17|seg_out[2]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~127_combout\ = (\inst13|inst31|cnt_out[1]~12_combout\ & ((\inst13|inst31|cnt_out[2]~13_combout\ & ((\inst13|inst31|cnt_out[3]~15_combout\))) # (!\inst13|inst31|cnt_out[2]~13_combout\ & (\inst13|inst31|cnt_out[0]~14_combout\)))) # 
-- (!\inst13|inst31|cnt_out[1]~12_combout\ & (\inst13|inst31|cnt_out[0]~14_combout\ & (\inst13|inst31|cnt_out[3]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|cnt_out[1]~12_combout\,
	datab => \inst13|inst31|cnt_out[0]~14_combout\,
	datac => \inst13|inst31|cnt_out[3]~15_combout\,
	datad => \inst13|inst31|cnt_out[2]~13_combout\,
	combout => \inst17|seg_out[2]~127_combout\);

-- Location: LCCOMB_X23_Y13_N16
\inst13|inst31|mil_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst31|mil_out[3]~15_combout\ = (\inst13|inst31|_~0_combout\ & (!\inst13|inst28|q\(3))) # (!\inst13|inst31|_~0_combout\ & ((!\inst13|inst23|milhar_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst28|q\(3),
	datac => \inst13|inst23|milhar_q\(3),
	datad => \inst13|inst31|_~0_combout\,
	combout => \inst13|inst31|mil_out[3]~15_combout\);

-- Location: LCCOMB_X16_Y13_N14
\inst17|seg_out[2]~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~128_combout\ = (\inst13|inst31|mil_out[1]~12_combout\ & ((\inst13|inst31|mil_out[2]~13_combout\ & (\inst13|inst31|mil_out[3]~15_combout\)) # (!\inst13|inst31|mil_out[2]~13_combout\ & ((\inst13|inst31|mil_out[0]~14_combout\))))) # 
-- (!\inst13|inst31|mil_out[1]~12_combout\ & (\inst13|inst31|mil_out[3]~15_combout\ & (\inst13|inst31|mil_out[0]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|mil_out[3]~15_combout\,
	datab => \inst13|inst31|mil_out[0]~14_combout\,
	datac => \inst13|inst31|mil_out[1]~12_combout\,
	datad => \inst13|inst31|mil_out[2]~13_combout\,
	combout => \inst17|seg_out[2]~128_combout\);

-- Location: LCCOMB_X19_Y15_N4
\inst17|seg_out[2]~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~129_combout\ = (\inst17|seg_out[2]~127_combout\ & (((!\inst13|inst46|inst5|alterna\(0) & \inst17|seg_out[2]~128_combout\)) # (!\inst13|inst46|inst5|alterna\(1)))) # (!\inst17|seg_out[2]~127_combout\ & (!\inst13|inst46|inst5|alterna\(0) 
-- & ((\inst17|seg_out[2]~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[2]~127_combout\,
	datab => \inst13|inst46|inst5|alterna\(0),
	datac => \inst13|inst46|inst5|alterna\(1),
	datad => \inst17|seg_out[2]~128_combout\,
	combout => \inst17|seg_out[2]~129_combout\);

-- Location: LCCOMB_X19_Y15_N18
\inst17|seg_out[2]~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~131_combout\ = (\inst17|seg_out[2]~126_combout\) # ((\inst17|seg_out[2]~129_combout\) # ((\inst17|seg_out[2]~130_combout\ & \inst13|inst|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[2]~126_combout\,
	datab => \inst17|seg_out[2]~130_combout\,
	datac => \inst17|seg_out[2]~129_combout\,
	datad => \inst13|inst|_~0_combout\,
	combout => \inst17|seg_out[2]~131_combout\);

-- Location: LCCOMB_X22_Y9_N18
\inst25|inst31|cnt_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst31|cnt_out[3]~15_combout\ = (\inst25|inst31|_~0_combout\ & (!\inst25|inst27|q\(3))) # (!\inst25|inst31|_~0_combout\ & ((!\inst25|inst23|centena_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst27|q\(3),
	datab => \inst25|inst23|centena_q\(3),
	datac => \inst25|inst31|_~0_combout\,
	combout => \inst25|inst31|cnt_out[3]~15_combout\);

-- Location: LCCOMB_X22_Y9_N20
\inst17|seg_out[2]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~109_combout\ = (\inst25|inst31|cnt_out[1]~12_combout\ & ((\inst25|inst31|cnt_out[2]~13_combout\ & (\inst25|inst31|cnt_out[3]~15_combout\)) # (!\inst25|inst31|cnt_out[2]~13_combout\ & ((\inst25|inst31|cnt_out[0]~14_combout\))))) # 
-- (!\inst25|inst31|cnt_out[1]~12_combout\ & (((\inst25|inst31|cnt_out[3]~15_combout\ & \inst25|inst31|cnt_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|cnt_out[2]~13_combout\,
	datab => \inst25|inst31|cnt_out[3]~15_combout\,
	datac => \inst25|inst31|cnt_out[0]~14_combout\,
	datad => \inst25|inst31|cnt_out[1]~12_combout\,
	combout => \inst17|seg_out[2]~109_combout\);

-- Location: LCCOMB_X24_Y15_N2
\inst17|seg_out[2]~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~110_combout\ = (\inst25|inst31|mil_out[1]~13_combout\ & ((\inst25|inst31|mil_out[2]~14_combout\ & (\inst25|inst31|mil_out[3]~12_combout\)) # (!\inst25|inst31|mil_out[2]~14_combout\ & ((\inst25|inst31|mil_out[0]~15_combout\))))) # 
-- (!\inst25|inst31|mil_out[1]~13_combout\ & (\inst25|inst31|mil_out[3]~12_combout\ & (\inst25|inst31|mil_out[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|mil_out[3]~12_combout\,
	datab => \inst25|inst31|mil_out[1]~13_combout\,
	datac => \inst25|inst31|mil_out[0]~15_combout\,
	datad => \inst25|inst31|mil_out[2]~14_combout\,
	combout => \inst17|seg_out[2]~110_combout\);

-- Location: LCCOMB_X22_Y9_N22
\inst17|seg_out[2]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~111_combout\ = (\inst25|inst46|inst5|alterna\(0) & (\inst17|seg_out[2]~109_combout\ & (!\inst25|inst46|inst5|alterna\(1)))) # (!\inst25|inst46|inst5|alterna\(0) & ((\inst17|seg_out[2]~110_combout\) # ((\inst17|seg_out[2]~109_combout\ & 
-- !\inst25|inst46|inst5|alterna\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|alterna\(0),
	datab => \inst17|seg_out[2]~109_combout\,
	datac => \inst25|inst46|inst5|alterna\(1),
	datad => \inst17|seg_out[2]~110_combout\,
	combout => \inst17|seg_out[2]~111_combout\);

-- Location: LCCOMB_X24_Y9_N0
\inst17|seg_out[2]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~107_combout\ = (\inst25|inst31|und_out[1]~13_combout\ & ((\inst25|inst31|und_out[2]~14_combout\ & ((\inst25|inst31|und_out[3]~12_combout\))) # (!\inst25|inst31|und_out[2]~14_combout\ & (\inst25|inst31|und_out[0]~15_combout\)))) # 
-- (!\inst25|inst31|und_out[1]~13_combout\ & (\inst25|inst31|und_out[0]~15_combout\ & (\inst25|inst31|und_out[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|und_out[0]~15_combout\,
	datab => \inst25|inst31|und_out[1]~13_combout\,
	datac => \inst25|inst31|und_out[3]~12_combout\,
	datad => \inst25|inst31|und_out[2]~14_combout\,
	combout => \inst17|seg_out[2]~107_combout\);

-- Location: LCCOMB_X23_Y9_N0
\inst17|seg_out[2]~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~106_combout\ = (\inst25|inst31|dzn_out[1]~13_combout\ & ((\inst25|inst31|dzn_out[2]~14_combout\ & ((\inst25|inst31|dzn_out[3]~12_combout\))) # (!\inst25|inst31|dzn_out[2]~14_combout\ & (\inst25|inst31|dzn_out[0]~15_combout\)))) # 
-- (!\inst25|inst31|dzn_out[1]~13_combout\ & (\inst25|inst31|dzn_out[0]~15_combout\ & (\inst25|inst31|dzn_out[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|dzn_out[1]~13_combout\,
	datab => \inst25|inst31|dzn_out[0]~15_combout\,
	datac => \inst25|inst31|dzn_out[3]~12_combout\,
	datad => \inst25|inst31|dzn_out[2]~14_combout\,
	combout => \inst17|seg_out[2]~106_combout\);

-- Location: LCCOMB_X17_Y9_N18
\inst17|seg_out[2]~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~169_combout\ = (!\inst25|inst46|inst5|force_off[2]~1_combout\ & (\inst25|inst46|inst5|alterna[2]~7_combout\ & (\inst17|seg_out[2]~106_combout\ & \inst25|inst46|inst1|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|force_off[2]~1_combout\,
	datab => \inst25|inst46|inst5|alterna[2]~7_combout\,
	datac => \inst17|seg_out[2]~106_combout\,
	datad => \inst25|inst46|inst1|q\(1),
	combout => \inst17|seg_out[2]~169_combout\);

-- Location: LCCOMB_X24_Y9_N22
\inst17|seg_out[2]~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~108_combout\ = (\inst17|seg_out[2]~169_combout\) # ((\inst25|inst|_~0_combout\ & ((\inst25|inst46|inst5|alterna\(3)) # (\inst17|seg_out[2]~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|alterna\(3),
	datab => \inst17|seg_out[2]~107_combout\,
	datac => \inst17|seg_out[2]~169_combout\,
	datad => \inst25|inst|_~0_combout\,
	combout => \inst17|seg_out[2]~108_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst17|seg_out[2]~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~102_combout\ = (\inst32|inst31|und_out[1]~13_combout\ & ((\inst32|inst31|und_out[2]~14_combout\ & (\inst32|inst31|und_out[3]~12_combout\)) # (!\inst32|inst31|und_out[2]~14_combout\ & ((\inst32|inst31|und_out[0]~15_combout\))))) # 
-- (!\inst32|inst31|und_out[1]~13_combout\ & (\inst32|inst31|und_out[3]~12_combout\ & ((\inst32|inst31|und_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|und_out[3]~12_combout\,
	datab => \inst32|inst31|und_out[2]~14_combout\,
	datac => \inst32|inst31|und_out[1]~13_combout\,
	datad => \inst32|inst31|und_out[0]~15_combout\,
	combout => \inst17|seg_out[2]~102_combout\);

-- Location: LCCOMB_X19_Y9_N2
\inst17|seg_out[2]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~103_combout\ = (\inst32|inst|_~0_combout\ & (\inst17|seg_out[2]~102_combout\ & \inst15|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst|_~0_combout\,
	datab => \inst17|seg_out[2]~102_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst17|seg_out[2]~103_combout\);

-- Location: LCCOMB_X16_Y10_N4
\inst17|seg_out[2]~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~104_combout\ = (\inst32|inst31|dzn_out[1]~13_combout\ & ((\inst32|inst31|dzn_out[2]~14_combout\ & (\inst32|inst31|dzn_out[3]~12_combout\)) # (!\inst32|inst31|dzn_out[2]~14_combout\ & ((\inst32|inst31|dzn_out[0]~15_combout\))))) # 
-- (!\inst32|inst31|dzn_out[1]~13_combout\ & (((\inst32|inst31|dzn_out[3]~12_combout\ & \inst32|inst31|dzn_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|dzn_out[2]~14_combout\,
	datab => \inst32|inst31|dzn_out[1]~13_combout\,
	datac => \inst32|inst31|dzn_out[3]~12_combout\,
	datad => \inst32|inst31|dzn_out[0]~15_combout\,
	combout => \inst17|seg_out[2]~104_combout\);

-- Location: LCCOMB_X16_Y10_N2
\inst17|seg_out[2]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~105_combout\ = (\inst17|seg_out[2]~103_combout\) # ((!\inst32|inst46|inst5|alterna\(2) & (\inst17|seg_out[2]~104_combout\ & \inst15|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst5|alterna\(2),
	datab => \inst17|seg_out[2]~103_combout\,
	datac => \inst17|seg_out[2]~104_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst17|seg_out[2]~105_combout\);

-- Location: LCCOMB_X24_Y13_N10
\inst17|seg_out[2]~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~112_combout\ = (\inst17|seg_out[2]~105_combout\) # ((\inst15|_~0_combout\ & ((\inst17|seg_out[2]~111_combout\) # (\inst17|seg_out[2]~108_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[2]~111_combout\,
	datab => \inst17|seg_out[2]~108_combout\,
	datac => \inst17|seg_out[2]~105_combout\,
	datad => \inst15|_~0_combout\,
	combout => \inst17|seg_out[2]~112_combout\);

-- Location: LCCOMB_X26_Y12_N26
\inst17|seg_out[2]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~119_combout\ = (\inst30|inst31|cnt_out[1]~13_combout\ & ((\inst30|inst31|cnt_out[2]~14_combout\ & ((\inst30|inst31|cnt_out[3]~12_combout\))) # (!\inst30|inst31|cnt_out[2]~14_combout\ & (\inst30|inst31|cnt_out[0]~15_combout\)))) # 
-- (!\inst30|inst31|cnt_out[1]~13_combout\ & (((\inst30|inst31|cnt_out[0]~15_combout\ & \inst30|inst31|cnt_out[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|cnt_out[2]~14_combout\,
	datab => \inst30|inst31|cnt_out[1]~13_combout\,
	datac => \inst30|inst31|cnt_out[0]~15_combout\,
	datad => \inst30|inst31|cnt_out[3]~12_combout\,
	combout => \inst17|seg_out[2]~119_combout\);

-- Location: LCCOMB_X28_Y11_N4
\inst30|inst31|mil_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|mil_out[3]~12_combout\ = (\inst30|inst31|_~0_combout\ & ((!\inst30|inst28|q\(3)))) # (!\inst30|inst31|_~0_combout\ & (!\inst30|inst23|milhar_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|milhar_q\(3),
	datac => \inst30|inst31|_~0_combout\,
	datad => \inst30|inst28|q\(3),
	combout => \inst30|inst31|mil_out[3]~12_combout\);

-- Location: LCCOMB_X28_Y11_N12
\inst17|seg_out[2]~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~120_combout\ = (\inst30|inst31|mil_out[1]~13_combout\ & ((\inst30|inst31|mil_out[2]~14_combout\ & (\inst30|inst31|mil_out[3]~12_combout\)) # (!\inst30|inst31|mil_out[2]~14_combout\ & ((\inst30|inst31|mil_out[0]~15_combout\))))) # 
-- (!\inst30|inst31|mil_out[1]~13_combout\ & (((\inst30|inst31|mil_out[3]~12_combout\ & \inst30|inst31|mil_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|mil_out[1]~13_combout\,
	datab => \inst30|inst31|mil_out[2]~14_combout\,
	datac => \inst30|inst31|mil_out[3]~12_combout\,
	datad => \inst30|inst31|mil_out[0]~15_combout\,
	combout => \inst17|seg_out[2]~120_combout\);

-- Location: LCCOMB_X26_Y10_N20
\inst17|seg_out[2]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~121_combout\ = (\inst17|seg_out[2]~119_combout\ & (((!\inst30|inst46|inst5|alterna\(0) & \inst17|seg_out[2]~120_combout\)) # (!\inst30|inst46|inst5|alterna\(1)))) # (!\inst17|seg_out[2]~119_combout\ & 
-- (((!\inst30|inst46|inst5|alterna\(0) & \inst17|seg_out[2]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[2]~119_combout\,
	datab => \inst30|inst46|inst5|alterna\(1),
	datac => \inst30|inst46|inst5|alterna\(0),
	datad => \inst17|seg_out[2]~120_combout\,
	combout => \inst17|seg_out[2]~121_combout\);

-- Location: LCCOMB_X25_Y8_N18
\inst30|inst31|und_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|und_out[3]~15_combout\ = (\inst30|inst31|_~0_combout\ & ((!\inst30|inst25|q\(3)))) # (!\inst30|inst31|_~0_combout\ & (!\inst30|inst23|unidade_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst23|unidade_q\(3),
	datac => \inst30|inst25|q\(3),
	datad => \inst30|inst31|_~0_combout\,
	combout => \inst30|inst31|und_out[3]~15_combout\);

-- Location: LCCOMB_X25_Y8_N8
\inst17|seg_out[2]~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~122_combout\ = (\inst30|inst31|und_out[1]~12_combout\ & ((\inst30|inst31|und_out[2]~13_combout\ & (\inst30|inst31|und_out[3]~15_combout\)) # (!\inst30|inst31|und_out[2]~13_combout\ & ((\inst30|inst31|und_out[0]~14_combout\))))) # 
-- (!\inst30|inst31|und_out[1]~12_combout\ & (((\inst30|inst31|und_out[3]~15_combout\ & \inst30|inst31|und_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|und_out[2]~13_combout\,
	datab => \inst30|inst31|und_out[3]~15_combout\,
	datac => \inst30|inst31|und_out[1]~12_combout\,
	datad => \inst30|inst31|und_out[0]~14_combout\,
	combout => \inst17|seg_out[2]~122_combout\);

-- Location: LCCOMB_X29_Y11_N8
\inst30|inst31|dzn_out[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst31|dzn_out[3]~15_combout\ = (\inst30|inst31|_~0_combout\ & ((!\inst30|inst26|q\(3)))) # (!\inst30|inst31|_~0_combout\ & (!\inst30|inst23|dezena_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst23|dezena_q\(3),
	datac => \inst30|inst31|_~0_combout\,
	datad => \inst30|inst26|q\(3),
	combout => \inst30|inst31|dzn_out[3]~15_combout\);

-- Location: LCCOMB_X29_Y11_N30
\inst17|seg_out[2]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~117_combout\ = (\inst30|inst31|dzn_out[1]~12_combout\ & ((\inst30|inst31|dzn_out[2]~13_combout\ & (\inst30|inst31|dzn_out[3]~15_combout\)) # (!\inst30|inst31|dzn_out[2]~13_combout\ & ((\inst30|inst31|dzn_out[0]~14_combout\))))) # 
-- (!\inst30|inst31|dzn_out[1]~12_combout\ & (((\inst30|inst31|dzn_out[3]~15_combout\ & \inst30|inst31|dzn_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|dzn_out[2]~13_combout\,
	datab => \inst30|inst31|dzn_out[3]~15_combout\,
	datac => \inst30|inst31|dzn_out[0]~14_combout\,
	datad => \inst30|inst31|dzn_out[1]~12_combout\,
	combout => \inst17|seg_out[2]~117_combout\);

-- Location: LCCOMB_X28_Y8_N12
\inst17|seg_out[2]~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~118_combout\ = ((\inst17|seg_out[2]~117_combout\ & !\inst30|inst46|inst5|alterna\(2))) # (!\inst30|inst|segmento_out[0]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|segmento_out[0]~34_combout\,
	datac => \inst17|seg_out[2]~117_combout\,
	datad => \inst30|inst46|inst5|alterna\(2),
	combout => \inst17|seg_out[2]~118_combout\);

-- Location: LCCOMB_X25_Y8_N10
\inst17|seg_out[2]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~123_combout\ = (\inst17|seg_out[2]~121_combout\) # ((\inst17|seg_out[2]~118_combout\) # ((\inst30|inst|_~0_combout\ & \inst17|seg_out[2]~122_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[2]~121_combout\,
	datab => \inst30|inst|_~0_combout\,
	datac => \inst17|seg_out[2]~122_combout\,
	datad => \inst17|seg_out[2]~118_combout\,
	combout => \inst17|seg_out[2]~123_combout\);

-- Location: LCCOMB_X14_Y11_N18
\inst17|seg_out[2]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~115_combout\ = (\inst32|inst31|mil_out[1]~12_combout\ & ((\inst32|inst31|mil_out[2]~13_combout\ & ((\inst32|inst31|mil_out[3]~15_combout\))) # (!\inst32|inst31|mil_out[2]~13_combout\ & (\inst32|inst31|mil_out[0]~14_combout\)))) # 
-- (!\inst32|inst31|mil_out[1]~12_combout\ & (\inst32|inst31|mil_out[0]~14_combout\ & ((\inst32|inst31|mil_out[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|mil_out[0]~14_combout\,
	datab => \inst32|inst31|mil_out[2]~13_combout\,
	datac => \inst32|inst31|mil_out[3]~15_combout\,
	datad => \inst32|inst31|mil_out[1]~12_combout\,
	combout => \inst17|seg_out[2]~115_combout\);

-- Location: LCCOMB_X19_Y12_N8
\inst17|seg_out[2]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~113_combout\ = (\inst32|inst31|cnt_out[1]~12_combout\ & ((\inst32|inst31|cnt_out[2]~13_combout\ & (\inst32|inst31|cnt_out[3]~15_combout\)) # (!\inst32|inst31|cnt_out[2]~13_combout\ & ((\inst32|inst31|cnt_out[0]~14_combout\))))) # 
-- (!\inst32|inst31|cnt_out[1]~12_combout\ & (((\inst32|inst31|cnt_out[3]~15_combout\ & \inst32|inst31|cnt_out[0]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|cnt_out[2]~13_combout\,
	datab => \inst32|inst31|cnt_out[1]~12_combout\,
	datac => \inst32|inst31|cnt_out[3]~15_combout\,
	datad => \inst32|inst31|cnt_out[0]~14_combout\,
	combout => \inst17|seg_out[2]~113_combout\);

-- Location: LCCOMB_X19_Y12_N10
\inst17|seg_out[2]~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~114_combout\ = (\inst17|seg_out[2]~113_combout\ & (!\inst32|inst46|inst5|alterna\(1) & \inst15|_~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seg_out[2]~113_combout\,
	datac => \inst32|inst46|inst5|alterna\(1),
	datad => \inst15|_~2_combout\,
	combout => \inst17|seg_out[2]~114_combout\);

-- Location: LCCOMB_X16_Y12_N14
\inst17|seg_out[2]~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~116_combout\ = (\inst17|seg_out[2]~114_combout\) # ((!\inst32|inst46|inst5|alterna\(0) & (\inst15|_~2_combout\ & \inst17|seg_out[2]~115_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst5|alterna\(0),
	datab => \inst15|_~2_combout\,
	datac => \inst17|seg_out[2]~115_combout\,
	datad => \inst17|seg_out[2]~114_combout\,
	combout => \inst17|seg_out[2]~116_combout\);

-- Location: LCCOMB_X24_Y13_N4
\inst17|seg_out[2]~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~124_combout\ = (\inst17|seg_out[2]~112_combout\) # ((\inst17|seg_out[2]~116_combout\) # ((\inst17|seg_out[2]~123_combout\ & \inst15|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[2]~112_combout\,
	datab => \inst17|seg_out[2]~123_combout\,
	datac => \inst17|seg_out[2]~116_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst17|seg_out[2]~124_combout\);

-- Location: LCCOMB_X24_Y13_N2
\inst17|seg_out[2]~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[2]~132_combout\ = ((\inst17|seg_out[2]~124_combout\) # ((\inst17|seg_out[2]~131_combout\ & \inst1|crono_q\(1)))) # (!\inst17|seg_out[4]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[2]~131_combout\,
	datab => \inst17|seg_out[4]~66_combout\,
	datac => \inst17|seg_out[2]~124_combout\,
	datad => \inst1|crono_q\(1),
	combout => \inst17|seg_out[2]~132_combout\);

-- Location: LCCOMB_X17_Y14_N8
\inst13|inst|segmento_out[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[5]~47_combout\ = (\inst17|seg_out[4]~45_combout\ & ((\inst13|inst31|dzn_out[1]~12_combout\ & (!\inst13|inst31|dzn_out[2]~13_combout\ & \inst13|inst31|dzn_out[0]~14_combout\)) # (!\inst13|inst31|dzn_out[1]~12_combout\ & 
-- ((\inst13|inst31|dzn_out[0]~14_combout\) # (!\inst13|inst31|dzn_out[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|dzn_out[1]~12_combout\,
	datab => \inst13|inst31|dzn_out[2]~13_combout\,
	datac => \inst17|seg_out[4]~45_combout\,
	datad => \inst13|inst31|dzn_out[0]~14_combout\,
	combout => \inst13|inst|segmento_out[5]~47_combout\);

-- Location: LCCOMB_X16_Y13_N8
\inst13|inst|segmento_out[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[5]~48_combout\ = (\inst13|inst31|mil_out[0]~14_combout\ & ((!\inst13|inst31|mil_out[2]~13_combout\) # (!\inst13|inst31|mil_out[1]~12_combout\))) # (!\inst13|inst31|mil_out[0]~14_combout\ & (!\inst13|inst31|mil_out[1]~12_combout\ 
-- & !\inst13|inst31|mil_out[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst31|mil_out[0]~14_combout\,
	datac => \inst13|inst31|mil_out[1]~12_combout\,
	datad => \inst13|inst31|mil_out[2]~13_combout\,
	combout => \inst13|inst|segmento_out[5]~48_combout\);

-- Location: LCCOMB_X23_Y15_N30
\inst13|inst|segmento_out[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[5]~46_combout\ = (\inst17|seg_out[4]~46_combout\ & ((\inst13|inst31|cnt_out[1]~12_combout\ & (\inst13|inst31|cnt_out[0]~14_combout\ & !\inst13|inst31|cnt_out[2]~13_combout\)) # (!\inst13|inst31|cnt_out[1]~12_combout\ & 
-- ((\inst13|inst31|cnt_out[0]~14_combout\) # (!\inst13|inst31|cnt_out[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|cnt_out[1]~12_combout\,
	datab => \inst17|seg_out[4]~46_combout\,
	datac => \inst13|inst31|cnt_out[0]~14_combout\,
	datad => \inst13|inst31|cnt_out[2]~13_combout\,
	combout => \inst13|inst|segmento_out[5]~46_combout\);

-- Location: LCCOMB_X16_Y13_N10
\inst13|inst|segmento_out[5]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[5]~49_combout\ = (\inst13|inst|segmento_out[5]~47_combout\) # ((\inst13|inst|segmento_out[5]~46_combout\) # ((\inst17|seg_out[4]~47_combout\ & \inst13|inst|segmento_out[5]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~47_combout\,
	datab => \inst13|inst|segmento_out[5]~47_combout\,
	datac => \inst13|inst|segmento_out[5]~48_combout\,
	datad => \inst13|inst|segmento_out[5]~46_combout\,
	combout => \inst13|inst|segmento_out[5]~49_combout\);

-- Location: LCCOMB_X18_Y12_N22
\inst13|inst|segmento_out[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|segmento_out[5]~45_combout\ = (\inst17|seg_out[4]~64_combout\ & ((\inst13|inst31|und_out[2]~14_combout\ & (\inst13|inst31|und_out[0]~15_combout\ & !\inst13|inst31|und_out[1]~13_combout\)) # (!\inst13|inst31|und_out[2]~14_combout\ & 
-- ((\inst13|inst31|und_out[0]~15_combout\) # (!\inst13|inst31|und_out[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|und_out[2]~14_combout\,
	datab => \inst17|seg_out[4]~64_combout\,
	datac => \inst13|inst31|und_out[0]~15_combout\,
	datad => \inst13|inst31|und_out[1]~13_combout\,
	combout => \inst13|inst|segmento_out[5]~45_combout\);

-- Location: LCCOMB_X16_Y13_N24
\inst17|seg_out[1]~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[1]~133_combout\ = (\inst1|crono_q\(1) & ((\inst13|inst|segmento_out[5]~49_combout\) # ((\inst13|inst|segmento_out[5]~45_combout\) # (!\inst13|inst|segmento_out[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|segmento_out[5]~49_combout\,
	datab => \inst13|inst|segmento_out[5]~45_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst13|inst|segmento_out[0]~30_combout\,
	combout => \inst17|seg_out[1]~133_combout\);

-- Location: LCCOMB_X23_Y9_N10
\inst25|inst|segmento_out[5]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[5]~49_combout\ = (\inst17|seg_out[4]~164_combout\ & ((\inst25|inst31|dzn_out[0]~15_combout\ & ((!\inst25|inst31|dzn_out[2]~14_combout\) # (!\inst25|inst31|dzn_out[1]~13_combout\))) # (!\inst25|inst31|dzn_out[0]~15_combout\ & 
-- (!\inst25|inst31|dzn_out[1]~13_combout\ & !\inst25|inst31|dzn_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~164_combout\,
	datab => \inst25|inst31|dzn_out[0]~15_combout\,
	datac => \inst25|inst31|dzn_out[1]~13_combout\,
	datad => \inst25|inst31|dzn_out[2]~14_combout\,
	combout => \inst25|inst|segmento_out[5]~49_combout\);

-- Location: LCCOMB_X24_Y9_N8
\inst25|inst|segmento_out[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[5]~45_combout\ = (\inst25|inst31|und_out[2]~14_combout\ & (!\inst25|inst31|und_out[1]~13_combout\ & \inst25|inst31|und_out[0]~15_combout\)) # (!\inst25|inst31|und_out[2]~14_combout\ & ((\inst25|inst31|und_out[0]~15_combout\) # 
-- (!\inst25|inst31|und_out[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|und_out[2]~14_combout\,
	datac => \inst25|inst31|und_out[1]~13_combout\,
	datad => \inst25|inst31|und_out[0]~15_combout\,
	combout => \inst25|inst|segmento_out[5]~45_combout\);

-- Location: LCCOMB_X24_Y9_N18
\inst25|inst|segmento_out[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[5]~46_combout\ = (\inst25|inst|_~0_combout\ & ((\inst25|inst46|inst5|alterna\(3)) # ((\inst25|inst31|und_out[3]~12_combout\ & \inst25|inst|segmento_out[5]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst46|inst5|alterna\(3),
	datab => \inst25|inst31|und_out[3]~12_combout\,
	datac => \inst25|inst|segmento_out[5]~45_combout\,
	datad => \inst25|inst|_~0_combout\,
	combout => \inst25|inst|segmento_out[5]~46_combout\);

-- Location: LCCOMB_X22_Y9_N16
\inst25|inst|segmento_out[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[5]~48_combout\ = (\inst17|seg_out[4]~43_combout\ & ((\inst25|inst31|cnt_out[2]~13_combout\ & (!\inst25|inst31|cnt_out[1]~12_combout\ & \inst25|inst31|cnt_out[0]~14_combout\)) # (!\inst25|inst31|cnt_out[2]~13_combout\ & 
-- ((\inst25|inst31|cnt_out[0]~14_combout\) # (!\inst25|inst31|cnt_out[1]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|cnt_out[2]~13_combout\,
	datab => \inst25|inst31|cnt_out[1]~12_combout\,
	datac => \inst25|inst31|cnt_out[0]~14_combout\,
	datad => \inst17|seg_out[4]~43_combout\,
	combout => \inst25|inst|segmento_out[5]~48_combout\);

-- Location: LCCOMB_X24_Y15_N4
\inst25|inst|segmento_out[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[5]~47_combout\ = (\inst17|seg_out[4]~163_combout\ & ((\inst25|inst31|mil_out[1]~13_combout\ & (\inst25|inst31|mil_out[0]~15_combout\ & !\inst25|inst31|mil_out[2]~14_combout\)) # (!\inst25|inst31|mil_out[1]~13_combout\ & 
-- ((\inst25|inst31|mil_out[0]~15_combout\) # (!\inst25|inst31|mil_out[2]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~163_combout\,
	datab => \inst25|inst31|mil_out[1]~13_combout\,
	datac => \inst25|inst31|mil_out[0]~15_combout\,
	datad => \inst25|inst31|mil_out[2]~14_combout\,
	combout => \inst25|inst|segmento_out[5]~47_combout\);

-- Location: LCCOMB_X23_Y9_N4
\inst25|inst|segmento_out[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst25|inst|segmento_out[5]~50_combout\ = (\inst25|inst|segmento_out[5]~49_combout\) # ((\inst25|inst|segmento_out[5]~46_combout\) # ((\inst25|inst|segmento_out[5]~48_combout\) # (\inst25|inst|segmento_out[5]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst|segmento_out[5]~49_combout\,
	datab => \inst25|inst|segmento_out[5]~46_combout\,
	datac => \inst25|inst|segmento_out[5]~48_combout\,
	datad => \inst25|inst|segmento_out[5]~47_combout\,
	combout => \inst25|inst|segmento_out[5]~50_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst17|seg_out[1]~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[1]~134_combout\ = (\inst17|seg_out[1]~133_combout\) # (((\inst15|_~0_combout\ & \inst25|inst|segmento_out[5]~50_combout\)) # (!\inst17|dig_out[3]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~0_combout\,
	datab => \inst17|seg_out[1]~133_combout\,
	datac => \inst17|dig_out[3]~22_combout\,
	datad => \inst25|inst|segmento_out[5]~50_combout\,
	combout => \inst17|seg_out[1]~134_combout\);

-- Location: LCCOMB_X29_Y11_N22
\inst30|inst|segmento_out[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[5]~47_combout\ = (\inst30|inst31|mil_out[2]~14_combout\ & (!\inst30|inst31|mil_out[1]~13_combout\ & \inst30|inst31|mil_out[0]~15_combout\)) # (!\inst30|inst31|mil_out[2]~14_combout\ & ((\inst30|inst31|mil_out[0]~15_combout\) # 
-- (!\inst30|inst31|mil_out[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst31|mil_out[2]~14_combout\,
	datac => \inst30|inst31|mil_out[1]~13_combout\,
	datad => \inst30|inst31|mil_out[0]~15_combout\,
	combout => \inst30|inst|segmento_out[5]~47_combout\);

-- Location: LCCOMB_X26_Y12_N4
\inst30|inst|segmento_out[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[5]~45_combout\ = (\inst17|seg_out[4]~50_combout\ & ((\inst30|inst31|cnt_out[2]~14_combout\ & (\inst30|inst31|cnt_out[0]~15_combout\ & !\inst30|inst31|cnt_out[1]~13_combout\)) # (!\inst30|inst31|cnt_out[2]~14_combout\ & 
-- ((\inst30|inst31|cnt_out[0]~15_combout\) # (!\inst30|inst31|cnt_out[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|cnt_out[2]~14_combout\,
	datab => \inst30|inst31|cnt_out[0]~15_combout\,
	datac => \inst30|inst31|cnt_out[1]~13_combout\,
	datad => \inst17|seg_out[4]~50_combout\,
	combout => \inst30|inst|segmento_out[5]~45_combout\);

-- Location: LCCOMB_X29_Y11_N20
\inst30|inst|segmento_out[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[5]~46_combout\ = (\inst17|seg_out[4]~51_combout\ & ((\inst30|inst31|dzn_out[2]~13_combout\ & (!\inst30|inst31|dzn_out[1]~12_combout\ & \inst30|inst31|dzn_out[0]~14_combout\)) # (!\inst30|inst31|dzn_out[2]~13_combout\ & 
-- ((\inst30|inst31|dzn_out[0]~14_combout\) # (!\inst30|inst31|dzn_out[1]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|dzn_out[2]~13_combout\,
	datab => \inst30|inst31|dzn_out[1]~12_combout\,
	datac => \inst30|inst31|dzn_out[0]~14_combout\,
	datad => \inst17|seg_out[4]~51_combout\,
	combout => \inst30|inst|segmento_out[5]~46_combout\);

-- Location: LCCOMB_X26_Y11_N30
\inst30|inst|segmento_out[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[5]~48_combout\ = (\inst30|inst|segmento_out[5]~45_combout\) # ((\inst30|inst|segmento_out[5]~46_combout\) # ((\inst30|inst|segmento_out[5]~47_combout\ & \inst17|seg_out[4]~165_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|segmento_out[5]~47_combout\,
	datab => \inst17|seg_out[4]~165_combout\,
	datac => \inst30|inst|segmento_out[5]~45_combout\,
	datad => \inst30|inst|segmento_out[5]~46_combout\,
	combout => \inst30|inst|segmento_out[5]~48_combout\);

-- Location: LCCOMB_X25_Y8_N16
\inst30|inst|segmento_out[5]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[5]~49_combout\ = (\inst30|inst31|und_out[2]~13_combout\ & (!\inst30|inst31|und_out[1]~12_combout\ & \inst30|inst31|und_out[0]~14_combout\)) # (!\inst30|inst31|und_out[2]~13_combout\ & ((\inst30|inst31|und_out[0]~14_combout\) # 
-- (!\inst30|inst31|und_out[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|und_out[2]~13_combout\,
	datac => \inst30|inst31|und_out[1]~12_combout\,
	datad => \inst30|inst31|und_out[0]~14_combout\,
	combout => \inst30|inst|segmento_out[5]~49_combout\);

-- Location: LCCOMB_X25_Y8_N26
\inst30|inst|segmento_out[5]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst30|inst|segmento_out[5]~50_combout\ = (\inst30|inst|segmento_out[5]~48_combout\) # (((\inst17|seg_out[4]~49_combout\ & \inst30|inst|segmento_out[5]~49_combout\)) # (!\inst30|inst|segmento_out[0]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst|segmento_out[5]~48_combout\,
	datab => \inst30|inst|segmento_out[0]~34_combout\,
	datac => \inst17|seg_out[4]~49_combout\,
	datad => \inst30|inst|segmento_out[5]~49_combout\,
	combout => \inst30|inst|segmento_out[5]~50_combout\);

-- Location: LCCOMB_X16_Y10_N16
\inst32|inst|segmento_out[5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[5]~48_combout\ = (\inst17|seg_out[4]~167_combout\ & ((\inst32|inst31|dzn_out[2]~14_combout\ & (\inst32|inst31|dzn_out[0]~15_combout\ & !\inst32|inst31|dzn_out[1]~13_combout\)) # (!\inst32|inst31|dzn_out[2]~14_combout\ & 
-- ((\inst32|inst31|dzn_out[0]~15_combout\) # (!\inst32|inst31|dzn_out[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|dzn_out[2]~14_combout\,
	datab => \inst32|inst31|dzn_out[0]~15_combout\,
	datac => \inst17|seg_out[4]~167_combout\,
	datad => \inst32|inst31|dzn_out[1]~13_combout\,
	combout => \inst32|inst|segmento_out[5]~48_combout\);

-- Location: LCCOMB_X14_Y11_N12
\inst32|inst|segmento_out[5]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[5]~46_combout\ = (\inst17|seg_out[4]~53_combout\ & ((\inst32|inst31|mil_out[1]~12_combout\ & (\inst32|inst31|mil_out[0]~14_combout\ & !\inst32|inst31|mil_out[2]~13_combout\)) # (!\inst32|inst31|mil_out[1]~12_combout\ & 
-- ((\inst32|inst31|mil_out[0]~14_combout\) # (!\inst32|inst31|mil_out[2]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|mil_out[1]~12_combout\,
	datab => \inst17|seg_out[4]~53_combout\,
	datac => \inst32|inst31|mil_out[0]~14_combout\,
	datad => \inst32|inst31|mil_out[2]~13_combout\,
	combout => \inst32|inst|segmento_out[5]~46_combout\);

-- Location: LCCOMB_X17_Y10_N26
\inst32|inst|segmento_out[5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[5]~47_combout\ = (\inst17|seg_out[4]~54_combout\ & ((\inst32|inst31|cnt_out[0]~14_combout\ & ((!\inst32|inst31|cnt_out[1]~12_combout\) # (!\inst32|inst31|cnt_out[2]~13_combout\))) # (!\inst32|inst31|cnt_out[0]~14_combout\ & 
-- (!\inst32|inst31|cnt_out[2]~13_combout\ & !\inst32|inst31|cnt_out[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|cnt_out[0]~14_combout\,
	datab => \inst32|inst31|cnt_out[2]~13_combout\,
	datac => \inst17|seg_out[4]~54_combout\,
	datad => \inst32|inst31|cnt_out[1]~12_combout\,
	combout => \inst32|inst|segmento_out[5]~47_combout\);

-- Location: LCCOMB_X16_Y10_N22
\inst32|inst|segmento_out[5]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[5]~49_combout\ = (\inst32|inst|segmento_out[5]~48_combout\) # ((\inst32|inst|segmento_out[5]~46_combout\) # (\inst32|inst|segmento_out[5]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|inst|segmento_out[5]~48_combout\,
	datac => \inst32|inst|segmento_out[5]~46_combout\,
	datad => \inst32|inst|segmento_out[5]~47_combout\,
	combout => \inst32|inst|segmento_out[5]~49_combout\);

-- Location: LCCOMB_X19_Y9_N24
\inst32|inst|segmento_out[5]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|inst|segmento_out[5]~45_combout\ = (\inst17|seg_out[4]~166_combout\ & ((\inst32|inst31|und_out[2]~14_combout\ & (!\inst32|inst31|und_out[1]~13_combout\ & \inst32|inst31|und_out[0]~15_combout\)) # (!\inst32|inst31|und_out[2]~14_combout\ & 
-- ((\inst32|inst31|und_out[0]~15_combout\) # (!\inst32|inst31|und_out[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~166_combout\,
	datab => \inst32|inst31|und_out[2]~14_combout\,
	datac => \inst32|inst31|und_out[1]~13_combout\,
	datad => \inst32|inst31|und_out[0]~15_combout\,
	combout => \inst32|inst|segmento_out[5]~45_combout\);

-- Location: LCCOMB_X24_Y13_N8
\inst17|seg_out[1]~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[1]~135_combout\ = (\inst15|_~2_combout\ & ((\inst32|inst|segmento_out[5]~49_combout\) # ((\inst32|inst|segmento_out[5]~45_combout\) # (!\inst32|inst|segmento_out[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|_~2_combout\,
	datab => \inst32|inst|segmento_out[5]~49_combout\,
	datac => \inst32|inst|segmento_out[0]~34_combout\,
	datad => \inst32|inst|segmento_out[5]~45_combout\,
	combout => \inst17|seg_out[1]~135_combout\);

-- Location: LCCOMB_X24_Y13_N22
\inst17|seg_out[1]~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[1]~136_combout\ = (\inst17|seg_out[1]~134_combout\) # ((\inst17|seg_out[1]~135_combout\) # ((\inst30|inst|segmento_out[5]~50_combout\ & \inst15|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[1]~134_combout\,
	datab => \inst30|inst|segmento_out[5]~50_combout\,
	datac => \inst17|seg_out[1]~135_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst17|seg_out[1]~136_combout\);

-- Location: LCCOMB_X17_Y10_N20
\inst17|seg_out[0]~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~160_combout\ = (\inst32|inst31|cnt_out[1]~12_combout\ & (!\inst32|inst31|cnt_out[2]~13_combout\)) # (!\inst32|inst31|cnt_out[1]~12_combout\ & (\inst32|inst31|cnt_out[2]~13_combout\ & \inst32|inst31|cnt_out[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|cnt_out[1]~12_combout\,
	datab => \inst32|inst31|cnt_out[2]~13_combout\,
	datac => \inst32|inst31|cnt_out[0]~14_combout\,
	combout => \inst17|seg_out[0]~160_combout\);

-- Location: LCCOMB_X17_Y10_N14
\inst17|seg_out[0]~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~161_combout\ = (\inst32|inst31|cnt_out[3]~15_combout\ & (\inst15|_~2_combout\ & (!\inst32|inst46|inst5|alterna\(1) & \inst17|seg_out[0]~160_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|cnt_out[3]~15_combout\,
	datab => \inst15|_~2_combout\,
	datac => \inst32|inst46|inst5|alterna\(1),
	datad => \inst17|seg_out[0]~160_combout\,
	combout => \inst17|seg_out[0]~161_combout\);

-- Location: LCCOMB_X18_Y10_N18
\inst17|seg_out[0]~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~153_combout\ = (\inst17|seg_out[4]~62_combout\ & ((\inst32|inst31|und_out[2]~14_combout\ & (!\inst32|inst31|und_out[1]~13_combout\ & \inst32|inst31|und_out[0]~15_combout\)) # (!\inst32|inst31|und_out[2]~14_combout\ & 
-- (\inst32|inst31|und_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|und_out[2]~14_combout\,
	datab => \inst17|seg_out[4]~62_combout\,
	datac => \inst32|inst31|und_out[1]~13_combout\,
	datad => \inst32|inst31|und_out[0]~15_combout\,
	combout => \inst17|seg_out[0]~153_combout\);

-- Location: LCCOMB_X25_Y8_N20
\inst17|seg_out[0]~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~154_combout\ = (\inst17|seg_out[4]~49_combout\ & ((\inst30|inst31|und_out[2]~13_combout\ & (!\inst30|inst31|und_out[1]~12_combout\ & \inst30|inst31|und_out[0]~14_combout\)) # (!\inst30|inst31|und_out[2]~13_combout\ & 
-- (\inst30|inst31|und_out[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|und_out[2]~13_combout\,
	datab => \inst17|seg_out[4]~49_combout\,
	datac => \inst30|inst31|und_out[1]~12_combout\,
	datad => \inst30|inst31|und_out[0]~14_combout\,
	combout => \inst17|seg_out[0]~154_combout\);

-- Location: LCCOMB_X26_Y12_N22
\inst17|seg_out[0]~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~155_combout\ = (\inst17|seg_out[4]~50_combout\ & ((\inst30|inst31|cnt_out[2]~14_combout\ & (\inst30|inst31|cnt_out[0]~15_combout\ & !\inst30|inst31|cnt_out[1]~13_combout\)) # (!\inst30|inst31|cnt_out[2]~14_combout\ & 
-- ((\inst30|inst31|cnt_out[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|cnt_out[2]~14_combout\,
	datab => \inst30|inst31|cnt_out[0]~15_combout\,
	datac => \inst30|inst31|cnt_out[1]~13_combout\,
	datad => \inst17|seg_out[4]~50_combout\,
	combout => \inst17|seg_out[0]~155_combout\);

-- Location: LCCOMB_X24_Y8_N26
\inst17|seg_out[0]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~157_combout\ = (\inst30|inst31|dzn_out[1]~12_combout\ & ((!\inst30|inst31|dzn_out[2]~13_combout\))) # (!\inst30|inst31|dzn_out[1]~12_combout\ & (\inst30|inst31|dzn_out[0]~14_combout\ & \inst30|inst31|dzn_out[2]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst30|inst31|dzn_out[1]~12_combout\,
	datac => \inst30|inst31|dzn_out[0]~14_combout\,
	datad => \inst30|inst31|dzn_out[2]~13_combout\,
	combout => \inst17|seg_out[0]~157_combout\);

-- Location: LCCOMB_X28_Y11_N30
\inst17|seg_out[0]~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~156_combout\ = (\inst17|seg_out[4]~165_combout\ & ((\inst30|inst31|mil_out[1]~13_combout\ & (!\inst30|inst31|mil_out[2]~14_combout\)) # (!\inst30|inst31|mil_out[1]~13_combout\ & (\inst30|inst31|mil_out[2]~14_combout\ & 
-- \inst30|inst31|mil_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30|inst31|mil_out[1]~13_combout\,
	datab => \inst30|inst31|mil_out[2]~14_combout\,
	datac => \inst17|seg_out[4]~165_combout\,
	datad => \inst30|inst31|mil_out[0]~15_combout\,
	combout => \inst17|seg_out[0]~156_combout\);

-- Location: LCCOMB_X24_Y8_N8
\inst17|seg_out[0]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~158_combout\ = (\inst17|seg_out[0]~155_combout\) # ((\inst17|seg_out[0]~156_combout\) # ((\inst17|seg_out[4]~51_combout\ & \inst17|seg_out[0]~157_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[0]~155_combout\,
	datab => \inst17|seg_out[4]~51_combout\,
	datac => \inst17|seg_out[0]~157_combout\,
	datad => \inst17|seg_out[0]~156_combout\,
	combout => \inst17|seg_out[0]~158_combout\);

-- Location: LCCOMB_X24_Y8_N22
\inst17|seg_out[0]~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~159_combout\ = (\inst15|_~1_combout\ & ((\inst17|seg_out[0]~154_combout\) # ((\inst17|seg_out[0]~158_combout\) # (!\inst30|inst|segmento_out[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[0]~154_combout\,
	datab => \inst17|seg_out[0]~158_combout\,
	datac => \inst30|inst|segmento_out[0]~34_combout\,
	datad => \inst15|_~1_combout\,
	combout => \inst17|seg_out[0]~159_combout\);

-- Location: LCCOMB_X16_Y10_N0
\inst17|seg_out[0]~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~149_combout\ = (\inst32|inst31|dzn_out[3]~12_combout\ & ((\inst32|inst31|dzn_out[2]~14_combout\ & (!\inst32|inst31|dzn_out[1]~13_combout\ & \inst32|inst31|dzn_out[0]~15_combout\)) # (!\inst32|inst31|dzn_out[2]~14_combout\ & 
-- (\inst32|inst31|dzn_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|dzn_out[2]~14_combout\,
	datab => \inst32|inst31|dzn_out[1]~13_combout\,
	datac => \inst32|inst31|dzn_out[3]~12_combout\,
	datad => \inst32|inst31|dzn_out[0]~15_combout\,
	combout => \inst17|seg_out[0]~149_combout\);

-- Location: LCCOMB_X14_Y11_N2
\inst17|seg_out[0]~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~150_combout\ = (\inst17|seg_out[4]~53_combout\ & ((\inst32|inst31|mil_out[1]~12_combout\ & ((!\inst32|inst31|mil_out[2]~13_combout\))) # (!\inst32|inst31|mil_out[1]~12_combout\ & (\inst32|inst31|mil_out[0]~14_combout\ & 
-- \inst32|inst31|mil_out[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst31|mil_out[1]~12_combout\,
	datab => \inst17|seg_out[4]~53_combout\,
	datac => \inst32|inst31|mil_out[0]~14_combout\,
	datad => \inst32|inst31|mil_out[2]~13_combout\,
	combout => \inst17|seg_out[0]~150_combout\);

-- Location: LCCOMB_X16_Y10_N26
\inst17|seg_out[0]~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~151_combout\ = (\inst15|_~2_combout\ & ((\inst17|seg_out[0]~150_combout\) # ((!\inst32|inst46|inst5|alterna\(2) & \inst17|seg_out[0]~149_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|inst46|inst5|alterna\(2),
	datab => \inst17|seg_out[0]~149_combout\,
	datac => \inst17|seg_out[0]~150_combout\,
	datad => \inst15|_~2_combout\,
	combout => \inst17|seg_out[0]~151_combout\);

-- Location: LCCOMB_X23_Y9_N2
\inst17|seg_out[0]~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~140_combout\ = (\inst25|inst31|dzn_out[1]~13_combout\ & ((!\inst25|inst31|dzn_out[2]~14_combout\))) # (!\inst25|inst31|dzn_out[1]~13_combout\ & (\inst25|inst31|dzn_out[0]~15_combout\ & \inst25|inst31|dzn_out[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst25|inst31|dzn_out[0]~15_combout\,
	datac => \inst25|inst31|dzn_out[1]~13_combout\,
	datad => \inst25|inst31|dzn_out[2]~14_combout\,
	combout => \inst17|seg_out[0]~140_combout\);

-- Location: LCCOMB_X24_Y15_N10
\inst17|seg_out[0]~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~139_combout\ = (\inst17|seg_out[4]~163_combout\ & ((\inst25|inst31|mil_out[1]~13_combout\ & ((!\inst25|inst31|mil_out[2]~14_combout\))) # (!\inst25|inst31|mil_out[1]~13_combout\ & (\inst25|inst31|mil_out[0]~15_combout\ & 
-- \inst25|inst31|mil_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~163_combout\,
	datab => \inst25|inst31|mil_out[1]~13_combout\,
	datac => \inst25|inst31|mil_out[0]~15_combout\,
	datad => \inst25|inst31|mil_out[2]~14_combout\,
	combout => \inst17|seg_out[0]~139_combout\);

-- Location: LCCOMB_X22_Y9_N10
\inst17|seg_out[0]~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~138_combout\ = (\inst17|seg_out[4]~43_combout\ & ((\inst25|inst31|cnt_out[2]~13_combout\ & (!\inst25|inst31|cnt_out[1]~12_combout\ & \inst25|inst31|cnt_out[0]~14_combout\)) # (!\inst25|inst31|cnt_out[2]~13_combout\ & 
-- (\inst25|inst31|cnt_out[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|cnt_out[2]~13_combout\,
	datab => \inst25|inst31|cnt_out[1]~12_combout\,
	datac => \inst25|inst31|cnt_out[0]~14_combout\,
	datad => \inst17|seg_out[4]~43_combout\,
	combout => \inst17|seg_out[0]~138_combout\);

-- Location: LCCOMB_X23_Y9_N12
\inst17|seg_out[0]~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~141_combout\ = (\inst17|seg_out[0]~139_combout\) # ((\inst17|seg_out[0]~138_combout\) # ((\inst17|seg_out[4]~164_combout\ & \inst17|seg_out[0]~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~164_combout\,
	datab => \inst17|seg_out[0]~140_combout\,
	datac => \inst17|seg_out[0]~139_combout\,
	datad => \inst17|seg_out[0]~138_combout\,
	combout => \inst17|seg_out[0]~141_combout\);

-- Location: LCCOMB_X24_Y9_N28
\inst17|seg_out[0]~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~137_combout\ = (\inst17|seg_out[4]~42_combout\ & ((\inst25|inst31|und_out[2]~14_combout\ & (!\inst25|inst31|und_out[1]~13_combout\ & \inst25|inst31|und_out[0]~15_combout\)) # (!\inst25|inst31|und_out[2]~14_combout\ & 
-- (\inst25|inst31|und_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|inst31|und_out[2]~14_combout\,
	datab => \inst25|inst31|und_out[1]~13_combout\,
	datac => \inst17|seg_out[4]~42_combout\,
	datad => \inst25|inst31|und_out[0]~15_combout\,
	combout => \inst17|seg_out[0]~137_combout\);

-- Location: LCCOMB_X23_Y9_N26
\inst17|seg_out[0]~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~142_combout\ = (\inst15|_~0_combout\ & ((\inst17|seg_out[0]~141_combout\) # ((\inst17|seg_out[0]~137_combout\) # (!\inst25|inst|segmento_out[0]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[0]~141_combout\,
	datab => \inst15|_~0_combout\,
	datac => \inst25|inst|segmento_out[0]~34_combout\,
	datad => \inst17|seg_out[0]~137_combout\,
	combout => \inst17|seg_out[0]~142_combout\);

-- Location: LCCOMB_X23_Y15_N4
\inst17|seg_out[0]~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~144_combout\ = (\inst17|seg_out[4]~46_combout\ & ((\inst13|inst31|cnt_out[1]~12_combout\ & ((!\inst13|inst31|cnt_out[2]~13_combout\))) # (!\inst13|inst31|cnt_out[1]~12_combout\ & (\inst13|inst31|cnt_out[0]~14_combout\ & 
-- \inst13|inst31|cnt_out[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|cnt_out[1]~12_combout\,
	datab => \inst17|seg_out[4]~46_combout\,
	datac => \inst13|inst31|cnt_out[0]~14_combout\,
	datad => \inst13|inst31|cnt_out[2]~13_combout\,
	combout => \inst17|seg_out[0]~144_combout\);

-- Location: LCCOMB_X16_Y13_N18
\inst17|seg_out[0]~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~145_combout\ = (\inst17|seg_out[4]~47_combout\ & ((\inst13|inst31|mil_out[1]~12_combout\ & ((!\inst13|inst31|mil_out[2]~13_combout\))) # (!\inst13|inst31|mil_out[1]~12_combout\ & (\inst13|inst31|mil_out[0]~14_combout\ & 
-- \inst13|inst31|mil_out[2]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~47_combout\,
	datab => \inst13|inst31|mil_out[0]~14_combout\,
	datac => \inst13|inst31|mil_out[1]~12_combout\,
	datad => \inst13|inst31|mil_out[2]~13_combout\,
	combout => \inst17|seg_out[0]~145_combout\);

-- Location: LCCOMB_X17_Y14_N2
\inst17|seg_out[0]~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~146_combout\ = (\inst13|inst31|dzn_out[1]~12_combout\ & (!\inst13|inst31|dzn_out[2]~13_combout\)) # (!\inst13|inst31|dzn_out[1]~12_combout\ & (\inst13|inst31|dzn_out[2]~13_combout\ & \inst13|inst31|dzn_out[0]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|dzn_out[1]~12_combout\,
	datac => \inst13|inst31|dzn_out[2]~13_combout\,
	datad => \inst13|inst31|dzn_out[0]~14_combout\,
	combout => \inst17|seg_out[0]~146_combout\);

-- Location: LCCOMB_X17_Y14_N12
\inst17|seg_out[0]~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~147_combout\ = (\inst17|seg_out[0]~144_combout\) # ((\inst17|seg_out[0]~145_combout\) # ((\inst17|seg_out[4]~45_combout\ & \inst17|seg_out[0]~146_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[0]~144_combout\,
	datab => \inst17|seg_out[0]~145_combout\,
	datac => \inst17|seg_out[4]~45_combout\,
	datad => \inst17|seg_out[0]~146_combout\,
	combout => \inst17|seg_out[0]~147_combout\);

-- Location: LCCOMB_X18_Y12_N16
\inst17|seg_out[0]~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~143_combout\ = (\inst17|seg_out[4]~64_combout\ & ((\inst13|inst31|und_out[2]~14_combout\ & (\inst13|inst31|und_out[0]~15_combout\ & !\inst13|inst31|und_out[1]~13_combout\)) # (!\inst13|inst31|und_out[2]~14_combout\ & 
-- ((\inst13|inst31|und_out[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst31|und_out[2]~14_combout\,
	datab => \inst17|seg_out[4]~64_combout\,
	datac => \inst13|inst31|und_out[0]~15_combout\,
	datad => \inst13|inst31|und_out[1]~13_combout\,
	combout => \inst17|seg_out[0]~143_combout\);

-- Location: LCCOMB_X17_Y14_N22
\inst17|seg_out[0]~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~148_combout\ = (\inst1|crono_q\(1) & ((\inst17|seg_out[0]~147_combout\) # ((\inst17|seg_out[0]~143_combout\) # (!\inst13|inst|segmento_out[0]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[0]~147_combout\,
	datab => \inst13|inst|segmento_out[0]~30_combout\,
	datac => \inst1|crono_q\(1),
	datad => \inst17|seg_out[0]~143_combout\,
	combout => \inst17|seg_out[0]~148_combout\);

-- Location: LCCOMB_X18_Y10_N28
\inst17|seg_out[0]~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~152_combout\ = ((\inst17|seg_out[0]~151_combout\) # ((\inst17|seg_out[0]~142_combout\) # (\inst17|seg_out[0]~148_combout\))) # (!\inst17|seg_out[4]~66_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[4]~66_combout\,
	datab => \inst17|seg_out[0]~151_combout\,
	datac => \inst17|seg_out[0]~142_combout\,
	datad => \inst17|seg_out[0]~148_combout\,
	combout => \inst17|seg_out[0]~152_combout\);

-- Location: LCCOMB_X18_Y10_N0
\inst17|seg_out[0]~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|seg_out[0]~162_combout\ = (\inst17|seg_out[0]~161_combout\) # ((\inst17|seg_out[0]~153_combout\) # ((\inst17|seg_out[0]~159_combout\) # (\inst17|seg_out[0]~152_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seg_out[0]~161_combout\,
	datab => \inst17|seg_out[0]~153_combout\,
	datac => \inst17|seg_out[0]~159_combout\,
	datad => \inst17|seg_out[0]~152_combout\,
	combout => \inst17|seg_out[0]~162_combout\);

ww_buzzer <= \buzzer~output_o\;

ww_DIG(1) <= \DIG[1]~output_o\;

ww_DIG(2) <= \DIG[2]~output_o\;

ww_DIG(3) <= \DIG[3]~output_o\;

ww_DIG(4) <= \DIG[4]~output_o\;

ww_led(4) <= \led[4]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_SEG(0) <= \SEG[0]~output_o\;

ww_SEG(1) <= \SEG[1]~output_o\;

ww_SEG(2) <= \SEG[2]~output_o\;

ww_SEG(3) <= \SEG[3]~output_o\;

ww_SEG(4) <= \SEG[4]~output_o\;

ww_SEG(5) <= \SEG[5]~output_o\;

ww_SEG(6) <= \SEG[6]~output_o\;
END structure;


