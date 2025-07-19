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

-- DATE "07/17/2025 09:55:24"

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
	DIG : OUT std_logic_vector(1 TO 4);
	clock : IN std_logic;
	key : IN std_logic_vector(4 DOWNTO 1);
	led : OUT std_logic_vector(4 DOWNTO 1);
	SEG : OUT std_logic_vector(0 TO 6)
	);
END Projeto_02;

-- Design Ports Information
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
-- key[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_DIG : std_logic_vector(1 TO 4);
SIGNAL ww_clock : std_logic;
SIGNAL ww_key : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_led : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_SEG : std_logic_vector(0 TO 6);
SIGNAL \inst5|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst46|inst|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst6|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \inst46|inst|aux_tff~1_combout\ : std_logic;
SIGNAL \inst46|inst|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst46|inst|_~5_combout\ : std_logic;
SIGNAL \inst46|inst|q[1]~14_combout\ : std_logic;
SIGNAL \inst46|inst|q[1]~15\ : std_logic;
SIGNAL \inst46|inst|q[2]~16_combout\ : std_logic;
SIGNAL \inst46|inst|q[2]~17\ : std_logic;
SIGNAL \inst46|inst|q[3]~18_combout\ : std_logic;
SIGNAL \inst46|inst|q[3]~19\ : std_logic;
SIGNAL \inst46|inst|q[4]~20_combout\ : std_logic;
SIGNAL \inst46|inst|q[4]~21\ : std_logic;
SIGNAL \inst46|inst|q[5]~22_combout\ : std_logic;
SIGNAL \inst46|inst|q[5]~23\ : std_logic;
SIGNAL \inst46|inst|q[6]~24_combout\ : std_logic;
SIGNAL \inst46|inst|q[6]~25\ : std_logic;
SIGNAL \inst46|inst|q[7]~26_combout\ : std_logic;
SIGNAL \inst46|inst|q[7]~27\ : std_logic;
SIGNAL \inst46|inst|q[8]~28_combout\ : std_logic;
SIGNAL \inst46|inst|q[8]~29\ : std_logic;
SIGNAL \inst46|inst|q[9]~30_combout\ : std_logic;
SIGNAL \inst46|inst|q[9]~31\ : std_logic;
SIGNAL \inst46|inst|q[10]~32_combout\ : std_logic;
SIGNAL \inst46|inst|q[10]~33\ : std_logic;
SIGNAL \inst46|inst|q[11]~34_combout\ : std_logic;
SIGNAL \inst46|inst|_~2_combout\ : std_logic;
SIGNAL \inst46|inst|_~0_combout\ : std_logic;
SIGNAL \inst46|inst|_~1_combout\ : std_logic;
SIGNAL \inst46|inst|q[11]~35\ : std_logic;
SIGNAL \inst46|inst|q[12]~36_combout\ : std_logic;
SIGNAL \inst46|inst|q[12]~37\ : std_logic;
SIGNAL \inst46|inst|q[13]~38_combout\ : std_logic;
SIGNAL \inst46|inst|q[13]~39\ : std_logic;
SIGNAL \inst46|inst|q[14]~40_combout\ : std_logic;
SIGNAL \inst46|inst|_~3_combout\ : std_logic;
SIGNAL \inst46|inst|_~4_combout\ : std_logic;
SIGNAL \inst46|inst|aux_tff~q\ : std_logic;
SIGNAL \inst46|inst|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst46|inst1|q[0]~1_combout\ : std_logic;
SIGNAL \inst46|inst1|_~0_combout\ : std_logic;
SIGNAL \inst6|aux_tff~1_combout\ : std_logic;
SIGNAL \inst6|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst6|aux_tff~q\ : std_logic;
SIGNAL \inst6|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \inst20|inst2|ff1~feeder_combout\ : std_logic;
SIGNAL \inst20|inst2|ff1~q\ : std_logic;
SIGNAL \inst20|inst2|ff2~q\ : std_logic;
SIGNAL \inst20|inst2|ff3~0_combout\ : std_logic;
SIGNAL \inst20|inst2|ff3~feeder_combout\ : std_logic;
SIGNAL \inst20|inst2|ff3~q\ : std_logic;
SIGNAL \inst49|btn2_reg~feeder_combout\ : std_logic;
SIGNAL \inst49|btn2_reg~q\ : std_logic;
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \inst20|inst3|ff1~feeder_combout\ : std_logic;
SIGNAL \inst20|inst3|ff1~q\ : std_logic;
SIGNAL \inst20|inst3|ff2~q\ : std_logic;
SIGNAL \inst20|inst3|ff3~0_combout\ : std_logic;
SIGNAL \inst20|inst3|ff3~feeder_combout\ : std_logic;
SIGNAL \inst20|inst3|ff3~q\ : std_logic;
SIGNAL \inst49|btn1_reg~q\ : std_logic;
SIGNAL \inst49|up_pulse~combout\ : std_logic;
SIGNAL \inst49|q[0]~0_combout\ : std_logic;
SIGNAL \inst49|q[1]~2_combout\ : std_logic;
SIGNAL \inst49|q[1]~3_combout\ : std_logic;
SIGNAL \inst41|comp_flag_q~0_combout\ : std_logic;
SIGNAL \inst41|comp_flag_q~q\ : std_logic;
SIGNAL \inst5|aux_tff~1_combout\ : std_logic;
SIGNAL \inst5|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst5|aux_tff~q\ : std_logic;
SIGNAL \inst5|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst20|inst|ff1~feeder_combout\ : std_logic;
SIGNAL \inst20|inst|ff1~q\ : std_logic;
SIGNAL \inst20|inst|ff2~q\ : std_logic;
SIGNAL \inst20|inst|ff3~0_combout\ : std_logic;
SIGNAL \inst20|inst|ff3~feeder_combout\ : std_logic;
SIGNAL \inst20|inst|ff3~q\ : std_logic;
SIGNAL \inst39|btn2_reg~q\ : std_logic;
SIGNAL \inst50|_~0_combout\ : std_logic;
SIGNAL \inst50|resetcont_q~q\ : std_logic;
SIGNAL \inst43|reset_reg~q\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \inst20|inst1|ff1~q\ : std_logic;
SIGNAL \inst20|inst1|ff2~q\ : std_logic;
SIGNAL \inst20|inst1|ff3~0_combout\ : std_logic;
SIGNAL \inst20|inst1|ff3~feeder_combout\ : std_logic;
SIGNAL \inst20|inst1|ff3~q\ : std_logic;
SIGNAL \inst39|btn1_reg~q\ : std_logic;
SIGNAL \inst32|up_pulse~combout\ : std_logic;
SIGNAL \inst50|pausa_q~0_combout\ : std_logic;
SIGNAL \inst50|pausa_q~q\ : std_logic;
SIGNAL \inst43|pode_contar~combout\ : std_logic;
SIGNAL \inst43|unidade_q[0]~11_combout\ : std_logic;
SIGNAL \inst43|unidade_q[0]~10_combout\ : std_logic;
SIGNAL \inst43|unidade_q[3]~9_combout\ : std_logic;
SIGNAL \inst43|unidade_q[1]~8_combout\ : std_logic;
SIGNAL \inst43|op_1~1_combout\ : std_logic;
SIGNAL \inst43|unidade_q[2]~7_combout\ : std_logic;
SIGNAL \inst43|op_1~0_combout\ : std_logic;
SIGNAL \inst43|unidade_q[3]~6_combout\ : std_logic;
SIGNAL \inst43|_~0_combout\ : std_logic;
SIGNAL \inst43|reset_pulse~combout\ : std_logic;
SIGNAL \inst43|dezena_q[0]~4_combout\ : std_logic;
SIGNAL \inst43|dezena_q[3]~1_combout\ : std_logic;
SIGNAL \inst43|dezena_q[3]~2_combout\ : std_logic;
SIGNAL \inst43|dezena_q[3]~0_combout\ : std_logic;
SIGNAL \inst43|dezena_q[1]~6_combout\ : std_logic;
SIGNAL \inst43|op_2~1_combout\ : std_logic;
SIGNAL \inst43|dezena_q[2]~5_combout\ : std_logic;
SIGNAL \inst43|op_2~0_combout\ : std_logic;
SIGNAL \inst43|dezena_q[3]~3_combout\ : std_logic;
SIGNAL \inst43|_~1_combout\ : std_logic;
SIGNAL \inst43|_~5_combout\ : std_logic;
SIGNAL \inst43|centena_q[0]~6_combout\ : std_logic;
SIGNAL \inst43|_~2_combout\ : std_logic;
SIGNAL \inst43|centena_q[3]~4_combout\ : std_logic;
SIGNAL \inst43|centena_q[3]~9_combout\ : std_logic;
SIGNAL \inst43|centena_q[1]~8_combout\ : std_logic;
SIGNAL \inst43|op_3~1_combout\ : std_logic;
SIGNAL \inst43|centena_q[2]~7_combout\ : std_logic;
SIGNAL \inst43|op_3~0_combout\ : std_logic;
SIGNAL \inst43|centena_q[3]~5_combout\ : std_logic;
SIGNAL \inst32|_~3_combout\ : std_logic;
SIGNAL \inst39|_~0_combout\ : std_logic;
SIGNAL \inst32|_~4_combout\ : std_logic;
SIGNAL \inst39|q[1]~2_combout\ : std_logic;
SIGNAL \inst39|q[1]~3_combout\ : std_logic;
SIGNAL \inst37|aux_dig[3]~0_combout\ : std_logic;
SIGNAL \inst37|_~2_combout\ : std_logic;
SIGNAL \inst34|q[0]~4_combout\ : std_logic;
SIGNAL \inst34|q[0]~5_combout\ : std_logic;
SIGNAL \inst34|op_1~1_combout\ : std_logic;
SIGNAL \inst34|_~6_combout\ : std_logic;
SIGNAL \inst34|op_2~0_combout\ : std_logic;
SIGNAL \inst34|_~5_combout\ : std_logic;
SIGNAL \inst34|q[2]~3_combout\ : std_logic;
SIGNAL \inst34|_~2_combout\ : std_logic;
SIGNAL \inst34|_~7_combout\ : std_logic;
SIGNAL \inst34|q[1]~6_combout\ : std_logic;
SIGNAL \inst34|q[1]~7_combout\ : std_logic;
SIGNAL \inst34|_~4_combout\ : std_logic;
SIGNAL \inst34|_~8_combout\ : std_logic;
SIGNAL \inst34|_~3_combout\ : std_logic;
SIGNAL \inst34|op_1~0_combout\ : std_logic;
SIGNAL \inst34|q[3]~0_combout\ : std_logic;
SIGNAL \inst34|q[3]~1_combout\ : std_logic;
SIGNAL \inst34|q[3]~2_combout\ : std_logic;
SIGNAL \inst40|final_cont~9_combout\ : std_logic;
SIGNAL \inst43|_~3_combout\ : std_logic;
SIGNAL \inst43|milhar_q[0]~4_combout\ : std_logic;
SIGNAL \inst43|milhar_q[3]~7_combout\ : std_logic;
SIGNAL \inst43|op_4~1_combout\ : std_logic;
SIGNAL \inst43|milhar_q[2]~5_combout\ : std_logic;
SIGNAL \inst43|_~4_combout\ : std_logic;
SIGNAL \inst43|milhar_q[3]~2_combout\ : std_logic;
SIGNAL \inst43|milhar_q[1]~6_combout\ : std_logic;
SIGNAL \inst43|op_4~0_combout\ : std_logic;
SIGNAL \inst43|milhar_q[3]~3_combout\ : std_logic;
SIGNAL \inst35|_~4_combout\ : std_logic;
SIGNAL \inst35|q[0]~5_combout\ : std_logic;
SIGNAL \inst35|q[0]~6_combout\ : std_logic;
SIGNAL \inst35|op_1~2_combout\ : std_logic;
SIGNAL \inst35|_~7_combout\ : std_logic;
SIGNAL \inst35|_~8_combout\ : std_logic;
SIGNAL \inst35|q[1]~4_combout\ : std_logic;
SIGNAL \inst35|op_1~0_combout\ : std_logic;
SIGNAL \inst35|_~3_combout\ : std_logic;
SIGNAL \inst35|q[3]~0_combout\ : std_logic;
SIGNAL \inst35|q[3]~1_combout\ : std_logic;
SIGNAL \inst35|q[3]~2_combout\ : std_logic;
SIGNAL \inst40|final_cont~11_combout\ : std_logic;
SIGNAL \inst40|final_cont~12_combout\ : std_logic;
SIGNAL \inst40|final_cont~10_combout\ : std_logic;
SIGNAL \inst40|final_cont~13_combout\ : std_logic;
SIGNAL \inst37|aux_dig[1]~3_combout\ : std_logic;
SIGNAL \inst37|_~5_combout\ : std_logic;
SIGNAL \inst37|digsel_q[1]~feeder_combout\ : std_logic;
SIGNAL \inst32|_~11_combout\ : std_logic;
SIGNAL \inst32|op_1~0_combout\ : std_logic;
SIGNAL \inst32|_~5_combout\ : std_logic;
SIGNAL \inst32|q[3]~0_combout\ : std_logic;
SIGNAL \inst32|q[3]~1_combout\ : std_logic;
SIGNAL \inst32|q[3]~2_combout\ : std_logic;
SIGNAL \inst32|_~6_combout\ : std_logic;
SIGNAL \inst32|q[0]~5_combout\ : std_logic;
SIGNAL \inst32|q[0]~6_combout\ : std_logic;
SIGNAL \inst32|op_1~2_combout\ : std_logic;
SIGNAL \inst32|_~2_combout\ : std_logic;
SIGNAL \inst32|_~9_combout\ : std_logic;
SIGNAL \inst32|_~10_combout\ : std_logic;
SIGNAL \inst32|q[1]~4_combout\ : std_logic;
SIGNAL \inst32|op_1~1_combout\ : std_logic;
SIGNAL \inst32|op_2~0_combout\ : std_logic;
SIGNAL \inst32|_~7_combout\ : std_logic;
SIGNAL \inst32|_~8_combout\ : std_logic;
SIGNAL \inst32|q[2]~3_combout\ : std_logic;
SIGNAL \inst40|final_cont~4_combout\ : std_logic;
SIGNAL \inst40|final_cont~5_combout\ : std_logic;
SIGNAL \inst37|_~0_combout\ : std_logic;
SIGNAL \inst37|aux_dig[2]~2_combout\ : std_logic;
SIGNAL \inst37|_~4_combout\ : std_logic;
SIGNAL \inst33|_~8_combout\ : std_logic;
SIGNAL \inst33|op_1~0_combout\ : std_logic;
SIGNAL \inst33|_~3_combout\ : std_logic;
SIGNAL \inst33|q[3]~0_combout\ : std_logic;
SIGNAL \inst33|q[3]~1_combout\ : std_logic;
SIGNAL \inst33|q[3]~2_combout\ : std_logic;
SIGNAL \inst33|_~2_combout\ : std_logic;
SIGNAL \inst33|_~7_combout\ : std_logic;
SIGNAL \inst33|q[1]~6_combout\ : std_logic;
SIGNAL \inst33|q[1]~7_combout\ : std_logic;
SIGNAL \inst33|op_1~1_combout\ : std_logic;
SIGNAL \inst33|op_2~0_combout\ : std_logic;
SIGNAL \inst33|_~5_combout\ : std_logic;
SIGNAL \inst33|_~6_combout\ : std_logic;
SIGNAL \inst33|q[2]~3_combout\ : std_logic;
SIGNAL \inst33|_~4_combout\ : std_logic;
SIGNAL \inst33|q[0]~4_combout\ : std_logic;
SIGNAL \inst33|q[0]~5_combout\ : std_logic;
SIGNAL \inst40|final_cont~7_combout\ : std_logic;
SIGNAL \inst40|final_cont~6_combout\ : std_logic;
SIGNAL \inst40|final_cont~8_combout\ : std_logic;
SIGNAL \inst40|_~0_combout\ : std_logic;
SIGNAL \inst40|final_cont~14_combout\ : std_logic;
SIGNAL \inst49|q[1]~4_combout\ : std_logic;
SIGNAL \inst37|_~1_combout\ : std_logic;
SIGNAL \inst37|aux_dig[4]~1_combout\ : std_logic;
SIGNAL \inst37|_~3_combout\ : std_logic;
SIGNAL \inst35|_~9_combout\ : std_logic;
SIGNAL \inst35|op_1~1_combout\ : std_logic;
SIGNAL \inst35|_~6_combout\ : std_logic;
SIGNAL \inst35|op_2~0_combout\ : std_logic;
SIGNAL \inst35|_~5_combout\ : std_logic;
SIGNAL \inst35|q[2]~3_combout\ : std_logic;
SIGNAL \inst35|_~2_combout\ : std_logic;
SIGNAL \inst40|final_cont~2_combout\ : std_logic;
SIGNAL \inst40|final_cont~3_combout\ : std_logic;
SIGNAL \inst40|final_cont~15_combout\ : std_logic;
SIGNAL \inst49|reset_reg~q\ : std_logic;
SIGNAL \inst49|q[0]~1_combout\ : std_logic;
SIGNAL \inst39|q[0]~4_combout\ : std_logic;
SIGNAL \inst46|inst4|q[16]~54\ : std_logic;
SIGNAL \inst46|inst4|q[17]~55_combout\ : std_logic;
SIGNAL \inst46|inst4|_~0_combout\ : std_logic;
SIGNAL \inst46|inst4|_~2_combout\ : std_logic;
SIGNAL \inst46|inst4|_~3_combout\ : std_logic;
SIGNAL \inst46|inst4|_~1_combout\ : std_logic;
SIGNAL \inst46|inst4|_~4_combout\ : std_logic;
SIGNAL \inst46|inst4|_~8_combout\ : std_logic;
SIGNAL \inst46|inst4|q[17]~56\ : std_logic;
SIGNAL \inst46|inst4|q[18]~57_combout\ : std_logic;
SIGNAL \inst46|inst4|q[18]~58\ : std_logic;
SIGNAL \inst46|inst4|q[19]~59_combout\ : std_logic;
SIGNAL \inst46|inst4|q[19]~60\ : std_logic;
SIGNAL \inst46|inst4|q[20]~61_combout\ : std_logic;
SIGNAL \inst46|inst4|q[20]~62\ : std_logic;
SIGNAL \inst46|inst4|q[21]~63_combout\ : std_logic;
SIGNAL \inst46|inst4|q[21]~64\ : std_logic;
SIGNAL \inst46|inst4|q[22]~65_combout\ : std_logic;
SIGNAL \inst46|inst4|q[22]~66\ : std_logic;
SIGNAL \inst46|inst4|q[23]~67_combout\ : std_logic;
SIGNAL \inst46|inst4|_~6_combout\ : std_logic;
SIGNAL \inst46|inst4|_~7_combout\ : std_logic;
SIGNAL \inst46|inst4|q[1]~23_combout\ : std_logic;
SIGNAL \inst46|inst4|q[1]~24\ : std_logic;
SIGNAL \inst46|inst4|q[2]~25_combout\ : std_logic;
SIGNAL \inst46|inst4|q[2]~26\ : std_logic;
SIGNAL \inst46|inst4|q[3]~27_combout\ : std_logic;
SIGNAL \inst46|inst4|q[3]~28\ : std_logic;
SIGNAL \inst46|inst4|q[4]~29_combout\ : std_logic;
SIGNAL \inst46|inst4|q[4]~30\ : std_logic;
SIGNAL \inst46|inst4|q[5]~31_combout\ : std_logic;
SIGNAL \inst46|inst4|q[5]~32\ : std_logic;
SIGNAL \inst46|inst4|q[6]~33_combout\ : std_logic;
SIGNAL \inst46|inst4|q[6]~34\ : std_logic;
SIGNAL \inst46|inst4|q[7]~35_combout\ : std_logic;
SIGNAL \inst46|inst4|q[7]~36\ : std_logic;
SIGNAL \inst46|inst4|q[8]~37_combout\ : std_logic;
SIGNAL \inst46|inst4|q[8]~38\ : std_logic;
SIGNAL \inst46|inst4|q[9]~39_combout\ : std_logic;
SIGNAL \inst46|inst4|q[9]~40\ : std_logic;
SIGNAL \inst46|inst4|q[10]~41_combout\ : std_logic;
SIGNAL \inst46|inst4|q[10]~42\ : std_logic;
SIGNAL \inst46|inst4|q[11]~43_combout\ : std_logic;
SIGNAL \inst46|inst4|q[11]~44\ : std_logic;
SIGNAL \inst46|inst4|q[12]~45_combout\ : std_logic;
SIGNAL \inst46|inst4|q[12]~46\ : std_logic;
SIGNAL \inst46|inst4|q[13]~47_combout\ : std_logic;
SIGNAL \inst46|inst4|q[13]~48\ : std_logic;
SIGNAL \inst46|inst4|q[14]~49_combout\ : std_logic;
SIGNAL \inst46|inst4|q[14]~50\ : std_logic;
SIGNAL \inst46|inst4|q[15]~51_combout\ : std_logic;
SIGNAL \inst46|inst4|q[15]~52\ : std_logic;
SIGNAL \inst46|inst4|q[16]~53_combout\ : std_logic;
SIGNAL \inst46|inst4|_~5_combout\ : std_logic;
SIGNAL \inst46|inst4|aux_tff~1_combout\ : std_logic;
SIGNAL \inst46|inst4|aux_tff~q\ : std_logic;
SIGNAL \inst46|inst5|force_off[3]~1_combout\ : std_logic;
SIGNAL \inst46|inst6|_~1_combout\ : std_logic;
SIGNAL \inst46|inst6|_~3_combout\ : std_logic;
SIGNAL \inst46|inst6|_~2_combout\ : std_logic;
SIGNAL \inst46|inst6|_~0_combout\ : std_logic;
SIGNAL \inst46|inst6|_~4_combout\ : std_logic;
SIGNAL \inst46|inst6|q[18]~57\ : std_logic;
SIGNAL \inst46|inst6|q[19]~58_combout\ : std_logic;
SIGNAL \inst46|inst6|_~8_combout\ : std_logic;
SIGNAL \inst46|inst6|q[19]~59\ : std_logic;
SIGNAL \inst46|inst6|q[20]~60_combout\ : std_logic;
SIGNAL \inst46|inst6|q[20]~61\ : std_logic;
SIGNAL \inst46|inst6|q[21]~62_combout\ : std_logic;
SIGNAL \inst46|inst6|q[21]~63\ : std_logic;
SIGNAL \inst46|inst6|q[22]~64_combout\ : std_logic;
SIGNAL \inst46|inst6|_~6_combout\ : std_logic;
SIGNAL \inst46|inst6|_~7_combout\ : std_logic;
SIGNAL \inst46|inst6|q[1]~22_combout\ : std_logic;
SIGNAL \inst46|inst6|q[1]~23\ : std_logic;
SIGNAL \inst46|inst6|q[2]~24_combout\ : std_logic;
SIGNAL \inst46|inst6|q[2]~25\ : std_logic;
SIGNAL \inst46|inst6|q[3]~26_combout\ : std_logic;
SIGNAL \inst46|inst6|q[3]~27\ : std_logic;
SIGNAL \inst46|inst6|q[4]~28_combout\ : std_logic;
SIGNAL \inst46|inst6|q[4]~29\ : std_logic;
SIGNAL \inst46|inst6|q[5]~30_combout\ : std_logic;
SIGNAL \inst46|inst6|q[5]~31\ : std_logic;
SIGNAL \inst46|inst6|q[6]~32_combout\ : std_logic;
SIGNAL \inst46|inst6|q[6]~33\ : std_logic;
SIGNAL \inst46|inst6|q[7]~34_combout\ : std_logic;
SIGNAL \inst46|inst6|q[7]~35\ : std_logic;
SIGNAL \inst46|inst6|q[8]~36_combout\ : std_logic;
SIGNAL \inst46|inst6|q[8]~37\ : std_logic;
SIGNAL \inst46|inst6|q[9]~38_combout\ : std_logic;
SIGNAL \inst46|inst6|q[9]~39\ : std_logic;
SIGNAL \inst46|inst6|q[10]~40_combout\ : std_logic;
SIGNAL \inst46|inst6|q[10]~41\ : std_logic;
SIGNAL \inst46|inst6|q[11]~42_combout\ : std_logic;
SIGNAL \inst46|inst6|q[11]~43\ : std_logic;
SIGNAL \inst46|inst6|q[12]~44_combout\ : std_logic;
SIGNAL \inst46|inst6|q[12]~45\ : std_logic;
SIGNAL \inst46|inst6|q[13]~46_combout\ : std_logic;
SIGNAL \inst46|inst6|q[13]~47\ : std_logic;
SIGNAL \inst46|inst6|q[14]~48_combout\ : std_logic;
SIGNAL \inst46|inst6|q[14]~49\ : std_logic;
SIGNAL \inst46|inst6|q[15]~50_combout\ : std_logic;
SIGNAL \inst46|inst6|q[15]~51\ : std_logic;
SIGNAL \inst46|inst6|q[16]~52_combout\ : std_logic;
SIGNAL \inst46|inst6|q[16]~53\ : std_logic;
SIGNAL \inst46|inst6|q[17]~54_combout\ : std_logic;
SIGNAL \inst46|inst6|q[17]~55\ : std_logic;
SIGNAL \inst46|inst6|q[18]~56_combout\ : std_logic;
SIGNAL \inst46|inst6|_~5_combout\ : std_logic;
SIGNAL \inst46|inst6|aux_tff~1_combout\ : std_logic;
SIGNAL \inst46|inst6|aux_tff~q\ : std_logic;
SIGNAL \inst46|inst5|force_off[3]~0_combout\ : std_logic;
SIGNAL \inst46|inst5|alterna[2]~4_combout\ : std_logic;
SIGNAL \inst46|inst5|force_off[1]~2_combout\ : std_logic;
SIGNAL \inst24|q[0]~0_combout\ : std_logic;
SIGNAL \inst11|_~0_combout\ : std_logic;
SIGNAL \inst11|flag_q~q\ : std_logic;
SIGNAL \inst31|cnt_out[1]~13_combout\ : std_logic;
SIGNAL \inst31|cnt_out[0]~15_combout\ : std_logic;
SIGNAL \inst31|cnt_out[2]~14_combout\ : std_logic;
SIGNAL \inst31|cnt_out[3]~12_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~35_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~36_combout\ : std_logic;
SIGNAL \inst31|mil_out[2]~14_combout\ : std_logic;
SIGNAL \inst31|mil_out[3]~12_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~37_combout\ : std_logic;
SIGNAL \inst31|mil_out[0]~15_combout\ : std_logic;
SIGNAL \inst31|mil_out[1]~13_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~38_combout\ : std_logic;
SIGNAL \inst31|dzn_out[1]~13_combout\ : std_logic;
SIGNAL \inst31|dzn_out[3]~12_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~33_combout\ : std_logic;
SIGNAL \inst31|dzn_out[0]~15_combout\ : std_logic;
SIGNAL \inst31|dzn_out[2]~14_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~34_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~39_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~40_combout\ : std_logic;
SIGNAL \inst|_~0_combout\ : std_logic;
SIGNAL \inst31|und_out[3]~12_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~31_combout\ : std_logic;
SIGNAL \inst31|und_out[0]~15_combout\ : std_logic;
SIGNAL \inst31|und_out[2]~14_combout\ : std_logic;
SIGNAL \inst31|und_out[1]~13_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~32_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~41_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~44_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~43_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~42_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~45_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~46_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~47_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~52_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~50_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~49_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~48_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~51_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~53_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~54_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~55_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~56_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~57_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~58_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~59_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~60_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~64_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~61_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~62_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~63_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~65_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~68_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~69_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~77_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~66_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~67_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~70_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~72_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~73_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~71_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~74_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~75_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~76_combout\ : std_logic;
SIGNAL \inst35|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst32|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst46|inst6|q\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst43|dezena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst46|inst|q\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst46|inst4|q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst46|inst1|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst43|unidade_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst43|centena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst43|milhar_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst34|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst33|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|segmento_out\ : std_logic_vector(0 TO 6);
SIGNAL \inst49|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst39|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst46|inst5|alterna\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst24|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst37|digsel_q\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst37|aux_dig\ : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst11|ALT_INV_flag_q~q\ : std_logic;
SIGNAL \inst24|ALT_INV_q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst49|ALT_INV_q\ : std_logic_vector(1 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DIG <= ww_DIG;
ww_clock <= clock;
ww_key <= key;
led <= ww_led;
SEG <= ww_SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|aux_tff~q\);

\inst46|inst|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst46|inst|aux_tff~q\);

\inst6|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst6|aux_tff~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst11|ALT_INV_flag_q~q\ <= NOT \inst11|flag_q~q\;
\inst24|ALT_INV_q\(0) <= NOT \inst24|q\(0);
\inst49|ALT_INV_q\(1) <= NOT \inst49|q\(1);
\inst49|ALT_INV_q\(0) <= NOT \inst49|q\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X13_Y24_N23
\DIG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst46|inst5|alterna\(3),
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
	i => \inst46|inst5|alterna\(2),
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
	i => \inst46|inst5|alterna\(1),
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
	i => \inst46|inst5|alterna\(0),
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
	i => \inst49|ALT_INV_q\(0),
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
	i => \inst49|ALT_INV_q\(1),
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
	i => \inst24|ALT_INV_q\(0),
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
	i => \inst11|ALT_INV_flag_q~q\,
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
	i => \inst|segmento_out[0]~41_combout\,
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
	i => \inst|segmento_out[1]~47_combout\,
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
	i => \inst|segmento_out\(2),
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
	i => \inst|segmento_out[3]~58_combout\,
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
	i => \inst|segmento_out[4]~65_combout\,
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
	i => \inst|segmento_out[5]~70_combout\,
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
	i => \inst|segmento_out[6]~76_combout\,
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

-- Location: LCCOMB_X22_Y13_N18
\inst46|inst|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|aux_tff~1_combout\ = !\inst46|inst|aux_tff~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|aux_tff~q\,
	combout => \inst46|inst|aux_tff~1_combout\);

-- Location: LCCOMB_X22_Y13_N2
\inst46|inst|aux_tff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|aux_tff~feeder_combout\ = \inst46|inst|aux_tff~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst|aux_tff~1_combout\,
	combout => \inst46|inst|aux_tff~feeder_combout\);

-- Location: LCCOMB_X22_Y13_N20
\inst46|inst|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|_~5_combout\ = (!\inst46|inst|_~4_combout\ & !\inst46|inst|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|_~4_combout\,
	datac => \inst46|inst|q\(0),
	combout => \inst46|inst|_~5_combout\);

-- Location: FF_X22_Y13_N21
\inst46|inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|_~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(0));

-- Location: LCCOMB_X21_Y13_N2
\inst46|inst|q[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[1]~14_combout\ = (\inst46|inst|q\(0) & (\inst46|inst|q\(1) $ (VCC))) # (!\inst46|inst|q\(0) & (\inst46|inst|q\(1) & VCC))
-- \inst46|inst|q[1]~15\ = CARRY((\inst46|inst|q\(0) & \inst46|inst|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|q\(0),
	datab => \inst46|inst|q\(1),
	datad => VCC,
	combout => \inst46|inst|q[1]~14_combout\,
	cout => \inst46|inst|q[1]~15\);

-- Location: FF_X21_Y13_N3
\inst46|inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[1]~14_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(1));

-- Location: LCCOMB_X21_Y13_N4
\inst46|inst|q[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[2]~16_combout\ = (\inst46|inst|q\(2) & (!\inst46|inst|q[1]~15\)) # (!\inst46|inst|q\(2) & ((\inst46|inst|q[1]~15\) # (GND)))
-- \inst46|inst|q[2]~17\ = CARRY((!\inst46|inst|q[1]~15\) # (!\inst46|inst|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst|q\(2),
	datad => VCC,
	cin => \inst46|inst|q[1]~15\,
	combout => \inst46|inst|q[2]~16_combout\,
	cout => \inst46|inst|q[2]~17\);

-- Location: FF_X21_Y13_N5
\inst46|inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[2]~16_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(2));

-- Location: LCCOMB_X21_Y13_N6
\inst46|inst|q[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[3]~18_combout\ = (\inst46|inst|q\(3) & (\inst46|inst|q[2]~17\ $ (GND))) # (!\inst46|inst|q\(3) & (!\inst46|inst|q[2]~17\ & VCC))
-- \inst46|inst|q[3]~19\ = CARRY((\inst46|inst|q\(3) & !\inst46|inst|q[2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|q\(3),
	datad => VCC,
	cin => \inst46|inst|q[2]~17\,
	combout => \inst46|inst|q[3]~18_combout\,
	cout => \inst46|inst|q[3]~19\);

-- Location: FF_X21_Y13_N7
\inst46|inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[3]~18_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(3));

-- Location: LCCOMB_X21_Y13_N8
\inst46|inst|q[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[4]~20_combout\ = (\inst46|inst|q\(4) & (!\inst46|inst|q[3]~19\)) # (!\inst46|inst|q\(4) & ((\inst46|inst|q[3]~19\) # (GND)))
-- \inst46|inst|q[4]~21\ = CARRY((!\inst46|inst|q[3]~19\) # (!\inst46|inst|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst|q\(4),
	datad => VCC,
	cin => \inst46|inst|q[3]~19\,
	combout => \inst46|inst|q[4]~20_combout\,
	cout => \inst46|inst|q[4]~21\);

-- Location: FF_X21_Y13_N9
\inst46|inst|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[4]~20_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(4));

-- Location: LCCOMB_X21_Y13_N10
\inst46|inst|q[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[5]~22_combout\ = (\inst46|inst|q\(5) & (\inst46|inst|q[4]~21\ $ (GND))) # (!\inst46|inst|q\(5) & (!\inst46|inst|q[4]~21\ & VCC))
-- \inst46|inst|q[5]~23\ = CARRY((\inst46|inst|q\(5) & !\inst46|inst|q[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|q\(5),
	datad => VCC,
	cin => \inst46|inst|q[4]~21\,
	combout => \inst46|inst|q[5]~22_combout\,
	cout => \inst46|inst|q[5]~23\);

-- Location: FF_X21_Y13_N11
\inst46|inst|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[5]~22_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(5));

-- Location: LCCOMB_X21_Y13_N12
\inst46|inst|q[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[6]~24_combout\ = (\inst46|inst|q\(6) & (!\inst46|inst|q[5]~23\)) # (!\inst46|inst|q\(6) & ((\inst46|inst|q[5]~23\) # (GND)))
-- \inst46|inst|q[6]~25\ = CARRY((!\inst46|inst|q[5]~23\) # (!\inst46|inst|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|q\(6),
	datad => VCC,
	cin => \inst46|inst|q[5]~23\,
	combout => \inst46|inst|q[6]~24_combout\,
	cout => \inst46|inst|q[6]~25\);

-- Location: FF_X21_Y13_N13
\inst46|inst|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[6]~24_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(6));

-- Location: LCCOMB_X21_Y13_N14
\inst46|inst|q[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[7]~26_combout\ = (\inst46|inst|q\(7) & (\inst46|inst|q[6]~25\ $ (GND))) # (!\inst46|inst|q\(7) & (!\inst46|inst|q[6]~25\ & VCC))
-- \inst46|inst|q[7]~27\ = CARRY((\inst46|inst|q\(7) & !\inst46|inst|q[6]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst|q\(7),
	datad => VCC,
	cin => \inst46|inst|q[6]~25\,
	combout => \inst46|inst|q[7]~26_combout\,
	cout => \inst46|inst|q[7]~27\);

-- Location: FF_X21_Y13_N15
\inst46|inst|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[7]~26_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(7));

-- Location: LCCOMB_X21_Y13_N16
\inst46|inst|q[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[8]~28_combout\ = (\inst46|inst|q\(8) & (!\inst46|inst|q[7]~27\)) # (!\inst46|inst|q\(8) & ((\inst46|inst|q[7]~27\) # (GND)))
-- \inst46|inst|q[8]~29\ = CARRY((!\inst46|inst|q[7]~27\) # (!\inst46|inst|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst|q\(8),
	datad => VCC,
	cin => \inst46|inst|q[7]~27\,
	combout => \inst46|inst|q[8]~28_combout\,
	cout => \inst46|inst|q[8]~29\);

-- Location: FF_X21_Y13_N17
\inst46|inst|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[8]~28_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(8));

-- Location: LCCOMB_X21_Y13_N18
\inst46|inst|q[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[9]~30_combout\ = (\inst46|inst|q\(9) & (\inst46|inst|q[8]~29\ $ (GND))) # (!\inst46|inst|q\(9) & (!\inst46|inst|q[8]~29\ & VCC))
-- \inst46|inst|q[9]~31\ = CARRY((\inst46|inst|q\(9) & !\inst46|inst|q[8]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst|q\(9),
	datad => VCC,
	cin => \inst46|inst|q[8]~29\,
	combout => \inst46|inst|q[9]~30_combout\,
	cout => \inst46|inst|q[9]~31\);

-- Location: FF_X21_Y13_N19
\inst46|inst|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[9]~30_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(9));

-- Location: LCCOMB_X21_Y13_N20
\inst46|inst|q[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[10]~32_combout\ = (\inst46|inst|q\(10) & (!\inst46|inst|q[9]~31\)) # (!\inst46|inst|q\(10) & ((\inst46|inst|q[9]~31\) # (GND)))
-- \inst46|inst|q[10]~33\ = CARRY((!\inst46|inst|q[9]~31\) # (!\inst46|inst|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst|q\(10),
	datad => VCC,
	cin => \inst46|inst|q[9]~31\,
	combout => \inst46|inst|q[10]~32_combout\,
	cout => \inst46|inst|q[10]~33\);

-- Location: FF_X21_Y13_N21
\inst46|inst|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[10]~32_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(10));

-- Location: LCCOMB_X21_Y13_N22
\inst46|inst|q[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[11]~34_combout\ = (\inst46|inst|q\(11) & (\inst46|inst|q[10]~33\ $ (GND))) # (!\inst46|inst|q\(11) & (!\inst46|inst|q[10]~33\ & VCC))
-- \inst46|inst|q[11]~35\ = CARRY((\inst46|inst|q\(11) & !\inst46|inst|q[10]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|q\(11),
	datad => VCC,
	cin => \inst46|inst|q[10]~33\,
	combout => \inst46|inst|q[11]~34_combout\,
	cout => \inst46|inst|q[11]~35\);

-- Location: FF_X21_Y13_N23
\inst46|inst|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[11]~34_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(11));

-- Location: LCCOMB_X22_Y13_N26
\inst46|inst|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|_~2_combout\ = (!\inst46|inst|q\(9) & (!\inst46|inst|q\(10) & (\inst46|inst|q\(8) & !\inst46|inst|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|q\(9),
	datab => \inst46|inst|q\(10),
	datac => \inst46|inst|q\(8),
	datad => \inst46|inst|q\(11),
	combout => \inst46|inst|_~2_combout\);

-- Location: LCCOMB_X22_Y13_N12
\inst46|inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|_~0_combout\ = (!\inst46|inst|q\(1) & (!\inst46|inst|q\(2) & (\inst46|inst|q\(3) & !\inst46|inst|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|q\(1),
	datab => \inst46|inst|q\(2),
	datac => \inst46|inst|q\(3),
	datad => \inst46|inst|q\(0),
	combout => \inst46|inst|_~0_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst46|inst|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|_~1_combout\ = (\inst46|inst|q\(5) & (\inst46|inst|q\(7) & (!\inst46|inst|q\(4) & !\inst46|inst|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|q\(5),
	datab => \inst46|inst|q\(7),
	datac => \inst46|inst|q\(4),
	datad => \inst46|inst|q\(6),
	combout => \inst46|inst|_~1_combout\);

-- Location: LCCOMB_X21_Y13_N24
\inst46|inst|q[12]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[12]~36_combout\ = (\inst46|inst|q\(12) & (!\inst46|inst|q[11]~35\)) # (!\inst46|inst|q\(12) & ((\inst46|inst|q[11]~35\) # (GND)))
-- \inst46|inst|q[12]~37\ = CARRY((!\inst46|inst|q[11]~35\) # (!\inst46|inst|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst|q\(12),
	datad => VCC,
	cin => \inst46|inst|q[11]~35\,
	combout => \inst46|inst|q[12]~36_combout\,
	cout => \inst46|inst|q[12]~37\);

-- Location: FF_X21_Y13_N25
\inst46|inst|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[12]~36_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(12));

-- Location: LCCOMB_X21_Y13_N26
\inst46|inst|q[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[13]~38_combout\ = (\inst46|inst|q\(13) & (\inst46|inst|q[12]~37\ $ (GND))) # (!\inst46|inst|q\(13) & (!\inst46|inst|q[12]~37\ & VCC))
-- \inst46|inst|q[13]~39\ = CARRY((\inst46|inst|q\(13) & !\inst46|inst|q[12]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|q\(13),
	datad => VCC,
	cin => \inst46|inst|q[12]~37\,
	combout => \inst46|inst|q[13]~38_combout\,
	cout => \inst46|inst|q[13]~39\);

-- Location: FF_X21_Y13_N27
\inst46|inst|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[13]~38_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(13));

-- Location: LCCOMB_X21_Y13_N28
\inst46|inst|q[14]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|q[14]~40_combout\ = \inst46|inst|q[13]~39\ $ (\inst46|inst|q\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst46|inst|q\(14),
	cin => \inst46|inst|q[13]~39\,
	combout => \inst46|inst|q[14]~40_combout\);

-- Location: FF_X21_Y13_N29
\inst46|inst|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|q[14]~40_combout\,
	sclr => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|q\(14));

-- Location: LCCOMB_X21_Y13_N30
\inst46|inst|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|_~3_combout\ = (!\inst46|inst|q\(12) & (\inst46|inst|q\(13) & \inst46|inst|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst|q\(12),
	datac => \inst46|inst|q\(13),
	datad => \inst46|inst|q\(14),
	combout => \inst46|inst|_~3_combout\);

-- Location: LCCOMB_X22_Y13_N22
\inst46|inst|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst|_~4_combout\ = (\inst46|inst|_~2_combout\ & (\inst46|inst|_~0_combout\ & (\inst46|inst|_~1_combout\ & \inst46|inst|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst|_~2_combout\,
	datab => \inst46|inst|_~0_combout\,
	datac => \inst46|inst|_~1_combout\,
	datad => \inst46|inst|_~3_combout\,
	combout => \inst46|inst|_~4_combout\);

-- Location: FF_X22_Y13_N3
\inst46|inst|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst|aux_tff~feeder_combout\,
	ena => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst|aux_tff~q\);

-- Location: CLKCTRL_G6
\inst46|inst|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst46|inst|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst46|inst|aux_tff~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y19_N6
\inst46|inst1|q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst1|q[0]~1_combout\ = !\inst46|inst1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst1|q\(0),
	combout => \inst46|inst1|q[0]~1_combout\);

-- Location: FF_X19_Y19_N7
\inst46|inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst|aux_tff~clkctrl_outclk\,
	d => \inst46|inst1|q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst1|q\(0));

-- Location: LCCOMB_X19_Y19_N20
\inst46|inst1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst1|_~0_combout\ = \inst46|inst1|q\(1) $ (\inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst1|q\(1),
	datad => \inst46|inst1|q\(0),
	combout => \inst46|inst1|_~0_combout\);

-- Location: FF_X19_Y19_N21
\inst46|inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst46|inst|aux_tff~clkctrl_outclk\,
	d => \inst46|inst1|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst1|q\(1));

-- Location: LCCOMB_X22_Y13_N16
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

-- Location: LCCOMB_X22_Y13_N24
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

-- Location: FF_X22_Y13_N25
\inst6|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst6|aux_tff~feeder_combout\,
	ena => \inst46|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|aux_tff~q\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X28_Y17_N6
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

-- Location: FF_X28_Y17_N7
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

-- Location: FF_X28_Y17_N29
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

-- Location: LCCOMB_X28_Y17_N28
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

-- Location: LCCOMB_X28_Y17_N10
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

-- Location: FF_X28_Y17_N11
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

-- Location: LCCOMB_X28_Y17_N12
\inst49|btn2_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|btn2_reg~feeder_combout\ = \inst20|inst2|ff3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|inst2|ff3~q\,
	combout => \inst49|btn2_reg~feeder_combout\);

-- Location: FF_X28_Y17_N13
\inst49|btn2_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst49|btn2_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|btn2_reg~q\);

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

-- Location: LCCOMB_X28_Y17_N2
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

-- Location: FF_X28_Y17_N3
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

-- Location: FF_X28_Y17_N21
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

-- Location: LCCOMB_X28_Y17_N20
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

-- Location: LCCOMB_X28_Y17_N0
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

-- Location: FF_X28_Y17_N1
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

-- Location: FF_X28_Y17_N23
\inst49|btn1_reg\ : dffeas
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
	q => \inst49|btn1_reg~q\);

-- Location: LCCOMB_X28_Y17_N22
\inst49|up_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|up_pulse~combout\ = (\inst49|btn1_reg~q\ & !\inst20|inst3|ff3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst49|btn1_reg~q\,
	datad => \inst20|inst3|ff3~q\,
	combout => \inst49|up_pulse~combout\);

-- Location: LCCOMB_X28_Y17_N30
\inst49|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|q[0]~0_combout\ = \inst49|q\(0) $ (((\inst49|up_pulse~combout\) # ((\inst49|btn2_reg~q\ & !\inst20|inst2|ff3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(0),
	datab => \inst49|btn2_reg~q\,
	datac => \inst49|up_pulse~combout\,
	datad => \inst20|inst2|ff3~q\,
	combout => \inst49|q[0]~0_combout\);

-- Location: LCCOMB_X28_Y17_N16
\inst49|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|q[1]~2_combout\ = \inst49|q\(1) $ (((!\inst49|q\(0) & (\inst49|btn2_reg~q\ & !\inst20|inst2|ff3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(0),
	datab => \inst49|btn2_reg~q\,
	datac => \inst49|q\(1),
	datad => \inst20|inst2|ff3~q\,
	combout => \inst49|q[1]~2_combout\);

-- Location: LCCOMB_X28_Y17_N14
\inst49|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|q[1]~3_combout\ = (\inst49|up_pulse~combout\ & (\inst49|q\(0) $ ((\inst49|q\(1))))) # (!\inst49|up_pulse~combout\ & (((\inst49|q[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(0),
	datab => \inst49|q\(1),
	datac => \inst49|up_pulse~combout\,
	datad => \inst49|q[1]~2_combout\,
	combout => \inst49|q[1]~3_combout\);

-- Location: LCCOMB_X28_Y17_N24
\inst41|comp_flag_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst41|comp_flag_q~0_combout\ = (\inst49|q\(1) & ((\inst49|q\(0)))) # (!\inst49|q\(1) & (\inst41|comp_flag_q~q\ & !\inst49|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datac => \inst41|comp_flag_q~q\,
	datad => \inst49|q\(0),
	combout => \inst41|comp_flag_q~0_combout\);

-- Location: FF_X28_Y17_N25
\inst41|comp_flag_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst41|comp_flag_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst41|comp_flag_q~q\);

-- Location: LCCOMB_X22_Y13_N28
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

-- Location: LCCOMB_X22_Y13_N30
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

-- Location: FF_X22_Y13_N31
\inst5|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|aux_tff~feeder_combout\,
	ena => \inst46|inst|_~4_combout\,
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

-- Location: LCCOMB_X26_Y16_N18
\inst20|inst|ff1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst|ff1~feeder_combout\ = \key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[1]~input_o\,
	combout => \inst20|inst|ff1~feeder_combout\);

-- Location: FF_X26_Y16_N19
\inst20|inst|ff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	d => \inst20|inst|ff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst|ff1~q\);

-- Location: FF_X26_Y16_N29
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

-- Location: LCCOMB_X26_Y16_N28
\inst20|inst|ff3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst|ff3~0_combout\ = (\inst20|inst|ff1~q\ & (\inst20|inst|ff2~q\ & \inst20|inst|ff3~q\)) # (!\inst20|inst|ff1~q\ & ((\inst20|inst|ff2~q\) # (\inst20|inst|ff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|inst|ff1~q\,
	datac => \inst20|inst|ff2~q\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst20|inst|ff3~0_combout\);

-- Location: LCCOMB_X26_Y16_N6
\inst20|inst|ff3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst|ff3~feeder_combout\ = \inst20|inst|ff3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|inst|ff3~0_combout\,
	combout => \inst20|inst|ff3~feeder_combout\);

-- Location: FF_X26_Y16_N7
\inst20|inst|ff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	d => \inst20|inst|ff3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst|ff3~q\);

-- Location: FF_X25_Y18_N21
\inst39|btn2_reg\ : dffeas
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
	q => \inst39|btn2_reg~q\);

-- Location: LCCOMB_X25_Y17_N22
\inst50|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|_~0_combout\ = (\inst49|q\(0) & (\inst49|q\(1) & (\inst39|btn2_reg~q\ & !\inst20|inst|ff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(0),
	datab => \inst49|q\(1),
	datac => \inst39|btn2_reg~q\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst50|_~0_combout\);

-- Location: FF_X25_Y17_N23
\inst50|resetcont_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst50|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|resetcont_q~q\);

-- Location: FF_X23_Y17_N23
\inst43|reset_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	asdata => \inst50|resetcont_q~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|reset_reg~q\);

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

-- Location: FF_X28_Y18_N3
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

-- Location: FF_X28_Y18_N29
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

-- Location: LCCOMB_X28_Y18_N28
\inst20|inst1|ff3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst1|ff3~0_combout\ = (\inst20|inst1|ff1~q\ & (\inst20|inst1|ff2~q\ & \inst20|inst1|ff3~q\)) # (!\inst20|inst1|ff1~q\ & ((\inst20|inst1|ff2~q\) # (\inst20|inst1|ff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|inst1|ff1~q\,
	datac => \inst20|inst1|ff2~q\,
	datad => \inst20|inst1|ff3~q\,
	combout => \inst20|inst1|ff3~0_combout\);

-- Location: LCCOMB_X28_Y18_N18
\inst20|inst1|ff3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst1|ff3~feeder_combout\ = \inst20|inst1|ff3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|inst1|ff3~0_combout\,
	combout => \inst20|inst1|ff3~feeder_combout\);

-- Location: FF_X28_Y18_N19
\inst20|inst1|ff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6|aux_tff~clkctrl_outclk\,
	d => \inst20|inst1|ff3~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst1|ff3~q\);

-- Location: FF_X25_Y18_N23
\inst39|btn1_reg\ : dffeas
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
	q => \inst39|btn1_reg~q\);

-- Location: LCCOMB_X25_Y18_N22
\inst32|up_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|up_pulse~combout\ = (!\inst20|inst1|ff3~q\ & \inst39|btn1_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst1|ff3~q\,
	datac => \inst39|btn1_reg~q\,
	combout => \inst32|up_pulse~combout\);

-- Location: LCCOMB_X26_Y18_N0
\inst50|pausa_q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst50|pausa_q~0_combout\ = (\inst49|q\(0) & (\inst49|q\(1) & (\inst50|pausa_q~q\ $ (\inst32|up_pulse~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(0),
	datab => \inst49|q\(1),
	datac => \inst50|pausa_q~q\,
	datad => \inst32|up_pulse~combout\,
	combout => \inst50|pausa_q~0_combout\);

-- Location: FF_X26_Y18_N1
\inst50|pausa_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst50|pausa_q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst50|pausa_q~q\);

-- Location: LCCOMB_X24_Y17_N28
\inst43|pode_contar\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|pode_contar~combout\ = (\inst41|comp_flag_q~q\ & (!\inst50|pausa_q~q\ & (!\inst40|final_cont~3_combout\ & !\inst40|final_cont~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|comp_flag_q~q\,
	datab => \inst50|pausa_q~q\,
	datac => \inst40|final_cont~3_combout\,
	datad => \inst40|final_cont~14_combout\,
	combout => \inst43|pode_contar~combout\);

-- Location: LCCOMB_X22_Y17_N6
\inst43|unidade_q[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|unidade_q[0]~11_combout\ = (\inst50|resetcont_q~q\ & (\inst43|reset_reg~q\ & (\inst43|unidade_q\(0) $ (\inst43|pode_contar~combout\)))) # (!\inst50|resetcont_q~q\ & ((\inst43|unidade_q\(0) $ (\inst43|pode_contar~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|resetcont_q~q\,
	datab => \inst43|reset_reg~q\,
	datac => \inst43|unidade_q\(0),
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|unidade_q[0]~11_combout\);

-- Location: FF_X22_Y17_N7
\inst43|unidade_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|unidade_q[0]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|unidade_q\(0));

-- Location: LCCOMB_X22_Y17_N2
\inst43|unidade_q[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|unidade_q[0]~10_combout\ = (!\inst43|pode_contar~combout\ & ((\inst43|reset_reg~q\) # (!\inst50|resetcont_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst43|reset_reg~q\,
	datac => \inst50|resetcont_q~q\,
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|unidade_q[0]~10_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst43|unidade_q[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|unidade_q[3]~9_combout\ = (!\inst43|_~0_combout\ & (\inst43|pode_contar~combout\ & ((\inst43|reset_reg~q\) # (!\inst50|resetcont_q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|_~0_combout\,
	datab => \inst43|reset_reg~q\,
	datac => \inst50|resetcont_q~q\,
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|unidade_q[3]~9_combout\);

-- Location: LCCOMB_X22_Y17_N22
\inst43|unidade_q[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|unidade_q[1]~8_combout\ = (\inst43|unidade_q\(1) & ((\inst43|unidade_q[0]~10_combout\) # ((!\inst43|unidade_q\(0) & \inst43|unidade_q[3]~9_combout\)))) # (!\inst43|unidade_q\(1) & (\inst43|unidade_q\(0) & ((\inst43|unidade_q[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|unidade_q\(0),
	datab => \inst43|unidade_q[0]~10_combout\,
	datac => \inst43|unidade_q\(1),
	datad => \inst43|unidade_q[3]~9_combout\,
	combout => \inst43|unidade_q[1]~8_combout\);

-- Location: FF_X22_Y17_N23
\inst43|unidade_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|unidade_q[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|unidade_q\(1));

-- Location: LCCOMB_X22_Y17_N28
\inst43|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|op_1~1_combout\ = \inst43|unidade_q\(2) $ (((\inst43|unidade_q\(0) & \inst43|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|unidade_q\(0),
	datab => \inst43|unidade_q\(2),
	datac => \inst43|unidade_q\(1),
	combout => \inst43|op_1~1_combout\);

-- Location: LCCOMB_X22_Y17_N8
\inst43|unidade_q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|unidade_q[2]~7_combout\ = (\inst43|op_1~1_combout\ & ((\inst43|unidade_q[3]~9_combout\) # ((\inst43|unidade_q[0]~10_combout\ & \inst43|unidade_q\(2))))) # (!\inst43|op_1~1_combout\ & (\inst43|unidade_q[0]~10_combout\ & (\inst43|unidade_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|op_1~1_combout\,
	datab => \inst43|unidade_q[0]~10_combout\,
	datac => \inst43|unidade_q\(2),
	datad => \inst43|unidade_q[3]~9_combout\,
	combout => \inst43|unidade_q[2]~7_combout\);

-- Location: FF_X22_Y17_N9
\inst43|unidade_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|unidade_q[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|unidade_q\(2));

-- Location: LCCOMB_X22_Y17_N10
\inst43|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|op_1~0_combout\ = \inst43|unidade_q\(3) $ (((\inst43|unidade_q\(0) & (\inst43|unidade_q\(2) & \inst43|unidade_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|unidade_q\(0),
	datab => \inst43|unidade_q\(2),
	datac => \inst43|unidade_q\(1),
	datad => \inst43|unidade_q\(3),
	combout => \inst43|op_1~0_combout\);

-- Location: LCCOMB_X22_Y17_N16
\inst43|unidade_q[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|unidade_q[3]~6_combout\ = (\inst43|op_1~0_combout\ & ((\inst43|unidade_q[3]~9_combout\) # ((\inst43|unidade_q\(3) & \inst43|unidade_q[0]~10_combout\)))) # (!\inst43|op_1~0_combout\ & (((\inst43|unidade_q\(3) & \inst43|unidade_q[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|op_1~0_combout\,
	datab => \inst43|unidade_q[3]~9_combout\,
	datac => \inst43|unidade_q\(3),
	datad => \inst43|unidade_q[0]~10_combout\,
	combout => \inst43|unidade_q[3]~6_combout\);

-- Location: FF_X22_Y17_N17
\inst43|unidade_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|unidade_q[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|unidade_q\(3));

-- Location: LCCOMB_X22_Y17_N20
\inst43|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|_~0_combout\ = (\inst43|unidade_q\(0) & (!\inst43|unidade_q\(2) & (!\inst43|unidade_q\(1) & \inst43|unidade_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|unidade_q\(0),
	datab => \inst43|unidade_q\(2),
	datac => \inst43|unidade_q\(1),
	datad => \inst43|unidade_q\(3),
	combout => \inst43|_~0_combout\);

-- Location: LCCOMB_X23_Y17_N22
\inst43|reset_pulse\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|reset_pulse~combout\ = (\inst50|resetcont_q~q\ & !\inst43|reset_reg~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst50|resetcont_q~q\,
	datac => \inst43|reset_reg~q\,
	combout => \inst43|reset_pulse~combout\);

-- Location: LCCOMB_X21_Y17_N30
\inst43|dezena_q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|dezena_q[0]~4_combout\ = (!\inst43|reset_pulse~combout\ & (\inst43|dezena_q\(0) $ (((\inst43|_~0_combout\ & \inst43|pode_contar~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|reset_pulse~combout\,
	datab => \inst43|_~0_combout\,
	datac => \inst43|dezena_q\(0),
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|dezena_q[0]~4_combout\);

-- Location: FF_X21_Y17_N31
\inst43|dezena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|dezena_q[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|dezena_q\(0));

-- Location: LCCOMB_X22_Y17_N26
\inst43|dezena_q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|dezena_q[3]~1_combout\ = ((\inst50|pausa_q~q\) # (!\inst41|comp_flag_q~q\)) # (!\inst43|_~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst43|_~0_combout\,
	datac => \inst41|comp_flag_q~q\,
	datad => \inst50|pausa_q~q\,
	combout => \inst43|dezena_q[3]~1_combout\);

-- Location: LCCOMB_X21_Y17_N18
\inst43|dezena_q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|dezena_q[3]~2_combout\ = (!\inst43|reset_pulse~combout\ & ((\inst43|dezena_q[3]~1_combout\) # ((\inst40|final_cont~3_combout\) # (\inst40|final_cont~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|reset_pulse~combout\,
	datab => \inst43|dezena_q[3]~1_combout\,
	datac => \inst40|final_cont~3_combout\,
	datad => \inst40|final_cont~14_combout\,
	combout => \inst43|dezena_q[3]~2_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst43|dezena_q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|dezena_q[3]~0_combout\ = (!\inst43|_~1_combout\ & (!\inst43|reset_pulse~combout\ & (\inst43|_~0_combout\ & \inst43|pode_contar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|_~1_combout\,
	datab => \inst43|reset_pulse~combout\,
	datac => \inst43|_~0_combout\,
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|dezena_q[3]~0_combout\);

-- Location: LCCOMB_X21_Y17_N22
\inst43|dezena_q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|dezena_q[1]~6_combout\ = (\inst43|dezena_q\(1) & ((\inst43|dezena_q[3]~2_combout\) # ((!\inst43|dezena_q\(0) & \inst43|dezena_q[3]~0_combout\)))) # (!\inst43|dezena_q\(1) & (\inst43|dezena_q\(0) & ((\inst43|dezena_q[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|dezena_q\(0),
	datab => \inst43|dezena_q[3]~2_combout\,
	datac => \inst43|dezena_q\(1),
	datad => \inst43|dezena_q[3]~0_combout\,
	combout => \inst43|dezena_q[1]~6_combout\);

-- Location: FF_X21_Y17_N23
\inst43|dezena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|dezena_q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|dezena_q\(1));

-- Location: LCCOMB_X21_Y17_N20
\inst43|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|op_2~1_combout\ = \inst43|dezena_q\(2) $ (((\inst43|dezena_q\(1) & \inst43|dezena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|dezena_q\(1),
	datab => \inst43|dezena_q\(2),
	datac => \inst43|dezena_q\(0),
	combout => \inst43|op_2~1_combout\);

-- Location: LCCOMB_X21_Y17_N4
\inst43|dezena_q[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|dezena_q[2]~5_combout\ = (\inst43|op_2~1_combout\ & ((\inst43|dezena_q[3]~0_combout\) # ((\inst43|dezena_q[3]~2_combout\ & \inst43|dezena_q\(2))))) # (!\inst43|op_2~1_combout\ & (\inst43|dezena_q[3]~2_combout\ & (\inst43|dezena_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|op_2~1_combout\,
	datab => \inst43|dezena_q[3]~2_combout\,
	datac => \inst43|dezena_q\(2),
	datad => \inst43|dezena_q[3]~0_combout\,
	combout => \inst43|dezena_q[2]~5_combout\);

-- Location: FF_X21_Y17_N5
\inst43|dezena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|dezena_q[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|dezena_q\(2));

-- Location: LCCOMB_X21_Y17_N28
\inst43|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|op_2~0_combout\ = \inst43|dezena_q\(3) $ (((\inst43|dezena_q\(1) & (\inst43|dezena_q\(0) & \inst43|dezena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|dezena_q\(1),
	datab => \inst43|dezena_q\(0),
	datac => \inst43|dezena_q\(2),
	datad => \inst43|dezena_q\(3),
	combout => \inst43|op_2~0_combout\);

-- Location: LCCOMB_X21_Y17_N16
\inst43|dezena_q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|dezena_q[3]~3_combout\ = (\inst43|op_2~0_combout\ & ((\inst43|dezena_q[3]~0_combout\) # ((\inst43|dezena_q[3]~2_combout\ & \inst43|dezena_q\(3))))) # (!\inst43|op_2~0_combout\ & (\inst43|dezena_q[3]~2_combout\ & (\inst43|dezena_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|op_2~0_combout\,
	datab => \inst43|dezena_q[3]~2_combout\,
	datac => \inst43|dezena_q\(3),
	datad => \inst43|dezena_q[3]~0_combout\,
	combout => \inst43|dezena_q[3]~3_combout\);

-- Location: FF_X21_Y17_N17
\inst43|dezena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|dezena_q[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|dezena_q\(3));

-- Location: LCCOMB_X21_Y17_N12
\inst43|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|_~1_combout\ = (!\inst43|dezena_q\(1) & (!\inst43|dezena_q\(2) & (\inst43|dezena_q\(0) & \inst43|dezena_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|dezena_q\(1),
	datab => \inst43|dezena_q\(2),
	datac => \inst43|dezena_q\(0),
	datad => \inst43|dezena_q\(3),
	combout => \inst43|_~1_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst43|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|_~5_combout\ = (\inst43|_~0_combout\ & \inst43|_~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst43|_~0_combout\,
	datad => \inst43|_~1_combout\,
	combout => \inst43|_~5_combout\);

-- Location: LCCOMB_X25_Y17_N2
\inst43|centena_q[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|centena_q[0]~6_combout\ = (!\inst43|reset_pulse~combout\ & (\inst43|centena_q\(0) $ (((\inst43|_~5_combout\ & \inst43|pode_contar~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|_~5_combout\,
	datab => \inst43|reset_pulse~combout\,
	datac => \inst43|centena_q\(0),
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|centena_q[0]~6_combout\);

-- Location: FF_X25_Y17_N3
\inst43|centena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|centena_q[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|centena_q\(0));

-- Location: LCCOMB_X25_Y17_N20
\inst43|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|_~2_combout\ = (\inst43|centena_q\(3) & (!\inst43|centena_q\(1) & (!\inst43|centena_q\(2) & \inst43|centena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|centena_q\(3),
	datab => \inst43|centena_q\(1),
	datac => \inst43|centena_q\(2),
	datad => \inst43|centena_q\(0),
	combout => \inst43|_~2_combout\);

-- Location: LCCOMB_X24_Y17_N6
\inst43|centena_q[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|centena_q[3]~4_combout\ = (!\inst43|_~2_combout\ & (!\inst43|reset_pulse~combout\ & (\inst43|_~5_combout\ & \inst43|pode_contar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|_~2_combout\,
	datab => \inst43|reset_pulse~combout\,
	datac => \inst43|_~5_combout\,
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|centena_q[3]~4_combout\);

-- Location: LCCOMB_X25_Y17_N10
\inst43|centena_q[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|centena_q[3]~9_combout\ = (!\inst43|reset_pulse~combout\ & (((!\inst43|pode_contar~combout\) # (!\inst43|_~1_combout\)) # (!\inst43|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|reset_pulse~combout\,
	datab => \inst43|_~0_combout\,
	datac => \inst43|_~1_combout\,
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|centena_q[3]~9_combout\);

-- Location: LCCOMB_X25_Y17_N18
\inst43|centena_q[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|centena_q[1]~8_combout\ = (\inst43|centena_q\(1) & ((\inst43|centena_q[3]~9_combout\) # ((!\inst43|centena_q\(0) & \inst43|centena_q[3]~4_combout\)))) # (!\inst43|centena_q\(1) & (\inst43|centena_q\(0) & (\inst43|centena_q[3]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|centena_q\(0),
	datab => \inst43|centena_q[3]~4_combout\,
	datac => \inst43|centena_q\(1),
	datad => \inst43|centena_q[3]~9_combout\,
	combout => \inst43|centena_q[1]~8_combout\);

-- Location: FF_X25_Y17_N19
\inst43|centena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|centena_q[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|centena_q\(1));

-- Location: LCCOMB_X25_Y17_N26
\inst43|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|op_3~1_combout\ = \inst43|centena_q\(2) $ (((\inst43|centena_q\(0) & \inst43|centena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst43|centena_q\(0),
	datac => \inst43|centena_q\(2),
	datad => \inst43|centena_q\(1),
	combout => \inst43|op_3~1_combout\);

-- Location: LCCOMB_X25_Y17_N4
\inst43|centena_q[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|centena_q[2]~7_combout\ = (\inst43|op_3~1_combout\ & ((\inst43|centena_q[3]~4_combout\) # ((\inst43|centena_q\(2) & \inst43|centena_q[3]~9_combout\)))) # (!\inst43|op_3~1_combout\ & (((\inst43|centena_q\(2) & \inst43|centena_q[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|op_3~1_combout\,
	datab => \inst43|centena_q[3]~4_combout\,
	datac => \inst43|centena_q\(2),
	datad => \inst43|centena_q[3]~9_combout\,
	combout => \inst43|centena_q[2]~7_combout\);

-- Location: FF_X25_Y17_N5
\inst43|centena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|centena_q[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|centena_q\(2));

-- Location: LCCOMB_X25_Y17_N8
\inst43|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|op_3~0_combout\ = \inst43|centena_q\(3) $ (((\inst43|centena_q\(0) & (\inst43|centena_q\(2) & \inst43|centena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|centena_q\(3),
	datab => \inst43|centena_q\(0),
	datac => \inst43|centena_q\(2),
	datad => \inst43|centena_q\(1),
	combout => \inst43|op_3~0_combout\);

-- Location: LCCOMB_X25_Y17_N12
\inst43|centena_q[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|centena_q[3]~5_combout\ = (\inst43|op_3~0_combout\ & ((\inst43|centena_q[3]~4_combout\) # ((\inst43|centena_q\(3) & \inst43|centena_q[3]~9_combout\)))) # (!\inst43|op_3~0_combout\ & (((\inst43|centena_q\(3) & \inst43|centena_q[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|op_3~0_combout\,
	datab => \inst43|centena_q[3]~4_combout\,
	datac => \inst43|centena_q\(3),
	datad => \inst43|centena_q[3]~9_combout\,
	combout => \inst43|centena_q[3]~5_combout\);

-- Location: FF_X25_Y17_N13
\inst43|centena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|centena_q[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|centena_q\(3));

-- Location: LCCOMB_X25_Y18_N4
\inst32|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|_~3_combout\ = (\inst20|inst1|ff3~q\ & (((\inst20|inst|ff3~q\) # (!\inst39|btn2_reg~q\)))) # (!\inst20|inst1|ff3~q\ & (!\inst39|btn1_reg~q\ & ((\inst20|inst|ff3~q\) # (!\inst39|btn2_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst1|ff3~q\,
	datab => \inst39|btn1_reg~q\,
	datac => \inst20|inst|ff3~q\,
	datad => \inst39|btn2_reg~q\,
	combout => \inst32|_~3_combout\);

-- Location: LCCOMB_X24_Y16_N28
\inst39|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|_~0_combout\ = (!\inst49|q\(1) & \inst49|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datac => \inst49|q\(0),
	combout => \inst39|_~0_combout\);

-- Location: LCCOMB_X25_Y18_N20
\inst32|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|_~4_combout\ = (!\inst20|inst|ff3~q\ & (\inst39|btn2_reg~q\ & ((\inst20|inst1|ff3~q\) # (!\inst39|btn1_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|btn1_reg~q\,
	datab => \inst20|inst|ff3~q\,
	datac => \inst39|btn2_reg~q\,
	datad => \inst20|inst1|ff3~q\,
	combout => \inst32|_~4_combout\);

-- Location: LCCOMB_X24_Y16_N18
\inst39|q[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|q[1]~2_combout\ = (\inst39|q\(1) & ((\inst39|q\(0) & ((\inst32|_~4_combout\))) # (!\inst39|q\(0) & (\inst32|up_pulse~combout\)))) # (!\inst39|q\(1) & ((\inst39|q\(0) & (\inst32|up_pulse~combout\)) # (!\inst39|q\(0) & ((\inst32|_~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|q\(1),
	datab => \inst39|q\(0),
	datac => \inst32|up_pulse~combout\,
	datad => \inst32|_~4_combout\,
	combout => \inst39|q[1]~2_combout\);

-- Location: LCCOMB_X24_Y16_N22
\inst39|q[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|q[1]~3_combout\ = (\inst39|_~0_combout\ & ((\inst39|q[1]~2_combout\) # ((\inst32|_~3_combout\ & \inst39|q\(1))))) # (!\inst39|_~0_combout\ & (((\inst39|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|_~3_combout\,
	datab => \inst39|_~0_combout\,
	datac => \inst39|q\(1),
	datad => \inst39|q[1]~2_combout\,
	combout => \inst39|q[1]~3_combout\);

-- Location: FF_X24_Y16_N23
\inst39|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst39|q[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|q\(1));

-- Location: LCCOMB_X24_Y16_N12
\inst37|aux_dig[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|aux_dig[3]~0_combout\ = (\inst37|_~2_combout\) # ((\inst39|q\(1) & (!\inst39|q\(0) & \inst39|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|q\(1),
	datab => \inst39|q\(0),
	datac => \inst37|_~2_combout\,
	datad => \inst39|_~0_combout\,
	combout => \inst37|aux_dig[3]~0_combout\);

-- Location: FF_X24_Y16_N13
\inst37|aux_dig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst37|aux_dig[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|aux_dig\(3));

-- Location: LCCOMB_X24_Y16_N10
\inst37|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|_~2_combout\ = (\inst49|q\(1) & (!\inst49|q\(0) & \inst37|aux_dig\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datac => \inst49|q\(0),
	datad => \inst37|aux_dig\(3),
	combout => \inst37|_~2_combout\);

-- Location: FF_X25_Y18_N19
\inst37|digsel_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst37|_~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|digsel_q\(3));

-- Location: LCCOMB_X25_Y18_N6
\inst34|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|q[0]~4_combout\ = (\inst37|digsel_q\(3) & ((\inst32|_~4_combout\) # ((\inst32|up_pulse~combout\ & \inst34|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(3),
	datab => \inst32|up_pulse~combout\,
	datac => \inst32|_~4_combout\,
	datad => \inst34|_~4_combout\,
	combout => \inst34|q[0]~4_combout\);

-- Location: LCCOMB_X25_Y18_N14
\inst34|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|q[0]~5_combout\ = (\inst34|q\(0) & (((\inst32|_~3_combout\)) # (!\inst37|digsel_q\(3)))) # (!\inst34|q\(0) & (((\inst34|q[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(3),
	datab => \inst32|_~3_combout\,
	datac => \inst34|q\(0),
	datad => \inst34|q[0]~4_combout\,
	combout => \inst34|q[0]~5_combout\);

-- Location: FF_X25_Y18_N15
\inst34|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst34|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|q\(0));

-- Location: LCCOMB_X26_Y18_N16
\inst34|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|op_1~1_combout\ = \inst34|q\(2) $ (((\inst34|q\(1) & \inst34|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|q\(1),
	datac => \inst34|q\(2),
	datad => \inst34|q\(0),
	combout => \inst34|op_1~1_combout\);

-- Location: LCCOMB_X26_Y18_N22
\inst34|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|_~6_combout\ = (\inst34|q\(2) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|q\(2),
	datac => \inst32|_~3_combout\,
	datad => \inst37|digsel_q\(3),
	combout => \inst34|_~6_combout\);

-- Location: LCCOMB_X26_Y18_N10
\inst34|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|op_2~0_combout\ = \inst34|q\(2) $ (((\inst34|q\(0)) # (\inst34|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|q\(0),
	datab => \inst34|q\(1),
	datac => \inst34|q\(2),
	combout => \inst34|op_2~0_combout\);

-- Location: LCCOMB_X26_Y18_N24
\inst34|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|_~5_combout\ = (!\inst34|op_2~0_combout\ & (\inst37|digsel_q\(3) & (!\inst34|_~2_combout\ & \inst32|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|op_2~0_combout\,
	datab => \inst37|digsel_q\(3),
	datac => \inst34|_~2_combout\,
	datad => \inst32|_~4_combout\,
	combout => \inst34|_~5_combout\);

-- Location: LCCOMB_X26_Y18_N14
\inst34|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|q[2]~3_combout\ = (\inst34|_~6_combout\) # ((\inst34|_~5_combout\) # ((\inst34|_~8_combout\ & \inst34|op_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|_~8_combout\,
	datab => \inst34|op_1~1_combout\,
	datac => \inst34|_~6_combout\,
	datad => \inst34|_~5_combout\,
	combout => \inst34|q[2]~3_combout\);

-- Location: FF_X26_Y18_N15
\inst34|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst34|q[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|q\(2));

-- Location: LCCOMB_X26_Y18_N4
\inst34|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|_~2_combout\ = (!\inst34|q\(3) & (!\inst34|q\(2) & (!\inst34|q\(1) & !\inst34|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|q\(3),
	datab => \inst34|q\(2),
	datac => \inst34|q\(1),
	datad => \inst34|q\(0),
	combout => \inst34|_~2_combout\);

-- Location: LCCOMB_X25_Y18_N18
\inst34|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|_~7_combout\ = (!\inst34|_~2_combout\ & (\inst37|digsel_q\(3) & \inst32|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|_~2_combout\,
	datac => \inst37|digsel_q\(3),
	datad => \inst32|_~4_combout\,
	combout => \inst34|_~7_combout\);

-- Location: LCCOMB_X25_Y18_N10
\inst34|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|q[1]~6_combout\ = (\inst34|_~8_combout\ & ((\inst34|_~7_combout\) # (\inst34|q\(0) $ (\inst34|q\(1))))) # (!\inst34|_~8_combout\ & (\inst34|_~7_combout\ & (\inst34|q\(0) $ (!\inst34|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|_~8_combout\,
	datab => \inst34|q\(0),
	datac => \inst34|q\(1),
	datad => \inst34|_~7_combout\,
	combout => \inst34|q[1]~6_combout\);

-- Location: LCCOMB_X25_Y18_N16
\inst34|q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|q[1]~7_combout\ = (\inst34|q[1]~6_combout\) # ((\inst34|q\(1) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(3),
	datab => \inst32|_~3_combout\,
	datac => \inst34|q\(1),
	datad => \inst34|q[1]~6_combout\,
	combout => \inst34|q[1]~7_combout\);

-- Location: FF_X25_Y18_N17
\inst34|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst34|q[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|q\(1));

-- Location: LCCOMB_X25_Y18_N0
\inst34|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|_~4_combout\ = (\inst34|q\(1)) # (((\inst34|q\(2)) # (!\inst34|q\(3))) # (!\inst34|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|q\(1),
	datab => \inst34|q\(0),
	datac => \inst34|q\(3),
	datad => \inst34|q\(2),
	combout => \inst34|_~4_combout\);

-- Location: LCCOMB_X25_Y18_N12
\inst34|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|_~8_combout\ = (\inst37|digsel_q\(3) & (\inst39|btn1_reg~q\ & (\inst34|_~4_combout\ & !\inst20|inst1|ff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(3),
	datab => \inst39|btn1_reg~q\,
	datac => \inst34|_~4_combout\,
	datad => \inst20|inst1|ff3~q\,
	combout => \inst34|_~8_combout\);

-- Location: LCCOMB_X26_Y18_N18
\inst34|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|_~3_combout\ = (\inst34|q\(3) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|q\(3),
	datac => \inst32|_~3_combout\,
	datad => \inst37|digsel_q\(3),
	combout => \inst34|_~3_combout\);

-- Location: LCCOMB_X26_Y18_N8
\inst34|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|op_1~0_combout\ = \inst34|q\(3) $ (((\inst34|q\(0) & (\inst34|q\(2) & \inst34|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|q\(0),
	datab => \inst34|q\(3),
	datac => \inst34|q\(2),
	datad => \inst34|q\(1),
	combout => \inst34|op_1~0_combout\);

-- Location: LCCOMB_X26_Y18_N28
\inst34|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|q[3]~0_combout\ = \inst34|q\(3) $ (((!\inst34|q\(1) & (!\inst34|q\(2) & !\inst34|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|q\(1),
	datab => \inst34|q\(3),
	datac => \inst34|q\(2),
	datad => \inst34|q\(0),
	combout => \inst34|q[3]~0_combout\);

-- Location: LCCOMB_X26_Y18_N2
\inst34|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|q[3]~1_combout\ = (\inst34|q[3]~0_combout\ & (\inst37|digsel_q\(3) & \inst32|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst34|q[3]~0_combout\,
	datac => \inst37|digsel_q\(3),
	datad => \inst32|_~4_combout\,
	combout => \inst34|q[3]~1_combout\);

-- Location: LCCOMB_X26_Y18_N12
\inst34|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst34|q[3]~2_combout\ = (\inst34|_~3_combout\) # ((\inst34|q[3]~1_combout\) # ((\inst34|_~8_combout\ & \inst34|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|_~8_combout\,
	datab => \inst34|_~3_combout\,
	datac => \inst34|op_1~0_combout\,
	datad => \inst34|q[3]~1_combout\,
	combout => \inst34|q[3]~2_combout\);

-- Location: FF_X26_Y18_N13
\inst34|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst34|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst34|q\(3));

-- Location: LCCOMB_X25_Y17_N6
\inst40|final_cont~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~9_combout\ = (\inst43|centena_q\(3) & (\inst34|q\(3) & (\inst43|centena_q\(2) $ (!\inst34|q\(2))))) # (!\inst43|centena_q\(3) & (!\inst34|q\(3) & (\inst43|centena_q\(2) $ (!\inst34|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|centena_q\(3),
	datab => \inst43|centena_q\(2),
	datac => \inst34|q\(3),
	datad => \inst34|q\(2),
	combout => \inst40|final_cont~9_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst43|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|_~3_combout\ = (\inst43|_~1_combout\ & (\inst43|_~2_combout\ & \inst43|_~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|_~1_combout\,
	datac => \inst43|_~2_combout\,
	datad => \inst43|_~0_combout\,
	combout => \inst43|_~3_combout\);

-- Location: LCCOMB_X23_Y17_N18
\inst43|milhar_q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|milhar_q[0]~4_combout\ = (!\inst43|reset_pulse~combout\ & (\inst43|milhar_q\(0) $ (((\inst43|_~3_combout\ & \inst43|pode_contar~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|reset_pulse~combout\,
	datab => \inst43|_~3_combout\,
	datac => \inst43|milhar_q\(0),
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|milhar_q[0]~4_combout\);

-- Location: FF_X23_Y17_N19
\inst43|milhar_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|milhar_q[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|milhar_q\(0));

-- Location: LCCOMB_X23_Y17_N0
\inst43|milhar_q[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|milhar_q[3]~7_combout\ = (\inst43|reset_reg~q\ & (((!\inst43|pode_contar~combout\)) # (!\inst43|_~3_combout\))) # (!\inst43|reset_reg~q\ & (!\inst50|resetcont_q~q\ & ((!\inst43|pode_contar~combout\) # (!\inst43|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|reset_reg~q\,
	datab => \inst43|_~3_combout\,
	datac => \inst50|resetcont_q~q\,
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|milhar_q[3]~7_combout\);

-- Location: LCCOMB_X23_Y17_N14
\inst43|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|op_4~1_combout\ = \inst43|milhar_q\(2) $ (((\inst43|milhar_q\(1) & \inst43|milhar_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|milhar_q\(1),
	datab => \inst43|milhar_q\(0),
	datad => \inst43|milhar_q\(2),
	combout => \inst43|op_4~1_combout\);

-- Location: LCCOMB_X23_Y17_N28
\inst43|milhar_q[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|milhar_q[2]~5_combout\ = (\inst43|op_4~1_combout\ & ((\inst43|milhar_q[3]~2_combout\) # ((\inst43|milhar_q[3]~7_combout\ & \inst43|milhar_q\(2))))) # (!\inst43|op_4~1_combout\ & (\inst43|milhar_q[3]~7_combout\ & (\inst43|milhar_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|op_4~1_combout\,
	datab => \inst43|milhar_q[3]~7_combout\,
	datac => \inst43|milhar_q\(2),
	datad => \inst43|milhar_q[3]~2_combout\,
	combout => \inst43|milhar_q[2]~5_combout\);

-- Location: FF_X23_Y17_N29
\inst43|milhar_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|milhar_q[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|milhar_q\(2));

-- Location: LCCOMB_X23_Y17_N4
\inst43|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|_~4_combout\ = (!\inst43|milhar_q\(1) & (!\inst43|milhar_q\(2) & (\inst43|milhar_q\(0) & \inst43|milhar_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|milhar_q\(1),
	datab => \inst43|milhar_q\(2),
	datac => \inst43|milhar_q\(0),
	datad => \inst43|milhar_q\(3),
	combout => \inst43|_~4_combout\);

-- Location: LCCOMB_X24_Y17_N16
\inst43|milhar_q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|milhar_q[3]~2_combout\ = (\inst43|_~3_combout\ & (!\inst43|reset_pulse~combout\ & (!\inst43|_~4_combout\ & \inst43|pode_contar~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|_~3_combout\,
	datab => \inst43|reset_pulse~combout\,
	datac => \inst43|_~4_combout\,
	datad => \inst43|pode_contar~combout\,
	combout => \inst43|milhar_q[3]~2_combout\);

-- Location: LCCOMB_X23_Y17_N10
\inst43|milhar_q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|milhar_q[1]~6_combout\ = (\inst43|milhar_q\(1) & ((\inst43|milhar_q[3]~7_combout\) # ((!\inst43|milhar_q\(0) & \inst43|milhar_q[3]~2_combout\)))) # (!\inst43|milhar_q\(1) & (\inst43|milhar_q\(0) & ((\inst43|milhar_q[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|milhar_q\(0),
	datab => \inst43|milhar_q[3]~7_combout\,
	datac => \inst43|milhar_q\(1),
	datad => \inst43|milhar_q[3]~2_combout\,
	combout => \inst43|milhar_q[1]~6_combout\);

-- Location: FF_X23_Y17_N11
\inst43|milhar_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|milhar_q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|milhar_q\(1));

-- Location: LCCOMB_X23_Y17_N24
\inst43|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|op_4~0_combout\ = \inst43|milhar_q\(3) $ (((\inst43|milhar_q\(1) & (\inst43|milhar_q\(2) & \inst43|milhar_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|milhar_q\(1),
	datab => \inst43|milhar_q\(2),
	datac => \inst43|milhar_q\(3),
	datad => \inst43|milhar_q\(0),
	combout => \inst43|op_4~0_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst43|milhar_q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst43|milhar_q[3]~3_combout\ = (\inst43|op_4~0_combout\ & ((\inst43|milhar_q[3]~2_combout\) # ((\inst43|milhar_q[3]~7_combout\ & \inst43|milhar_q\(3))))) # (!\inst43|op_4~0_combout\ & (\inst43|milhar_q[3]~7_combout\ & (\inst43|milhar_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|op_4~0_combout\,
	datab => \inst43|milhar_q[3]~7_combout\,
	datac => \inst43|milhar_q\(3),
	datad => \inst43|milhar_q[3]~2_combout\,
	combout => \inst43|milhar_q[3]~3_combout\);

-- Location: FF_X23_Y17_N13
\inst43|milhar_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst43|milhar_q[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst43|milhar_q\(3));

-- Location: LCCOMB_X24_Y18_N12
\inst35|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|_~4_combout\ = (\inst35|q\(2)) # (((\inst35|q\(1)) # (!\inst35|q\(0))) # (!\inst35|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|q\(2),
	datab => \inst35|q\(3),
	datac => \inst35|q\(1),
	datad => \inst35|q\(0),
	combout => \inst35|_~4_combout\);

-- Location: LCCOMB_X26_Y18_N6
\inst35|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|q[0]~5_combout\ = (\inst37|digsel_q\(4) & ((\inst32|_~4_combout\) # ((\inst35|_~4_combout\ & \inst32|up_pulse~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(4),
	datab => \inst32|_~4_combout\,
	datac => \inst35|_~4_combout\,
	datad => \inst32|up_pulse~combout\,
	combout => \inst35|q[0]~5_combout\);

-- Location: LCCOMB_X26_Y18_N30
\inst35|q[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|q[0]~6_combout\ = (\inst35|q\(0) & (((\inst32|_~3_combout\)) # (!\inst37|digsel_q\(4)))) # (!\inst35|q\(0) & (((\inst35|q[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(4),
	datab => \inst32|_~3_combout\,
	datac => \inst35|q\(0),
	datad => \inst35|q[0]~5_combout\,
	combout => \inst35|q[0]~6_combout\);

-- Location: FF_X26_Y18_N31
\inst35|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst35|q[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst35|q\(0));

-- Location: LCCOMB_X24_Y18_N0
\inst35|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|op_1~2_combout\ = \inst35|q\(1) $ (\inst35|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|q\(1),
	datad => \inst35|q\(0),
	combout => \inst35|op_1~2_combout\);

-- Location: LCCOMB_X24_Y18_N26
\inst35|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|_~7_combout\ = (!\inst35|_~2_combout\ & (!\inst35|op_1~2_combout\ & (\inst32|_~4_combout\ & \inst37|digsel_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|_~2_combout\,
	datab => \inst35|op_1~2_combout\,
	datac => \inst32|_~4_combout\,
	datad => \inst37|digsel_q\(4),
	combout => \inst35|_~7_combout\);

-- Location: LCCOMB_X24_Y18_N28
\inst35|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|_~8_combout\ = (\inst35|q\(1) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|q\(1),
	datac => \inst37|digsel_q\(4),
	datad => \inst32|_~3_combout\,
	combout => \inst35|_~8_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst35|q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|q[1]~4_combout\ = (\inst35|_~7_combout\) # ((\inst35|_~8_combout\) # ((\inst35|_~9_combout\ & \inst35|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|_~9_combout\,
	datab => \inst35|op_1~2_combout\,
	datac => \inst35|_~7_combout\,
	datad => \inst35|_~8_combout\,
	combout => \inst35|q[1]~4_combout\);

-- Location: FF_X24_Y18_N21
\inst35|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst35|q[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst35|q\(1));

-- Location: LCCOMB_X24_Y18_N18
\inst35|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|op_1~0_combout\ = \inst35|q\(3) $ (((\inst35|q\(2) & (\inst35|q\(1) & \inst35|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|q\(2),
	datab => \inst35|q\(3),
	datac => \inst35|q\(1),
	datad => \inst35|q\(0),
	combout => \inst35|op_1~0_combout\);

-- Location: LCCOMB_X24_Y18_N4
\inst35|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|_~3_combout\ = (\inst35|q\(3) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|q\(3),
	datac => \inst37|digsel_q\(4),
	datad => \inst32|_~3_combout\,
	combout => \inst35|_~3_combout\);

-- Location: LCCOMB_X24_Y18_N2
\inst35|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|q[3]~0_combout\ = \inst35|q\(3) $ (((!\inst35|q\(2) & (!\inst35|q\(1) & !\inst35|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|q\(2),
	datab => \inst35|q\(3),
	datac => \inst35|q\(1),
	datad => \inst35|q\(0),
	combout => \inst35|q[3]~0_combout\);

-- Location: LCCOMB_X24_Y18_N24
\inst35|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|q[3]~1_combout\ = (\inst35|q[3]~0_combout\ & (\inst32|_~4_combout\ & \inst37|digsel_q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst35|q[3]~0_combout\,
	datac => \inst32|_~4_combout\,
	datad => \inst37|digsel_q\(4),
	combout => \inst35|q[3]~1_combout\);

-- Location: LCCOMB_X24_Y18_N16
\inst35|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|q[3]~2_combout\ = (\inst35|_~3_combout\) # ((\inst35|q[3]~1_combout\) # ((\inst35|_~9_combout\ & \inst35|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|_~9_combout\,
	datab => \inst35|op_1~0_combout\,
	datac => \inst35|_~3_combout\,
	datad => \inst35|q[3]~1_combout\,
	combout => \inst35|q[3]~2_combout\);

-- Location: FF_X24_Y18_N17
\inst35|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst35|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst35|q\(3));

-- Location: LCCOMB_X24_Y17_N20
\inst40|final_cont~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~11_combout\ = (\inst43|milhar_q\(3) & (\inst35|q\(3) & (\inst43|milhar_q\(2) $ (!\inst35|q\(2))))) # (!\inst43|milhar_q\(3) & (!\inst35|q\(3) & (\inst43|milhar_q\(2) $ (!\inst35|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|milhar_q\(3),
	datab => \inst43|milhar_q\(2),
	datac => \inst35|q\(3),
	datad => \inst35|q\(2),
	combout => \inst40|final_cont~11_combout\);

-- Location: LCCOMB_X23_Y17_N6
\inst40|final_cont~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~12_combout\ = (\inst43|milhar_q\(1) & (\inst35|q\(1) & (\inst43|milhar_q\(0) $ (!\inst35|q\(0))))) # (!\inst43|milhar_q\(1) & (!\inst35|q\(1) & (\inst43|milhar_q\(0) $ (!\inst35|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|milhar_q\(1),
	datab => \inst43|milhar_q\(0),
	datac => \inst35|q\(0),
	datad => \inst35|q\(1),
	combout => \inst40|final_cont~12_combout\);

-- Location: LCCOMB_X25_Y18_N8
\inst40|final_cont~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~10_combout\ = (\inst34|q\(1) & (\inst43|centena_q\(1) & (\inst34|q\(0) $ (!\inst43|centena_q\(0))))) # (!\inst34|q\(1) & (!\inst43|centena_q\(1) & (\inst34|q\(0) $ (!\inst43|centena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|q\(1),
	datab => \inst34|q\(0),
	datac => \inst43|centena_q\(1),
	datad => \inst43|centena_q\(0),
	combout => \inst40|final_cont~10_combout\);

-- Location: LCCOMB_X24_Y17_N14
\inst40|final_cont~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~13_combout\ = (\inst40|final_cont~9_combout\ & (\inst40|final_cont~11_combout\ & (\inst40|final_cont~12_combout\ & \inst40|final_cont~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|final_cont~9_combout\,
	datab => \inst40|final_cont~11_combout\,
	datac => \inst40|final_cont~12_combout\,
	datad => \inst40|final_cont~10_combout\,
	combout => \inst40|final_cont~13_combout\);

-- Location: LCCOMB_X24_Y16_N24
\inst37|aux_dig[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|aux_dig[1]~3_combout\ = (\inst37|_~5_combout\) # ((!\inst39|q\(0) & (!\inst39|q\(1) & \inst39|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|_~5_combout\,
	datab => \inst39|q\(0),
	datac => \inst39|q\(1),
	datad => \inst39|_~0_combout\,
	combout => \inst37|aux_dig[1]~3_combout\);

-- Location: FF_X24_Y16_N25
\inst37|aux_dig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst37|aux_dig[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|aux_dig\(1));

-- Location: LCCOMB_X24_Y16_N26
\inst37|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|_~5_combout\ = (\inst49|q\(1) & (!\inst49|q\(0) & \inst37|aux_dig\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datac => \inst49|q\(0),
	datad => \inst37|aux_dig\(1),
	combout => \inst37|_~5_combout\);

-- Location: LCCOMB_X24_Y16_N4
\inst37|digsel_q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|digsel_q[1]~feeder_combout\ = \inst37|_~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst37|_~5_combout\,
	combout => \inst37|digsel_q[1]~feeder_combout\);

-- Location: FF_X24_Y16_N5
\inst37|digsel_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst37|digsel_q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|digsel_q\(1));

-- Location: LCCOMB_X23_Y18_N14
\inst32|_~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|_~11_combout\ = (\inst32|_~6_combout\ & (\inst39|btn1_reg~q\ & (!\inst20|inst1|ff3~q\ & \inst37|digsel_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|_~6_combout\,
	datab => \inst39|btn1_reg~q\,
	datac => \inst20|inst1|ff3~q\,
	datad => \inst37|digsel_q\(1),
	combout => \inst32|_~11_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst32|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|op_1~0_combout\ = \inst32|q\(3) $ (((\inst32|q\(2) & (\inst32|q\(0) & \inst32|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(2),
	datab => \inst32|q\(0),
	datac => \inst32|q\(3),
	datad => \inst32|q\(1),
	combout => \inst32|op_1~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst32|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|_~5_combout\ = (\inst32|q\(3) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(1),
	datab => \inst32|q\(3),
	datad => \inst32|_~3_combout\,
	combout => \inst32|_~5_combout\);

-- Location: LCCOMB_X23_Y18_N16
\inst32|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|q[3]~0_combout\ = \inst32|q\(3) $ (((!\inst32|q\(0) & (!\inst32|q\(2) & !\inst32|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(0),
	datab => \inst32|q\(3),
	datac => \inst32|q\(2),
	datad => \inst32|q\(1),
	combout => \inst32|q[3]~0_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst32|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|q[3]~1_combout\ = (\inst37|digsel_q\(1) & (\inst32|_~4_combout\ & \inst32|q[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(1),
	datac => \inst32|_~4_combout\,
	datad => \inst32|q[3]~0_combout\,
	combout => \inst32|q[3]~1_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst32|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|q[3]~2_combout\ = (\inst32|_~5_combout\) # ((\inst32|q[3]~1_combout\) # ((\inst32|_~11_combout\ & \inst32|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|_~11_combout\,
	datab => \inst32|op_1~0_combout\,
	datac => \inst32|_~5_combout\,
	datad => \inst32|q[3]~1_combout\,
	combout => \inst32|q[3]~2_combout\);

-- Location: FF_X23_Y18_N9
\inst32|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|q\(3));

-- Location: LCCOMB_X23_Y18_N12
\inst32|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|_~6_combout\ = (((\inst32|q\(2)) # (\inst32|q\(1))) # (!\inst32|q\(3))) # (!\inst32|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(0),
	datab => \inst32|q\(3),
	datac => \inst32|q\(2),
	datad => \inst32|q\(1),
	combout => \inst32|_~6_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst32|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|q[0]~5_combout\ = (\inst37|digsel_q\(1) & ((\inst32|_~4_combout\) # ((\inst32|_~6_combout\ & \inst32|up_pulse~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|_~6_combout\,
	datab => \inst37|digsel_q\(1),
	datac => \inst32|_~4_combout\,
	datad => \inst32|up_pulse~combout\,
	combout => \inst32|q[0]~5_combout\);

-- Location: LCCOMB_X23_Y18_N22
\inst32|q[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|q[0]~6_combout\ = (\inst32|q\(0) & (((\inst32|_~3_combout\)) # (!\inst37|digsel_q\(1)))) # (!\inst32|q\(0) & (((\inst32|q[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(1),
	datab => \inst32|_~3_combout\,
	datac => \inst32|q\(0),
	datad => \inst32|q[0]~5_combout\,
	combout => \inst32|q[0]~6_combout\);

-- Location: FF_X23_Y18_N23
\inst32|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|q[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|q\(0));

-- Location: LCCOMB_X25_Y18_N28
\inst32|op_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|op_1~2_combout\ = \inst32|q\(0) $ (\inst32|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(0),
	datac => \inst32|q\(1),
	combout => \inst32|op_1~2_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst32|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|_~2_combout\ = (!\inst32|q\(0) & (!\inst32|q\(1) & (!\inst32|q\(2) & !\inst32|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(0),
	datab => \inst32|q\(1),
	datac => \inst32|q\(2),
	datad => \inst32|q\(3),
	combout => \inst32|_~2_combout\);

-- Location: LCCOMB_X25_Y18_N26
\inst32|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|_~9_combout\ = (\inst37|digsel_q\(1) & (!\inst32|op_1~2_combout\ & (!\inst32|_~2_combout\ & \inst32|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(1),
	datab => \inst32|op_1~2_combout\,
	datac => \inst32|_~2_combout\,
	datad => \inst32|_~4_combout\,
	combout => \inst32|_~9_combout\);

-- Location: LCCOMB_X23_Y18_N2
\inst32|_~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|_~10_combout\ = (\inst32|q\(1) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst32|q\(1),
	datac => \inst32|_~3_combout\,
	datad => \inst37|digsel_q\(1),
	combout => \inst32|_~10_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst32|q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|q[1]~4_combout\ = (\inst32|_~9_combout\) # ((\inst32|_~10_combout\) # ((\inst32|op_1~2_combout\ & \inst32|_~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|op_1~2_combout\,
	datab => \inst32|_~11_combout\,
	datac => \inst32|_~9_combout\,
	datad => \inst32|_~10_combout\,
	combout => \inst32|q[1]~4_combout\);

-- Location: FF_X23_Y18_N5
\inst32|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|q[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|q\(1));

-- Location: LCCOMB_X23_Y18_N0
\inst32|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|op_1~1_combout\ = \inst32|q\(2) $ (((\inst32|q\(1) & \inst32|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(2),
	datac => \inst32|q\(1),
	datad => \inst32|q\(0),
	combout => \inst32|op_1~1_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst32|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|op_2~0_combout\ = \inst32|q\(2) $ (((\inst32|q\(1)) # (\inst32|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(2),
	datac => \inst32|q\(1),
	datad => \inst32|q\(0),
	combout => \inst32|op_2~0_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst32|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|_~7_combout\ = (!\inst32|_~2_combout\ & (!\inst32|op_2~0_combout\ & (\inst32|_~4_combout\ & \inst37|digsel_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|_~2_combout\,
	datab => \inst32|op_2~0_combout\,
	datac => \inst32|_~4_combout\,
	datad => \inst37|digsel_q\(1),
	combout => \inst32|_~7_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst32|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|_~8_combout\ = (\inst32|q\(2) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|q\(2),
	datab => \inst37|digsel_q\(1),
	datad => \inst32|_~3_combout\,
	combout => \inst32|_~8_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst32|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst32|q[2]~3_combout\ = (\inst32|_~7_combout\) # ((\inst32|_~8_combout\) # ((\inst32|op_1~1_combout\ & \inst32|_~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|op_1~1_combout\,
	datab => \inst32|_~7_combout\,
	datac => \inst32|_~11_combout\,
	datad => \inst32|_~8_combout\,
	combout => \inst32|q[2]~3_combout\);

-- Location: FF_X23_Y18_N31
\inst32|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst32|q[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst32|q\(2));

-- Location: LCCOMB_X22_Y17_N18
\inst40|final_cont~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~4_combout\ = (\inst43|unidade_q\(2) & (\inst32|q\(2) & (\inst43|unidade_q\(3) $ (!\inst32|q\(3))))) # (!\inst43|unidade_q\(2) & (!\inst32|q\(2) & (\inst43|unidade_q\(3) $ (!\inst32|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|unidade_q\(2),
	datab => \inst43|unidade_q\(3),
	datac => \inst32|q\(2),
	datad => \inst32|q\(3),
	combout => \inst40|final_cont~4_combout\);

-- Location: LCCOMB_X22_Y17_N4
\inst40|final_cont~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~5_combout\ = (\inst43|unidade_q\(0) & (\inst32|q\(0) & (\inst43|unidade_q\(1) $ (!\inst32|q\(1))))) # (!\inst43|unidade_q\(0) & (!\inst32|q\(0) & (\inst43|unidade_q\(1) $ (!\inst32|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|unidade_q\(0),
	datab => \inst43|unidade_q\(1),
	datac => \inst32|q\(1),
	datad => \inst32|q\(0),
	combout => \inst40|final_cont~5_combout\);

-- Location: LCCOMB_X24_Y16_N16
\inst37|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|_~0_combout\ = (!\inst49|q\(1) & (\inst39|q\(0) & (\inst39|q\(1) & \inst49|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datab => \inst39|q\(0),
	datac => \inst39|q\(1),
	datad => \inst49|q\(0),
	combout => \inst37|_~0_combout\);

-- Location: LCCOMB_X24_Y16_N14
\inst37|aux_dig[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|aux_dig[2]~2_combout\ = (\inst37|_~0_combout\) # ((\inst49|q\(1) & (!\inst49|q\(0) & \inst37|aux_dig\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datab => \inst49|q\(0),
	datac => \inst37|aux_dig\(2),
	datad => \inst37|_~0_combout\,
	combout => \inst37|aux_dig[2]~2_combout\);

-- Location: FF_X24_Y16_N15
\inst37|aux_dig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst37|aux_dig[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|aux_dig\(2));

-- Location: LCCOMB_X25_Y16_N16
\inst37|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|_~4_combout\ = (\inst37|aux_dig\(2) & (!\inst49|q\(0) & \inst49|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|aux_dig\(2),
	datac => \inst49|q\(0),
	datad => \inst49|q\(1),
	combout => \inst37|_~4_combout\);

-- Location: FF_X25_Y16_N17
\inst37|digsel_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst37|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|digsel_q\(2));

-- Location: LCCOMB_X26_Y17_N16
\inst33|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|_~8_combout\ = (\inst37|digsel_q\(2) & (\inst33|_~4_combout\ & (\inst39|btn1_reg~q\ & !\inst20|inst1|ff3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(2),
	datab => \inst33|_~4_combout\,
	datac => \inst39|btn1_reg~q\,
	datad => \inst20|inst1|ff3~q\,
	combout => \inst33|_~8_combout\);

-- Location: LCCOMB_X26_Y17_N12
\inst33|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|op_1~0_combout\ = \inst33|q\(3) $ (((\inst33|q\(0) & (\inst33|q\(2) & \inst33|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|q\(0),
	datab => \inst33|q\(3),
	datac => \inst33|q\(2),
	datad => \inst33|q\(1),
	combout => \inst33|op_1~0_combout\);

-- Location: LCCOMB_X25_Y18_N24
\inst33|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|_~3_combout\ = (\inst33|q\(3) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|q\(3),
	datac => \inst32|_~3_combout\,
	datad => \inst37|digsel_q\(2),
	combout => \inst33|_~3_combout\);

-- Location: LCCOMB_X26_Y17_N0
\inst33|q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|q[3]~0_combout\ = \inst33|q\(3) $ (((!\inst33|q\(0) & (!\inst33|q\(2) & !\inst33|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|q\(0),
	datab => \inst33|q\(3),
	datac => \inst33|q\(2),
	datad => \inst33|q\(1),
	combout => \inst33|q[3]~0_combout\);

-- Location: LCCOMB_X26_Y17_N14
\inst33|q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|q[3]~1_combout\ = (\inst33|q[3]~0_combout\ & (\inst37|digsel_q\(2) & \inst32|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|q[3]~0_combout\,
	datac => \inst37|digsel_q\(2),
	datad => \inst32|_~4_combout\,
	combout => \inst33|q[3]~1_combout\);

-- Location: LCCOMB_X26_Y17_N4
\inst33|q[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|q[3]~2_combout\ = (\inst33|_~3_combout\) # ((\inst33|q[3]~1_combout\) # ((\inst33|op_1~0_combout\ & \inst33|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|op_1~0_combout\,
	datab => \inst33|_~8_combout\,
	datac => \inst33|_~3_combout\,
	datad => \inst33|q[3]~1_combout\,
	combout => \inst33|q[3]~2_combout\);

-- Location: FF_X26_Y17_N5
\inst33|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst33|q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|q\(3));

-- Location: LCCOMB_X26_Y17_N20
\inst33|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|_~2_combout\ = (!\inst33|q\(3) & (!\inst33|q\(1) & (!\inst33|q\(0) & !\inst33|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|q\(3),
	datab => \inst33|q\(1),
	datac => \inst33|q\(0),
	datad => \inst33|q\(2),
	combout => \inst33|_~2_combout\);

-- Location: LCCOMB_X26_Y17_N10
\inst33|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|_~7_combout\ = (!\inst33|_~2_combout\ & (\inst37|digsel_q\(2) & \inst32|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|_~2_combout\,
	datac => \inst37|digsel_q\(2),
	datad => \inst32|_~4_combout\,
	combout => \inst33|_~7_combout\);

-- Location: LCCOMB_X26_Y17_N6
\inst33|q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|q[1]~6_combout\ = (\inst33|q\(1) & ((\inst33|q\(0) & ((\inst33|_~7_combout\))) # (!\inst33|q\(0) & (\inst33|_~8_combout\)))) # (!\inst33|q\(1) & ((\inst33|q\(0) & (\inst33|_~8_combout\)) # (!\inst33|q\(0) & ((\inst33|_~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|q\(1),
	datab => \inst33|_~8_combout\,
	datac => \inst33|q\(0),
	datad => \inst33|_~7_combout\,
	combout => \inst33|q[1]~6_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst33|q[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|q[1]~7_combout\ = (\inst33|q[1]~6_combout\) # ((\inst33|q\(1) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(2),
	datab => \inst32|_~3_combout\,
	datac => \inst33|q\(1),
	datad => \inst33|q[1]~6_combout\,
	combout => \inst33|q[1]~7_combout\);

-- Location: FF_X26_Y17_N29
\inst33|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst33|q[1]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|q\(1));

-- Location: LCCOMB_X25_Y17_N16
\inst33|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|op_1~1_combout\ = \inst33|q\(2) $ (((\inst33|q\(0) & \inst33|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|q\(0),
	datac => \inst33|q\(2),
	datad => \inst33|q\(1),
	combout => \inst33|op_1~1_combout\);

-- Location: LCCOMB_X26_Y17_N8
\inst33|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|op_2~0_combout\ = \inst33|q\(2) $ (((\inst33|q\(0)) # (\inst33|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|q\(0),
	datab => \inst33|q\(2),
	datad => \inst33|q\(1),
	combout => \inst33|op_2~0_combout\);

-- Location: LCCOMB_X26_Y17_N22
\inst33|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|_~5_combout\ = (\inst37|digsel_q\(2) & (!\inst33|_~2_combout\ & (!\inst33|op_2~0_combout\ & \inst32|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(2),
	datab => \inst33|_~2_combout\,
	datac => \inst33|op_2~0_combout\,
	datad => \inst32|_~4_combout\,
	combout => \inst33|_~5_combout\);

-- Location: LCCOMB_X26_Y17_N24
\inst33|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|_~6_combout\ = (\inst33|q\(2) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst33|q\(2),
	datac => \inst37|digsel_q\(2),
	datad => \inst32|_~3_combout\,
	combout => \inst33|_~6_combout\);

-- Location: LCCOMB_X26_Y17_N18
\inst33|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|q[2]~3_combout\ = (\inst33|_~5_combout\) # ((\inst33|_~6_combout\) # ((\inst33|op_1~1_combout\ & \inst33|_~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|op_1~1_combout\,
	datab => \inst33|_~8_combout\,
	datac => \inst33|_~5_combout\,
	datad => \inst33|_~6_combout\,
	combout => \inst33|q[2]~3_combout\);

-- Location: FF_X26_Y17_N19
\inst33|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst33|q[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|q\(2));

-- Location: LCCOMB_X26_Y17_N2
\inst33|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|_~4_combout\ = (\inst33|q\(2)) # (((\inst33|q\(1)) # (!\inst33|q\(0))) # (!\inst33|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|q\(2),
	datab => \inst33|q\(3),
	datac => \inst33|q\(0),
	datad => \inst33|q\(1),
	combout => \inst33|_~4_combout\);

-- Location: LCCOMB_X25_Y18_N30
\inst33|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|q[0]~4_combout\ = (\inst37|digsel_q\(2) & ((\inst32|_~4_combout\) # ((\inst32|up_pulse~combout\ & \inst33|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|up_pulse~combout\,
	datab => \inst37|digsel_q\(2),
	datac => \inst33|_~4_combout\,
	datad => \inst32|_~4_combout\,
	combout => \inst33|q[0]~4_combout\);

-- Location: LCCOMB_X26_Y17_N30
\inst33|q[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst33|q[0]~5_combout\ = (\inst33|q\(0) & (((\inst32|_~3_combout\)) # (!\inst37|digsel_q\(2)))) # (!\inst33|q\(0) & (((\inst33|q[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(2),
	datab => \inst32|_~3_combout\,
	datac => \inst33|q\(0),
	datad => \inst33|q[0]~4_combout\,
	combout => \inst33|q[0]~5_combout\);

-- Location: FF_X26_Y17_N31
\inst33|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst33|q[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst33|q\(0));

-- Location: LCCOMB_X26_Y17_N26
\inst40|final_cont~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~7_combout\ = (\inst33|q\(0) & (\inst43|dezena_q\(0) & (\inst33|q\(1) $ (!\inst43|dezena_q\(1))))) # (!\inst33|q\(0) & (!\inst43|dezena_q\(0) & (\inst33|q\(1) $ (!\inst43|dezena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|q\(0),
	datab => \inst33|q\(1),
	datac => \inst43|dezena_q\(0),
	datad => \inst43|dezena_q\(1),
	combout => \inst40|final_cont~7_combout\);

-- Location: LCCOMB_X21_Y17_N26
\inst40|final_cont~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~6_combout\ = (\inst43|dezena_q\(2) & (\inst33|q\(2) & (\inst43|dezena_q\(3) $ (!\inst33|q\(3))))) # (!\inst43|dezena_q\(2) & (!\inst33|q\(2) & (\inst43|dezena_q\(3) $ (!\inst33|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|dezena_q\(2),
	datab => \inst43|dezena_q\(3),
	datac => \inst33|q\(2),
	datad => \inst33|q\(3),
	combout => \inst40|final_cont~6_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst40|final_cont~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~8_combout\ = (\inst40|final_cont~4_combout\ & (\inst40|final_cont~5_combout\ & (\inst40|final_cont~7_combout\ & \inst40|final_cont~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst40|final_cont~4_combout\,
	datab => \inst40|final_cont~5_combout\,
	datac => \inst40|final_cont~7_combout\,
	datad => \inst40|final_cont~6_combout\,
	combout => \inst40|final_cont~8_combout\);

-- Location: LCCOMB_X24_Y17_N0
\inst40|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|_~0_combout\ = (\inst32|_~2_combout\ & (\inst33|_~2_combout\ & (\inst35|_~2_combout\ & \inst34|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|_~2_combout\,
	datab => \inst33|_~2_combout\,
	datac => \inst35|_~2_combout\,
	datad => \inst34|_~2_combout\,
	combout => \inst40|_~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\inst40|final_cont~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~14_combout\ = (\inst41|comp_flag_q~q\ & (\inst40|final_cont~13_combout\ & (\inst40|final_cont~8_combout\ & !\inst40|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|comp_flag_q~q\,
	datab => \inst40|final_cont~13_combout\,
	datac => \inst40|final_cont~8_combout\,
	datad => \inst40|_~0_combout\,
	combout => \inst40|final_cont~14_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst49|q[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|q[1]~4_combout\ = (\inst49|q[1]~3_combout\ & ((\inst49|reset_reg~q\) # ((!\inst40|final_cont~3_combout\ & !\inst40|final_cont~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|reset_reg~q\,
	datab => \inst40|final_cont~3_combout\,
	datac => \inst49|q[1]~3_combout\,
	datad => \inst40|final_cont~14_combout\,
	combout => \inst49|q[1]~4_combout\);

-- Location: FF_X24_Y17_N31
\inst49|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst49|q[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|q\(1));

-- Location: LCCOMB_X24_Y16_N6
\inst37|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|_~1_combout\ = (!\inst49|q\(1) & (\inst39|q\(0) & (!\inst39|q\(1) & \inst49|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datab => \inst39|q\(0),
	datac => \inst39|q\(1),
	datad => \inst49|q\(0),
	combout => \inst37|_~1_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst37|aux_dig[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|aux_dig[4]~1_combout\ = (\inst37|_~1_combout\) # ((\inst49|q\(1) & (!\inst49|q\(0) & \inst37|aux_dig\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datab => \inst49|q\(0),
	datac => \inst37|aux_dig\(4),
	datad => \inst37|_~1_combout\,
	combout => \inst37|aux_dig[4]~1_combout\);

-- Location: FF_X24_Y16_N1
\inst37|aux_dig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst37|aux_dig[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|aux_dig\(4));

-- Location: LCCOMB_X26_Y18_N26
\inst37|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst37|_~3_combout\ = (\inst49|q\(1) & (\inst37|aux_dig\(4) & !\inst49|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datac => \inst37|aux_dig\(4),
	datad => \inst49|q\(0),
	combout => \inst37|_~3_combout\);

-- Location: FF_X26_Y18_N27
\inst37|digsel_q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst37|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst37|digsel_q\(4));

-- Location: LCCOMB_X24_Y18_N22
\inst35|_~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|_~9_combout\ = (\inst37|digsel_q\(4) & (\inst39|btn1_reg~q\ & (!\inst20|inst1|ff3~q\ & \inst35|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|digsel_q\(4),
	datab => \inst39|btn1_reg~q\,
	datac => \inst20|inst1|ff3~q\,
	datad => \inst35|_~4_combout\,
	combout => \inst35|_~9_combout\);

-- Location: LCCOMB_X24_Y18_N14
\inst35|op_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|op_1~1_combout\ = \inst35|q\(2) $ (((\inst35|q\(1) & \inst35|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|q\(2),
	datab => \inst35|q\(1),
	datad => \inst35|q\(0),
	combout => \inst35|op_1~1_combout\);

-- Location: LCCOMB_X24_Y18_N8
\inst35|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|_~6_combout\ = (\inst35|q\(2) & ((\inst32|_~3_combout\) # (!\inst37|digsel_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|q\(2),
	datab => \inst37|digsel_q\(4),
	datad => \inst32|_~3_combout\,
	combout => \inst35|_~6_combout\);

-- Location: LCCOMB_X26_Y18_N20
\inst35|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|op_2~0_combout\ = \inst35|q\(2) $ (((\inst35|q\(0)) # (\inst35|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|q\(0),
	datac => \inst35|q\(2),
	datad => \inst35|q\(1),
	combout => \inst35|op_2~0_combout\);

-- Location: LCCOMB_X24_Y18_N10
\inst35|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|_~5_combout\ = (!\inst35|_~2_combout\ & (\inst37|digsel_q\(4) & (\inst32|_~4_combout\ & !\inst35|op_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|_~2_combout\,
	datab => \inst37|digsel_q\(4),
	datac => \inst32|_~4_combout\,
	datad => \inst35|op_2~0_combout\,
	combout => \inst35|_~5_combout\);

-- Location: LCCOMB_X24_Y18_N6
\inst35|q[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|q[2]~3_combout\ = (\inst35|_~6_combout\) # ((\inst35|_~5_combout\) # ((\inst35|_~9_combout\ & \inst35|op_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|_~9_combout\,
	datab => \inst35|op_1~1_combout\,
	datac => \inst35|_~6_combout\,
	datad => \inst35|_~5_combout\,
	combout => \inst35|q[2]~3_combout\);

-- Location: FF_X24_Y18_N7
\inst35|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst35|q[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst35|q\(2));

-- Location: LCCOMB_X24_Y18_N30
\inst35|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst35|_~2_combout\ = (!\inst35|q\(2) & (!\inst35|q\(3) & (!\inst35|q\(0) & !\inst35|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|q\(2),
	datab => \inst35|q\(3),
	datac => \inst35|q\(0),
	datad => \inst35|q\(1),
	combout => \inst35|_~2_combout\);

-- Location: LCCOMB_X24_Y17_N2
\inst40|final_cont~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~2_combout\ = (\inst41|comp_flag_q~q\ & (\inst43|_~4_combout\ & (\inst33|_~2_combout\ & \inst32|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst41|comp_flag_q~q\,
	datab => \inst43|_~4_combout\,
	datac => \inst33|_~2_combout\,
	datad => \inst32|_~2_combout\,
	combout => \inst40|final_cont~2_combout\);

-- Location: LCCOMB_X24_Y17_N8
\inst40|final_cont~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~3_combout\ = (\inst35|_~2_combout\ & (\inst34|_~2_combout\ & (\inst43|_~3_combout\ & \inst40|final_cont~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|_~2_combout\,
	datab => \inst34|_~2_combout\,
	datac => \inst43|_~3_combout\,
	datad => \inst40|final_cont~2_combout\,
	combout => \inst40|final_cont~3_combout\);

-- Location: LCCOMB_X24_Y17_N10
\inst40|final_cont~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst40|final_cont~15_combout\ = (\inst40|final_cont~3_combout\) # (\inst40|final_cont~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst40|final_cont~3_combout\,
	datad => \inst40|final_cont~14_combout\,
	combout => \inst40|final_cont~15_combout\);

-- Location: FF_X24_Y17_N11
\inst49|reset_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst40|final_cont~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|reset_reg~q\);

-- Location: LCCOMB_X24_Y17_N24
\inst49|q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst49|q[0]~1_combout\ = (\inst49|q[0]~0_combout\ & ((\inst49|reset_reg~q\) # ((!\inst40|final_cont~3_combout\ & !\inst40|final_cont~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q[0]~0_combout\,
	datab => \inst49|reset_reg~q\,
	datac => \inst40|final_cont~3_combout\,
	datad => \inst40|final_cont~14_combout\,
	combout => \inst49|q[0]~1_combout\);

-- Location: FF_X24_Y17_N25
\inst49|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst49|q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst49|q\(0));

-- Location: LCCOMB_X25_Y18_N2
\inst39|q[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst39|q[0]~4_combout\ = \inst39|q\(0) $ (((\inst49|q\(0) & (!\inst49|q\(1) & !\inst32|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(0),
	datab => \inst49|q\(1),
	datac => \inst39|q\(0),
	datad => \inst32|_~3_combout\,
	combout => \inst39|q[0]~4_combout\);

-- Location: FF_X25_Y18_N3
\inst39|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst39|q[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst39|q\(0));

-- Location: LCCOMB_X19_Y15_N8
\inst46|inst4|q[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[16]~53_combout\ = (\inst46|inst4|q\(16) & (!\inst46|inst4|q[15]~52\)) # (!\inst46|inst4|q\(16) & ((\inst46|inst4|q[15]~52\) # (GND)))
-- \inst46|inst4|q[16]~54\ = CARRY((!\inst46|inst4|q[15]~52\) # (!\inst46|inst4|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(16),
	datad => VCC,
	cin => \inst46|inst4|q[15]~52\,
	combout => \inst46|inst4|q[16]~53_combout\,
	cout => \inst46|inst4|q[16]~54\);

-- Location: LCCOMB_X19_Y15_N10
\inst46|inst4|q[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[17]~55_combout\ = (\inst46|inst4|q\(17) & (\inst46|inst4|q[16]~54\ $ (GND))) # (!\inst46|inst4|q\(17) & (!\inst46|inst4|q[16]~54\ & VCC))
-- \inst46|inst4|q[17]~56\ = CARRY((\inst46|inst4|q\(17) & !\inst46|inst4|q[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(17),
	datad => VCC,
	cin => \inst46|inst4|q[16]~54\,
	combout => \inst46|inst4|q[17]~55_combout\,
	cout => \inst46|inst4|q[17]~56\);

-- Location: LCCOMB_X19_Y16_N6
\inst46|inst4|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|_~0_combout\ = (!\inst46|inst4|q\(1) & (!\inst46|inst4|q\(3) & (!\inst46|inst4|q\(0) & !\inst46|inst4|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(1),
	datab => \inst46|inst4|q\(3),
	datac => \inst46|inst4|q\(0),
	datad => \inst46|inst4|q\(2),
	combout => \inst46|inst4|_~0_combout\);

-- Location: LCCOMB_X19_Y16_N2
\inst46|inst4|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|_~2_combout\ = (!\inst46|inst4|q\(9) & (!\inst46|inst4|q\(8) & (\inst46|inst4|q\(11) & \inst46|inst4|q\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(9),
	datab => \inst46|inst4|q\(8),
	datac => \inst46|inst4|q\(11),
	datad => \inst46|inst4|q\(10),
	combout => \inst46|inst4|_~2_combout\);

-- Location: LCCOMB_X19_Y15_N26
\inst46|inst4|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|_~3_combout\ = (\inst46|inst4|q\(15) & (\inst46|inst4|q\(13) & (!\inst46|inst4|q\(14) & \inst46|inst4|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(15),
	datab => \inst46|inst4|q\(13),
	datac => \inst46|inst4|q\(14),
	datad => \inst46|inst4|q\(12),
	combout => \inst46|inst4|_~3_combout\);

-- Location: LCCOMB_X19_Y16_N8
\inst46|inst4|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|_~1_combout\ = (!\inst46|inst4|q\(7) & (!\inst46|inst4|q\(4) & (!\inst46|inst4|q\(6) & \inst46|inst4|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(7),
	datab => \inst46|inst4|q\(4),
	datac => \inst46|inst4|q\(6),
	datad => \inst46|inst4|q\(5),
	combout => \inst46|inst4|_~1_combout\);

-- Location: LCCOMB_X19_Y16_N0
\inst46|inst4|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|_~4_combout\ = (\inst46|inst4|_~0_combout\ & (\inst46|inst4|_~2_combout\ & (\inst46|inst4|_~3_combout\ & \inst46|inst4|_~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|_~0_combout\,
	datab => \inst46|inst4|_~2_combout\,
	datac => \inst46|inst4|_~3_combout\,
	datad => \inst46|inst4|_~1_combout\,
	combout => \inst46|inst4|_~4_combout\);

-- Location: LCCOMB_X19_Y15_N30
\inst46|inst4|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|_~8_combout\ = (\inst46|inst4|_~5_combout\ & (\inst46|inst4|_~6_combout\ & \inst46|inst4|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|_~5_combout\,
	datab => \inst46|inst4|_~6_combout\,
	datad => \inst46|inst4|_~4_combout\,
	combout => \inst46|inst4|_~8_combout\);

-- Location: FF_X19_Y15_N11
\inst46|inst4|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[17]~55_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(17));

-- Location: LCCOMB_X19_Y15_N12
\inst46|inst4|q[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[18]~57_combout\ = (\inst46|inst4|q\(18) & (!\inst46|inst4|q[17]~56\)) # (!\inst46|inst4|q\(18) & ((\inst46|inst4|q[17]~56\) # (GND)))
-- \inst46|inst4|q[18]~58\ = CARRY((!\inst46|inst4|q[17]~56\) # (!\inst46|inst4|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(18),
	datad => VCC,
	cin => \inst46|inst4|q[17]~56\,
	combout => \inst46|inst4|q[18]~57_combout\,
	cout => \inst46|inst4|q[18]~58\);

-- Location: FF_X19_Y15_N13
\inst46|inst4|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[18]~57_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(18));

-- Location: LCCOMB_X19_Y15_N14
\inst46|inst4|q[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[19]~59_combout\ = (\inst46|inst4|q\(19) & (\inst46|inst4|q[18]~58\ $ (GND))) # (!\inst46|inst4|q\(19) & (!\inst46|inst4|q[18]~58\ & VCC))
-- \inst46|inst4|q[19]~60\ = CARRY((\inst46|inst4|q\(19) & !\inst46|inst4|q[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(19),
	datad => VCC,
	cin => \inst46|inst4|q[18]~58\,
	combout => \inst46|inst4|q[19]~59_combout\,
	cout => \inst46|inst4|q[19]~60\);

-- Location: FF_X19_Y15_N15
\inst46|inst4|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[19]~59_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(19));

-- Location: LCCOMB_X19_Y15_N16
\inst46|inst4|q[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[20]~61_combout\ = (\inst46|inst4|q\(20) & (!\inst46|inst4|q[19]~60\)) # (!\inst46|inst4|q\(20) & ((\inst46|inst4|q[19]~60\) # (GND)))
-- \inst46|inst4|q[20]~62\ = CARRY((!\inst46|inst4|q[19]~60\) # (!\inst46|inst4|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(20),
	datad => VCC,
	cin => \inst46|inst4|q[19]~60\,
	combout => \inst46|inst4|q[20]~61_combout\,
	cout => \inst46|inst4|q[20]~62\);

-- Location: FF_X19_Y15_N17
\inst46|inst4|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[20]~61_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(20));

-- Location: LCCOMB_X19_Y15_N18
\inst46|inst4|q[21]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[21]~63_combout\ = (\inst46|inst4|q\(21) & (\inst46|inst4|q[20]~62\ $ (GND))) # (!\inst46|inst4|q\(21) & (!\inst46|inst4|q[20]~62\ & VCC))
-- \inst46|inst4|q[21]~64\ = CARRY((\inst46|inst4|q\(21) & !\inst46|inst4|q[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(21),
	datad => VCC,
	cin => \inst46|inst4|q[20]~62\,
	combout => \inst46|inst4|q[21]~63_combout\,
	cout => \inst46|inst4|q[21]~64\);

-- Location: FF_X19_Y15_N19
\inst46|inst4|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[21]~63_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(21));

-- Location: LCCOMB_X19_Y15_N20
\inst46|inst4|q[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[22]~65_combout\ = (\inst46|inst4|q\(22) & (!\inst46|inst4|q[21]~64\)) # (!\inst46|inst4|q\(22) & ((\inst46|inst4|q[21]~64\) # (GND)))
-- \inst46|inst4|q[22]~66\ = CARRY((!\inst46|inst4|q[21]~64\) # (!\inst46|inst4|q\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(22),
	datad => VCC,
	cin => \inst46|inst4|q[21]~64\,
	combout => \inst46|inst4|q[22]~65_combout\,
	cout => \inst46|inst4|q[22]~66\);

-- Location: FF_X19_Y15_N21
\inst46|inst4|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[22]~65_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(22));

-- Location: LCCOMB_X19_Y15_N22
\inst46|inst4|q[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[23]~67_combout\ = \inst46|inst4|q\(23) $ (!\inst46|inst4|q[22]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(23),
	cin => \inst46|inst4|q[22]~66\,
	combout => \inst46|inst4|q[23]~67_combout\);

-- Location: FF_X19_Y15_N23
\inst46|inst4|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[23]~67_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(23));

-- Location: LCCOMB_X19_Y15_N24
\inst46|inst4|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|_~6_combout\ = (\inst46|inst4|q\(20) & (!\inst46|inst4|q\(22) & (\inst46|inst4|q\(23) & \inst46|inst4|q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(20),
	datab => \inst46|inst4|q\(22),
	datac => \inst46|inst4|q\(23),
	datad => \inst46|inst4|q\(21),
	combout => \inst46|inst4|_~6_combout\);

-- Location: LCCOMB_X19_Y16_N4
\inst46|inst4|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|_~7_combout\ = (!\inst46|inst4|q\(0) & (((!\inst46|inst4|_~4_combout\) # (!\inst46|inst4|_~6_combout\)) # (!\inst46|inst4|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|_~5_combout\,
	datab => \inst46|inst4|_~6_combout\,
	datac => \inst46|inst4|q\(0),
	datad => \inst46|inst4|_~4_combout\,
	combout => \inst46|inst4|_~7_combout\);

-- Location: FF_X19_Y16_N5
\inst46|inst4|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(0));

-- Location: LCCOMB_X19_Y16_N10
\inst46|inst4|q[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[1]~23_combout\ = (\inst46|inst4|q\(1) & (\inst46|inst4|q\(0) $ (VCC))) # (!\inst46|inst4|q\(1) & (\inst46|inst4|q\(0) & VCC))
-- \inst46|inst4|q[1]~24\ = CARRY((\inst46|inst4|q\(1) & \inst46|inst4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(1),
	datab => \inst46|inst4|q\(0),
	datad => VCC,
	combout => \inst46|inst4|q[1]~23_combout\,
	cout => \inst46|inst4|q[1]~24\);

-- Location: FF_X19_Y16_N11
\inst46|inst4|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[1]~23_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(1));

-- Location: LCCOMB_X19_Y16_N12
\inst46|inst4|q[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[2]~25_combout\ = (\inst46|inst4|q\(2) & (!\inst46|inst4|q[1]~24\)) # (!\inst46|inst4|q\(2) & ((\inst46|inst4|q[1]~24\) # (GND)))
-- \inst46|inst4|q[2]~26\ = CARRY((!\inst46|inst4|q[1]~24\) # (!\inst46|inst4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(2),
	datad => VCC,
	cin => \inst46|inst4|q[1]~24\,
	combout => \inst46|inst4|q[2]~25_combout\,
	cout => \inst46|inst4|q[2]~26\);

-- Location: FF_X19_Y16_N13
\inst46|inst4|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[2]~25_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(2));

-- Location: LCCOMB_X19_Y16_N14
\inst46|inst4|q[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[3]~27_combout\ = (\inst46|inst4|q\(3) & (\inst46|inst4|q[2]~26\ $ (GND))) # (!\inst46|inst4|q\(3) & (!\inst46|inst4|q[2]~26\ & VCC))
-- \inst46|inst4|q[3]~28\ = CARRY((\inst46|inst4|q\(3) & !\inst46|inst4|q[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(3),
	datad => VCC,
	cin => \inst46|inst4|q[2]~26\,
	combout => \inst46|inst4|q[3]~27_combout\,
	cout => \inst46|inst4|q[3]~28\);

-- Location: FF_X19_Y16_N15
\inst46|inst4|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[3]~27_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(3));

-- Location: LCCOMB_X19_Y16_N16
\inst46|inst4|q[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[4]~29_combout\ = (\inst46|inst4|q\(4) & (!\inst46|inst4|q[3]~28\)) # (!\inst46|inst4|q\(4) & ((\inst46|inst4|q[3]~28\) # (GND)))
-- \inst46|inst4|q[4]~30\ = CARRY((!\inst46|inst4|q[3]~28\) # (!\inst46|inst4|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(4),
	datad => VCC,
	cin => \inst46|inst4|q[3]~28\,
	combout => \inst46|inst4|q[4]~29_combout\,
	cout => \inst46|inst4|q[4]~30\);

-- Location: FF_X19_Y16_N17
\inst46|inst4|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[4]~29_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(4));

-- Location: LCCOMB_X19_Y16_N18
\inst46|inst4|q[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[5]~31_combout\ = (\inst46|inst4|q\(5) & (\inst46|inst4|q[4]~30\ $ (GND))) # (!\inst46|inst4|q\(5) & (!\inst46|inst4|q[4]~30\ & VCC))
-- \inst46|inst4|q[5]~32\ = CARRY((\inst46|inst4|q\(5) & !\inst46|inst4|q[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(5),
	datad => VCC,
	cin => \inst46|inst4|q[4]~30\,
	combout => \inst46|inst4|q[5]~31_combout\,
	cout => \inst46|inst4|q[5]~32\);

-- Location: FF_X19_Y16_N19
\inst46|inst4|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[5]~31_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(5));

-- Location: LCCOMB_X19_Y16_N20
\inst46|inst4|q[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[6]~33_combout\ = (\inst46|inst4|q\(6) & (!\inst46|inst4|q[5]~32\)) # (!\inst46|inst4|q\(6) & ((\inst46|inst4|q[5]~32\) # (GND)))
-- \inst46|inst4|q[6]~34\ = CARRY((!\inst46|inst4|q[5]~32\) # (!\inst46|inst4|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(6),
	datad => VCC,
	cin => \inst46|inst4|q[5]~32\,
	combout => \inst46|inst4|q[6]~33_combout\,
	cout => \inst46|inst4|q[6]~34\);

-- Location: FF_X19_Y16_N21
\inst46|inst4|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[6]~33_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(6));

-- Location: LCCOMB_X19_Y16_N22
\inst46|inst4|q[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[7]~35_combout\ = (\inst46|inst4|q\(7) & (\inst46|inst4|q[6]~34\ $ (GND))) # (!\inst46|inst4|q\(7) & (!\inst46|inst4|q[6]~34\ & VCC))
-- \inst46|inst4|q[7]~36\ = CARRY((\inst46|inst4|q\(7) & !\inst46|inst4|q[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(7),
	datad => VCC,
	cin => \inst46|inst4|q[6]~34\,
	combout => \inst46|inst4|q[7]~35_combout\,
	cout => \inst46|inst4|q[7]~36\);

-- Location: FF_X19_Y16_N23
\inst46|inst4|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[7]~35_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(7));

-- Location: LCCOMB_X19_Y16_N24
\inst46|inst4|q[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[8]~37_combout\ = (\inst46|inst4|q\(8) & (!\inst46|inst4|q[7]~36\)) # (!\inst46|inst4|q\(8) & ((\inst46|inst4|q[7]~36\) # (GND)))
-- \inst46|inst4|q[8]~38\ = CARRY((!\inst46|inst4|q[7]~36\) # (!\inst46|inst4|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(8),
	datad => VCC,
	cin => \inst46|inst4|q[7]~36\,
	combout => \inst46|inst4|q[8]~37_combout\,
	cout => \inst46|inst4|q[8]~38\);

-- Location: FF_X19_Y16_N25
\inst46|inst4|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[8]~37_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(8));

-- Location: LCCOMB_X19_Y16_N26
\inst46|inst4|q[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[9]~39_combout\ = (\inst46|inst4|q\(9) & (\inst46|inst4|q[8]~38\ $ (GND))) # (!\inst46|inst4|q\(9) & (!\inst46|inst4|q[8]~38\ & VCC))
-- \inst46|inst4|q[9]~40\ = CARRY((\inst46|inst4|q\(9) & !\inst46|inst4|q[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(9),
	datad => VCC,
	cin => \inst46|inst4|q[8]~38\,
	combout => \inst46|inst4|q[9]~39_combout\,
	cout => \inst46|inst4|q[9]~40\);

-- Location: FF_X19_Y16_N27
\inst46|inst4|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[9]~39_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(9));

-- Location: LCCOMB_X19_Y16_N28
\inst46|inst4|q[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[10]~41_combout\ = (\inst46|inst4|q\(10) & (!\inst46|inst4|q[9]~40\)) # (!\inst46|inst4|q\(10) & ((\inst46|inst4|q[9]~40\) # (GND)))
-- \inst46|inst4|q[10]~42\ = CARRY((!\inst46|inst4|q[9]~40\) # (!\inst46|inst4|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(10),
	datad => VCC,
	cin => \inst46|inst4|q[9]~40\,
	combout => \inst46|inst4|q[10]~41_combout\,
	cout => \inst46|inst4|q[10]~42\);

-- Location: FF_X19_Y16_N29
\inst46|inst4|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[10]~41_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(10));

-- Location: LCCOMB_X19_Y16_N30
\inst46|inst4|q[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[11]~43_combout\ = (\inst46|inst4|q\(11) & (\inst46|inst4|q[10]~42\ $ (GND))) # (!\inst46|inst4|q\(11) & (!\inst46|inst4|q[10]~42\ & VCC))
-- \inst46|inst4|q[11]~44\ = CARRY((\inst46|inst4|q\(11) & !\inst46|inst4|q[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(11),
	datad => VCC,
	cin => \inst46|inst4|q[10]~42\,
	combout => \inst46|inst4|q[11]~43_combout\,
	cout => \inst46|inst4|q[11]~44\);

-- Location: FF_X19_Y16_N31
\inst46|inst4|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[11]~43_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(11));

-- Location: LCCOMB_X19_Y15_N0
\inst46|inst4|q[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[12]~45_combout\ = (\inst46|inst4|q\(12) & (!\inst46|inst4|q[11]~44\)) # (!\inst46|inst4|q\(12) & ((\inst46|inst4|q[11]~44\) # (GND)))
-- \inst46|inst4|q[12]~46\ = CARRY((!\inst46|inst4|q[11]~44\) # (!\inst46|inst4|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(12),
	datad => VCC,
	cin => \inst46|inst4|q[11]~44\,
	combout => \inst46|inst4|q[12]~45_combout\,
	cout => \inst46|inst4|q[12]~46\);

-- Location: FF_X19_Y15_N1
\inst46|inst4|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[12]~45_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(12));

-- Location: LCCOMB_X19_Y15_N2
\inst46|inst4|q[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[13]~47_combout\ = (\inst46|inst4|q\(13) & (\inst46|inst4|q[12]~46\ $ (GND))) # (!\inst46|inst4|q\(13) & (!\inst46|inst4|q[12]~46\ & VCC))
-- \inst46|inst4|q[13]~48\ = CARRY((\inst46|inst4|q\(13) & !\inst46|inst4|q[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(13),
	datad => VCC,
	cin => \inst46|inst4|q[12]~46\,
	combout => \inst46|inst4|q[13]~47_combout\,
	cout => \inst46|inst4|q[13]~48\);

-- Location: FF_X19_Y15_N3
\inst46|inst4|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[13]~47_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(13));

-- Location: LCCOMB_X19_Y15_N4
\inst46|inst4|q[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[14]~49_combout\ = (\inst46|inst4|q\(14) & (!\inst46|inst4|q[13]~48\)) # (!\inst46|inst4|q\(14) & ((\inst46|inst4|q[13]~48\) # (GND)))
-- \inst46|inst4|q[14]~50\ = CARRY((!\inst46|inst4|q[13]~48\) # (!\inst46|inst4|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(14),
	datad => VCC,
	cin => \inst46|inst4|q[13]~48\,
	combout => \inst46|inst4|q[14]~49_combout\,
	cout => \inst46|inst4|q[14]~50\);

-- Location: FF_X19_Y15_N5
\inst46|inst4|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[14]~49_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(14));

-- Location: LCCOMB_X19_Y15_N6
\inst46|inst4|q[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|q[15]~51_combout\ = (\inst46|inst4|q\(15) & (\inst46|inst4|q[14]~50\ $ (GND))) # (!\inst46|inst4|q\(15) & (!\inst46|inst4|q[14]~50\ & VCC))
-- \inst46|inst4|q[15]~52\ = CARRY((\inst46|inst4|q\(15) & !\inst46|inst4|q[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst4|q\(15),
	datad => VCC,
	cin => \inst46|inst4|q[14]~50\,
	combout => \inst46|inst4|q[15]~51_combout\,
	cout => \inst46|inst4|q[15]~52\);

-- Location: FF_X19_Y15_N7
\inst46|inst4|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[15]~51_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(15));

-- Location: FF_X19_Y15_N9
\inst46|inst4|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|q[16]~53_combout\,
	sclr => \inst46|inst4|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|q\(16));

-- Location: LCCOMB_X18_Y15_N12
\inst46|inst4|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|_~5_combout\ = (!\inst46|inst4|q\(16) & (\inst46|inst4|q\(19) & (\inst46|inst4|q\(18) & \inst46|inst4|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|q\(16),
	datab => \inst46|inst4|q\(19),
	datac => \inst46|inst4|q\(18),
	datad => \inst46|inst4|q\(17),
	combout => \inst46|inst4|_~5_combout\);

-- Location: LCCOMB_X19_Y15_N28
\inst46|inst4|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst4|aux_tff~1_combout\ = \inst46|inst4|aux_tff~q\ $ (((\inst46|inst4|_~5_combout\ & (\inst46|inst4|_~6_combout\ & \inst46|inst4|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst4|_~5_combout\,
	datab => \inst46|inst4|_~6_combout\,
	datac => \inst46|inst4|aux_tff~q\,
	datad => \inst46|inst4|_~4_combout\,
	combout => \inst46|inst4|aux_tff~1_combout\);

-- Location: FF_X19_Y15_N29
\inst46|inst4|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst4|aux_tff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst4|aux_tff~q\);

-- Location: LCCOMB_X19_Y19_N22
\inst46|inst5|force_off[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst5|force_off[3]~1_combout\ = (!\inst39|q\(0) & (!\inst39|q\(1) & (!\inst46|inst4|aux_tff~q\ & \inst39|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|q\(0),
	datab => \inst39|q\(1),
	datac => \inst46|inst4|aux_tff~q\,
	datad => \inst39|_~0_combout\,
	combout => \inst46|inst5|force_off[3]~1_combout\);

-- Location: LCCOMB_X19_Y21_N8
\inst46|inst6|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|_~1_combout\ = (!\inst46|inst6|q\(6) & (\inst46|inst6|q\(4) & (!\inst46|inst6|q\(7) & !\inst46|inst6|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(6),
	datab => \inst46|inst6|q\(4),
	datac => \inst46|inst6|q\(7),
	datad => \inst46|inst6|q\(5),
	combout => \inst46|inst6|_~1_combout\);

-- Location: LCCOMB_X19_Y20_N26
\inst46|inst6|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|_~3_combout\ = (!\inst46|inst6|q\(15) & (!\inst46|inst6|q\(13) & (\inst46|inst6|q\(14) & \inst46|inst6|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(15),
	datab => \inst46|inst6|q\(13),
	datac => \inst46|inst6|q\(14),
	datad => \inst46|inst6|q\(12),
	combout => \inst46|inst6|_~3_combout\);

-- Location: LCCOMB_X19_Y21_N6
\inst46|inst6|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|_~2_combout\ = (\inst46|inst6|q\(9) & (\inst46|inst6|q\(10) & (\inst46|inst6|q\(11) & !\inst46|inst6|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(9),
	datab => \inst46|inst6|q\(10),
	datac => \inst46|inst6|q\(11),
	datad => \inst46|inst6|q\(8),
	combout => \inst46|inst6|_~2_combout\);

-- Location: LCCOMB_X19_Y21_N2
\inst46|inst6|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|_~0_combout\ = (!\inst46|inst6|q\(1) & (!\inst46|inst6|q\(3) & (!\inst46|inst6|q\(0) & !\inst46|inst6|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(1),
	datab => \inst46|inst6|q\(3),
	datac => \inst46|inst6|q\(0),
	datad => \inst46|inst6|q\(2),
	combout => \inst46|inst6|_~0_combout\);

-- Location: LCCOMB_X19_Y20_N28
\inst46|inst6|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|_~4_combout\ = (\inst46|inst6|_~1_combout\ & (\inst46|inst6|_~3_combout\ & (\inst46|inst6|_~2_combout\ & \inst46|inst6|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|_~1_combout\,
	datab => \inst46|inst6|_~3_combout\,
	datac => \inst46|inst6|_~2_combout\,
	datad => \inst46|inst6|_~0_combout\,
	combout => \inst46|inst6|_~4_combout\);

-- Location: LCCOMB_X19_Y20_N12
\inst46|inst6|q[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[18]~56_combout\ = (\inst46|inst6|q\(18) & (!\inst46|inst6|q[17]~55\)) # (!\inst46|inst6|q\(18) & ((\inst46|inst6|q[17]~55\) # (GND)))
-- \inst46|inst6|q[18]~57\ = CARRY((!\inst46|inst6|q[17]~55\) # (!\inst46|inst6|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(18),
	datad => VCC,
	cin => \inst46|inst6|q[17]~55\,
	combout => \inst46|inst6|q[18]~56_combout\,
	cout => \inst46|inst6|q[18]~57\);

-- Location: LCCOMB_X19_Y20_N14
\inst46|inst6|q[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[19]~58_combout\ = (\inst46|inst6|q\(19) & (\inst46|inst6|q[18]~57\ $ (GND))) # (!\inst46|inst6|q\(19) & (!\inst46|inst6|q[18]~57\ & VCC))
-- \inst46|inst6|q[19]~59\ = CARRY((\inst46|inst6|q\(19) & !\inst46|inst6|q[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(19),
	datad => VCC,
	cin => \inst46|inst6|q[18]~57\,
	combout => \inst46|inst6|q[19]~58_combout\,
	cout => \inst46|inst6|q[19]~59\);

-- Location: LCCOMB_X19_Y20_N30
\inst46|inst6|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|_~8_combout\ = (\inst46|inst6|_~6_combout\ & (\inst46|inst6|_~5_combout\ & \inst46|inst6|_~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|_~6_combout\,
	datac => \inst46|inst6|_~5_combout\,
	datad => \inst46|inst6|_~4_combout\,
	combout => \inst46|inst6|_~8_combout\);

-- Location: FF_X19_Y20_N15
\inst46|inst6|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[19]~58_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(19));

-- Location: LCCOMB_X19_Y20_N16
\inst46|inst6|q[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[20]~60_combout\ = (\inst46|inst6|q\(20) & (!\inst46|inst6|q[19]~59\)) # (!\inst46|inst6|q\(20) & ((\inst46|inst6|q[19]~59\) # (GND)))
-- \inst46|inst6|q[20]~61\ = CARRY((!\inst46|inst6|q[19]~59\) # (!\inst46|inst6|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(20),
	datad => VCC,
	cin => \inst46|inst6|q[19]~59\,
	combout => \inst46|inst6|q[20]~60_combout\,
	cout => \inst46|inst6|q[20]~61\);

-- Location: FF_X19_Y20_N17
\inst46|inst6|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[20]~60_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(20));

-- Location: LCCOMB_X19_Y20_N18
\inst46|inst6|q[21]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[21]~62_combout\ = (\inst46|inst6|q\(21) & (\inst46|inst6|q[20]~61\ $ (GND))) # (!\inst46|inst6|q\(21) & (!\inst46|inst6|q[20]~61\ & VCC))
-- \inst46|inst6|q[21]~63\ = CARRY((\inst46|inst6|q\(21) & !\inst46|inst6|q[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(21),
	datad => VCC,
	cin => \inst46|inst6|q[20]~61\,
	combout => \inst46|inst6|q[21]~62_combout\,
	cout => \inst46|inst6|q[21]~63\);

-- Location: FF_X19_Y20_N19
\inst46|inst6|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[21]~62_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(21));

-- Location: LCCOMB_X19_Y20_N20
\inst46|inst6|q[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[22]~64_combout\ = \inst46|inst6|q[21]~63\ $ (\inst46|inst6|q\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst46|inst6|q\(22),
	cin => \inst46|inst6|q[21]~63\,
	combout => \inst46|inst6|q[22]~64_combout\);

-- Location: FF_X19_Y20_N21
\inst46|inst6|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[22]~64_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(22));

-- Location: LCCOMB_X19_Y20_N24
\inst46|inst6|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|_~6_combout\ = (\inst46|inst6|q\(22) & (!\inst46|inst6|q\(21) & \inst46|inst6|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(22),
	datac => \inst46|inst6|q\(21),
	datad => \inst46|inst6|q\(20),
	combout => \inst46|inst6|_~6_combout\);

-- Location: LCCOMB_X19_Y21_N4
\inst46|inst6|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|_~7_combout\ = (!\inst46|inst6|q\(0) & (((!\inst46|inst6|_~6_combout\) # (!\inst46|inst6|_~4_combout\)) # (!\inst46|inst6|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|_~5_combout\,
	datab => \inst46|inst6|_~4_combout\,
	datac => \inst46|inst6|q\(0),
	datad => \inst46|inst6|_~6_combout\,
	combout => \inst46|inst6|_~7_combout\);

-- Location: FF_X19_Y21_N5
\inst46|inst6|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(0));

-- Location: LCCOMB_X19_Y21_N10
\inst46|inst6|q[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[1]~22_combout\ = (\inst46|inst6|q\(1) & (\inst46|inst6|q\(0) $ (VCC))) # (!\inst46|inst6|q\(1) & (\inst46|inst6|q\(0) & VCC))
-- \inst46|inst6|q[1]~23\ = CARRY((\inst46|inst6|q\(1) & \inst46|inst6|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(1),
	datab => \inst46|inst6|q\(0),
	datad => VCC,
	combout => \inst46|inst6|q[1]~22_combout\,
	cout => \inst46|inst6|q[1]~23\);

-- Location: FF_X19_Y21_N11
\inst46|inst6|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[1]~22_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(1));

-- Location: LCCOMB_X19_Y21_N12
\inst46|inst6|q[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[2]~24_combout\ = (\inst46|inst6|q\(2) & (!\inst46|inst6|q[1]~23\)) # (!\inst46|inst6|q\(2) & ((\inst46|inst6|q[1]~23\) # (GND)))
-- \inst46|inst6|q[2]~25\ = CARRY((!\inst46|inst6|q[1]~23\) # (!\inst46|inst6|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(2),
	datad => VCC,
	cin => \inst46|inst6|q[1]~23\,
	combout => \inst46|inst6|q[2]~24_combout\,
	cout => \inst46|inst6|q[2]~25\);

-- Location: FF_X19_Y21_N13
\inst46|inst6|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[2]~24_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(2));

-- Location: LCCOMB_X19_Y21_N14
\inst46|inst6|q[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[3]~26_combout\ = (\inst46|inst6|q\(3) & (\inst46|inst6|q[2]~25\ $ (GND))) # (!\inst46|inst6|q\(3) & (!\inst46|inst6|q[2]~25\ & VCC))
-- \inst46|inst6|q[3]~27\ = CARRY((\inst46|inst6|q\(3) & !\inst46|inst6|q[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(3),
	datad => VCC,
	cin => \inst46|inst6|q[2]~25\,
	combout => \inst46|inst6|q[3]~26_combout\,
	cout => \inst46|inst6|q[3]~27\);

-- Location: FF_X19_Y21_N15
\inst46|inst6|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[3]~26_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(3));

-- Location: LCCOMB_X19_Y21_N16
\inst46|inst6|q[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[4]~28_combout\ = (\inst46|inst6|q\(4) & (!\inst46|inst6|q[3]~27\)) # (!\inst46|inst6|q\(4) & ((\inst46|inst6|q[3]~27\) # (GND)))
-- \inst46|inst6|q[4]~29\ = CARRY((!\inst46|inst6|q[3]~27\) # (!\inst46|inst6|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(4),
	datad => VCC,
	cin => \inst46|inst6|q[3]~27\,
	combout => \inst46|inst6|q[4]~28_combout\,
	cout => \inst46|inst6|q[4]~29\);

-- Location: FF_X19_Y21_N17
\inst46|inst6|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[4]~28_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(4));

-- Location: LCCOMB_X19_Y21_N18
\inst46|inst6|q[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[5]~30_combout\ = (\inst46|inst6|q\(5) & (\inst46|inst6|q[4]~29\ $ (GND))) # (!\inst46|inst6|q\(5) & (!\inst46|inst6|q[4]~29\ & VCC))
-- \inst46|inst6|q[5]~31\ = CARRY((\inst46|inst6|q\(5) & !\inst46|inst6|q[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(5),
	datad => VCC,
	cin => \inst46|inst6|q[4]~29\,
	combout => \inst46|inst6|q[5]~30_combout\,
	cout => \inst46|inst6|q[5]~31\);

-- Location: FF_X19_Y21_N19
\inst46|inst6|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[5]~30_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(5));

-- Location: LCCOMB_X19_Y21_N20
\inst46|inst6|q[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[6]~32_combout\ = (\inst46|inst6|q\(6) & (!\inst46|inst6|q[5]~31\)) # (!\inst46|inst6|q\(6) & ((\inst46|inst6|q[5]~31\) # (GND)))
-- \inst46|inst6|q[6]~33\ = CARRY((!\inst46|inst6|q[5]~31\) # (!\inst46|inst6|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(6),
	datad => VCC,
	cin => \inst46|inst6|q[5]~31\,
	combout => \inst46|inst6|q[6]~32_combout\,
	cout => \inst46|inst6|q[6]~33\);

-- Location: FF_X19_Y21_N21
\inst46|inst6|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[6]~32_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(6));

-- Location: LCCOMB_X19_Y21_N22
\inst46|inst6|q[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[7]~34_combout\ = (\inst46|inst6|q\(7) & (\inst46|inst6|q[6]~33\ $ (GND))) # (!\inst46|inst6|q\(7) & (!\inst46|inst6|q[6]~33\ & VCC))
-- \inst46|inst6|q[7]~35\ = CARRY((\inst46|inst6|q\(7) & !\inst46|inst6|q[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(7),
	datad => VCC,
	cin => \inst46|inst6|q[6]~33\,
	combout => \inst46|inst6|q[7]~34_combout\,
	cout => \inst46|inst6|q[7]~35\);

-- Location: FF_X19_Y21_N23
\inst46|inst6|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[7]~34_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(7));

-- Location: LCCOMB_X19_Y21_N24
\inst46|inst6|q[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[8]~36_combout\ = (\inst46|inst6|q\(8) & (!\inst46|inst6|q[7]~35\)) # (!\inst46|inst6|q\(8) & ((\inst46|inst6|q[7]~35\) # (GND)))
-- \inst46|inst6|q[8]~37\ = CARRY((!\inst46|inst6|q[7]~35\) # (!\inst46|inst6|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(8),
	datad => VCC,
	cin => \inst46|inst6|q[7]~35\,
	combout => \inst46|inst6|q[8]~36_combout\,
	cout => \inst46|inst6|q[8]~37\);

-- Location: FF_X19_Y21_N25
\inst46|inst6|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[8]~36_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(8));

-- Location: LCCOMB_X19_Y21_N26
\inst46|inst6|q[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[9]~38_combout\ = (\inst46|inst6|q\(9) & (\inst46|inst6|q[8]~37\ $ (GND))) # (!\inst46|inst6|q\(9) & (!\inst46|inst6|q[8]~37\ & VCC))
-- \inst46|inst6|q[9]~39\ = CARRY((\inst46|inst6|q\(9) & !\inst46|inst6|q[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(9),
	datad => VCC,
	cin => \inst46|inst6|q[8]~37\,
	combout => \inst46|inst6|q[9]~38_combout\,
	cout => \inst46|inst6|q[9]~39\);

-- Location: FF_X19_Y21_N27
\inst46|inst6|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[9]~38_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(9));

-- Location: LCCOMB_X19_Y21_N28
\inst46|inst6|q[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[10]~40_combout\ = (\inst46|inst6|q\(10) & (!\inst46|inst6|q[9]~39\)) # (!\inst46|inst6|q\(10) & ((\inst46|inst6|q[9]~39\) # (GND)))
-- \inst46|inst6|q[10]~41\ = CARRY((!\inst46|inst6|q[9]~39\) # (!\inst46|inst6|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(10),
	datad => VCC,
	cin => \inst46|inst6|q[9]~39\,
	combout => \inst46|inst6|q[10]~40_combout\,
	cout => \inst46|inst6|q[10]~41\);

-- Location: FF_X19_Y21_N29
\inst46|inst6|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[10]~40_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(10));

-- Location: LCCOMB_X19_Y21_N30
\inst46|inst6|q[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[11]~42_combout\ = (\inst46|inst6|q\(11) & (\inst46|inst6|q[10]~41\ $ (GND))) # (!\inst46|inst6|q\(11) & (!\inst46|inst6|q[10]~41\ & VCC))
-- \inst46|inst6|q[11]~43\ = CARRY((\inst46|inst6|q\(11) & !\inst46|inst6|q[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(11),
	datad => VCC,
	cin => \inst46|inst6|q[10]~41\,
	combout => \inst46|inst6|q[11]~42_combout\,
	cout => \inst46|inst6|q[11]~43\);

-- Location: FF_X19_Y21_N31
\inst46|inst6|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[11]~42_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(11));

-- Location: LCCOMB_X19_Y20_N0
\inst46|inst6|q[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[12]~44_combout\ = (\inst46|inst6|q\(12) & (!\inst46|inst6|q[11]~43\)) # (!\inst46|inst6|q\(12) & ((\inst46|inst6|q[11]~43\) # (GND)))
-- \inst46|inst6|q[12]~45\ = CARRY((!\inst46|inst6|q[11]~43\) # (!\inst46|inst6|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(12),
	datad => VCC,
	cin => \inst46|inst6|q[11]~43\,
	combout => \inst46|inst6|q[12]~44_combout\,
	cout => \inst46|inst6|q[12]~45\);

-- Location: FF_X19_Y20_N1
\inst46|inst6|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[12]~44_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(12));

-- Location: LCCOMB_X19_Y20_N2
\inst46|inst6|q[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[13]~46_combout\ = (\inst46|inst6|q\(13) & (\inst46|inst6|q[12]~45\ $ (GND))) # (!\inst46|inst6|q\(13) & (!\inst46|inst6|q[12]~45\ & VCC))
-- \inst46|inst6|q[13]~47\ = CARRY((\inst46|inst6|q\(13) & !\inst46|inst6|q[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(13),
	datad => VCC,
	cin => \inst46|inst6|q[12]~45\,
	combout => \inst46|inst6|q[13]~46_combout\,
	cout => \inst46|inst6|q[13]~47\);

-- Location: FF_X19_Y20_N3
\inst46|inst6|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[13]~46_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(13));

-- Location: LCCOMB_X19_Y20_N4
\inst46|inst6|q[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[14]~48_combout\ = (\inst46|inst6|q\(14) & (!\inst46|inst6|q[13]~47\)) # (!\inst46|inst6|q\(14) & ((\inst46|inst6|q[13]~47\) # (GND)))
-- \inst46|inst6|q[14]~49\ = CARRY((!\inst46|inst6|q[13]~47\) # (!\inst46|inst6|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(14),
	datad => VCC,
	cin => \inst46|inst6|q[13]~47\,
	combout => \inst46|inst6|q[14]~48_combout\,
	cout => \inst46|inst6|q[14]~49\);

-- Location: FF_X19_Y20_N5
\inst46|inst6|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[14]~48_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(14));

-- Location: LCCOMB_X19_Y20_N6
\inst46|inst6|q[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[15]~50_combout\ = (\inst46|inst6|q\(15) & (\inst46|inst6|q[14]~49\ $ (GND))) # (!\inst46|inst6|q\(15) & (!\inst46|inst6|q[14]~49\ & VCC))
-- \inst46|inst6|q[15]~51\ = CARRY((\inst46|inst6|q\(15) & !\inst46|inst6|q[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(15),
	datad => VCC,
	cin => \inst46|inst6|q[14]~49\,
	combout => \inst46|inst6|q[15]~50_combout\,
	cout => \inst46|inst6|q[15]~51\);

-- Location: FF_X19_Y20_N7
\inst46|inst6|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[15]~50_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(15));

-- Location: LCCOMB_X19_Y20_N8
\inst46|inst6|q[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[16]~52_combout\ = (\inst46|inst6|q\(16) & (!\inst46|inst6|q[15]~51\)) # (!\inst46|inst6|q\(16) & ((\inst46|inst6|q[15]~51\) # (GND)))
-- \inst46|inst6|q[16]~53\ = CARRY((!\inst46|inst6|q[15]~51\) # (!\inst46|inst6|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst46|inst6|q\(16),
	datad => VCC,
	cin => \inst46|inst6|q[15]~51\,
	combout => \inst46|inst6|q[16]~52_combout\,
	cout => \inst46|inst6|q[16]~53\);

-- Location: FF_X19_Y20_N9
\inst46|inst6|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[16]~52_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(16));

-- Location: LCCOMB_X19_Y20_N10
\inst46|inst6|q[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|q[17]~54_combout\ = (\inst46|inst6|q\(17) & (\inst46|inst6|q[16]~53\ $ (GND))) # (!\inst46|inst6|q\(17) & (!\inst46|inst6|q[16]~53\ & VCC))
-- \inst46|inst6|q[17]~55\ = CARRY((\inst46|inst6|q\(17) & !\inst46|inst6|q[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(17),
	datad => VCC,
	cin => \inst46|inst6|q[16]~53\,
	combout => \inst46|inst6|q[17]~54_combout\,
	cout => \inst46|inst6|q[17]~55\);

-- Location: FF_X19_Y20_N11
\inst46|inst6|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[17]~54_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(17));

-- Location: FF_X19_Y20_N13
\inst46|inst6|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|q[18]~56_combout\,
	sclr => \inst46|inst6|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|q\(18));

-- Location: LCCOMB_X19_Y20_N22
\inst46|inst6|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|_~5_combout\ = (\inst46|inst6|q\(18) & (\inst46|inst6|q\(16) & (\inst46|inst6|q\(19) & \inst46|inst6|q\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|q\(18),
	datab => \inst46|inst6|q\(16),
	datac => \inst46|inst6|q\(19),
	datad => \inst46|inst6|q\(17),
	combout => \inst46|inst6|_~5_combout\);

-- Location: LCCOMB_X18_Y20_N4
\inst46|inst6|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst6|aux_tff~1_combout\ = \inst46|inst6|aux_tff~q\ $ (((\inst46|inst6|_~5_combout\ & (\inst46|inst6|_~6_combout\ & \inst46|inst6|_~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst6|_~5_combout\,
	datab => \inst46|inst6|_~6_combout\,
	datac => \inst46|inst6|aux_tff~q\,
	datad => \inst46|inst6|_~4_combout\,
	combout => \inst46|inst6|aux_tff~1_combout\);

-- Location: FF_X18_Y20_N5
\inst46|inst6|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst46|inst6|aux_tff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst46|inst6|aux_tff~q\);

-- Location: LCCOMB_X19_Y19_N24
\inst46|inst5|force_off[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst5|force_off[3]~0_combout\ = (!\inst46|inst6|aux_tff~q\ & ((\inst40|final_cont~3_combout\) # (\inst40|final_cont~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst40|final_cont~3_combout\,
	datac => \inst40|final_cont~14_combout\,
	datad => \inst46|inst6|aux_tff~q\,
	combout => \inst46|inst5|force_off[3]~0_combout\);

-- Location: LCCOMB_X19_Y19_N4
\inst46|inst5|alterna[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst5|alterna\(3) = (((\inst46|inst5|force_off[3]~1_combout\) # (\inst46|inst5|force_off[3]~0_combout\)) # (!\inst46|inst1|q\(1))) # (!\inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst1|q\(0),
	datab => \inst46|inst1|q\(1),
	datac => \inst46|inst5|force_off[3]~1_combout\,
	datad => \inst46|inst5|force_off[3]~0_combout\,
	combout => \inst46|inst5|alterna\(3));

-- Location: LCCOMB_X19_Y19_N26
\inst46|inst5|alterna[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst5|alterna[2]~4_combout\ = (!\inst46|inst1|q\(0) & ((\inst46|inst6|aux_tff~q\) # ((!\inst40|final_cont~3_combout\ & !\inst40|final_cont~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst1|q\(0),
	datab => \inst40|final_cont~3_combout\,
	datac => \inst40|final_cont~14_combout\,
	datad => \inst46|inst6|aux_tff~q\,
	combout => \inst46|inst5|alterna[2]~4_combout\);

-- Location: LCCOMB_X19_Y19_N0
\inst46|inst5|alterna[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst5|alterna\(2) = (((!\inst46|inst4|aux_tff~q\ & \inst37|_~0_combout\)) # (!\inst46|inst1|q\(1))) # (!\inst46|inst5|alterna[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst5|alterna[2]~4_combout\,
	datab => \inst46|inst1|q\(1),
	datac => \inst46|inst4|aux_tff~q\,
	datad => \inst37|_~0_combout\,
	combout => \inst46|inst5|alterna\(2));

-- Location: LCCOMB_X19_Y19_N30
\inst46|inst5|force_off[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst5|force_off[1]~2_combout\ = (!\inst39|q\(0) & (\inst39|q\(1) & (!\inst46|inst4|aux_tff~q\ & \inst39|_~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst39|q\(0),
	datab => \inst39|q\(1),
	datac => \inst46|inst4|aux_tff~q\,
	datad => \inst39|_~0_combout\,
	combout => \inst46|inst5|force_off[1]~2_combout\);

-- Location: LCCOMB_X19_Y19_N28
\inst46|inst5|alterna[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst5|alterna\(1) = ((\inst46|inst1|q\(1)) # ((\inst46|inst5|force_off[1]~2_combout\) # (\inst46|inst5|force_off[3]~0_combout\))) # (!\inst46|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst1|q\(0),
	datab => \inst46|inst1|q\(1),
	datac => \inst46|inst5|force_off[1]~2_combout\,
	datad => \inst46|inst5|force_off[3]~0_combout\,
	combout => \inst46|inst5|alterna\(1));

-- Location: LCCOMB_X19_Y19_N18
\inst46|inst5|alterna[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst46|inst5|alterna\(0) = ((\inst46|inst1|q\(1)) # ((!\inst46|inst4|aux_tff~q\ & \inst37|_~1_combout\))) # (!\inst46|inst5|alterna[2]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst5|alterna[2]~4_combout\,
	datab => \inst46|inst1|q\(1),
	datac => \inst46|inst4|aux_tff~q\,
	datad => \inst37|_~1_combout\,
	combout => \inst46|inst5|alterna\(0));

-- Location: LCCOMB_X26_Y16_N20
\inst24|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst24|q[0]~0_combout\ = \inst24|q\(0) $ (((\inst32|up_pulse~combout\) # ((!\inst20|inst|ff3~q\ & \inst39|btn2_reg~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst32|up_pulse~combout\,
	datab => \inst20|inst|ff3~q\,
	datac => \inst24|q\(0),
	datad => \inst39|btn2_reg~q\,
	combout => \inst24|q[0]~0_combout\);

-- Location: FF_X26_Y16_N21
\inst24|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst24|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst24|q\(0));

-- Location: LCCOMB_X28_Y18_N20
\inst11|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst11|_~0_combout\ = (!\inst20|inst1|ff3~q\ & ((\inst11|flag_q~q\) # (\inst50|resetcont_q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst1|ff3~q\,
	datac => \inst11|flag_q~q\,
	datad => \inst50|resetcont_q~q\,
	combout => \inst11|_~0_combout\);

-- Location: FF_X28_Y18_N21
\inst11|flag_q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst11|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11|flag_q~q\);

-- Location: LCCOMB_X25_Y17_N14
\inst31|cnt_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|cnt_out[1]~13_combout\ = (\inst34|q\(1) & (!\inst43|centena_q\(1) & (\inst49|q\(0) $ (!\inst49|q\(1))))) # (!\inst34|q\(1) & ((\inst49|q\(0) $ (\inst49|q\(1))) # (!\inst43|centena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|q\(1),
	datab => \inst43|centena_q\(1),
	datac => \inst49|q\(0),
	datad => \inst49|q\(1),
	combout => \inst31|cnt_out[1]~13_combout\);

-- Location: LCCOMB_X25_Y17_N0
\inst31|cnt_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|cnt_out[0]~15_combout\ = (\inst49|q\(0) & ((\inst49|q\(1) & (\inst43|centena_q\(0))) # (!\inst49|q\(1) & ((\inst34|q\(0)))))) # (!\inst49|q\(0) & ((\inst49|q\(1) & ((\inst34|q\(0)))) # (!\inst49|q\(1) & (\inst43|centena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(0),
	datab => \inst43|centena_q\(0),
	datac => \inst34|q\(0),
	datad => \inst49|q\(1),
	combout => \inst31|cnt_out[0]~15_combout\);

-- Location: LCCOMB_X25_Y16_N30
\inst31|cnt_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|cnt_out[2]~14_combout\ = (\inst49|q\(0) & ((\inst49|q\(1) & (\inst43|centena_q\(2))) # (!\inst49|q\(1) & ((\inst34|q\(2)))))) # (!\inst49|q\(0) & ((\inst49|q\(1) & ((\inst34|q\(2)))) # (!\inst49|q\(1) & (\inst43|centena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(0),
	datab => \inst49|q\(1),
	datac => \inst43|centena_q\(2),
	datad => \inst34|q\(2),
	combout => \inst31|cnt_out[2]~14_combout\);

-- Location: LCCOMB_X25_Y17_N24
\inst31|cnt_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|cnt_out[3]~12_combout\ = (\inst34|q\(3) & (!\inst43|centena_q\(3) & (\inst49|q\(1) $ (!\inst49|q\(0))))) # (!\inst34|q\(3) & ((\inst49|q\(1) $ (\inst49|q\(0))) # (!\inst43|centena_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst34|q\(3),
	datab => \inst49|q\(1),
	datac => \inst49|q\(0),
	datad => \inst43|centena_q\(3),
	combout => \inst31|cnt_out[3]~12_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst|segmento_out[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~35_combout\ = (!\inst46|inst5|alterna\(1) & \inst31|cnt_out[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst5|alterna\(1),
	datad => \inst31|cnt_out[3]~12_combout\,
	combout => \inst|segmento_out[2]~35_combout\);

-- Location: LCCOMB_X24_Y20_N18
\inst|segmento_out[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~36_combout\ = (\inst31|cnt_out[1]~13_combout\ & (\inst|segmento_out[2]~35_combout\ & (\inst31|cnt_out[0]~15_combout\ $ (\inst31|cnt_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|cnt_out[1]~13_combout\,
	datab => \inst31|cnt_out[0]~15_combout\,
	datac => \inst31|cnt_out[2]~14_combout\,
	datad => \inst|segmento_out[2]~35_combout\,
	combout => \inst|segmento_out[0]~36_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst31|mil_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|mil_out[2]~14_combout\ = (\inst35|q\(2) & ((\inst43|milhar_q\(2)) # (\inst49|q\(0) $ (\inst49|q\(1))))) # (!\inst35|q\(2) & (\inst43|milhar_q\(2) & (\inst49|q\(0) $ (!\inst49|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|q\(2),
	datab => \inst43|milhar_q\(2),
	datac => \inst49|q\(0),
	datad => \inst49|q\(1),
	combout => \inst31|mil_out[2]~14_combout\);

-- Location: LCCOMB_X23_Y17_N26
\inst31|mil_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|mil_out[3]~12_combout\ = (\inst35|q\(3) & (!\inst43|milhar_q\(3) & (\inst49|q\(0) $ (!\inst49|q\(1))))) # (!\inst35|q\(3) & ((\inst49|q\(0) $ (\inst49|q\(1))) # (!\inst43|milhar_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|q\(3),
	datab => \inst43|milhar_q\(3),
	datac => \inst49|q\(0),
	datad => \inst49|q\(1),
	combout => \inst31|mil_out[3]~12_combout\);

-- Location: LCCOMB_X22_Y20_N18
\inst|segmento_out[2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~37_combout\ = (\inst31|mil_out[3]~12_combout\ & !\inst46|inst5|alterna\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|mil_out[3]~12_combout\,
	datad => \inst46|inst5|alterna\(0),
	combout => \inst|segmento_out[2]~37_combout\);

-- Location: LCCOMB_X23_Y17_N8
\inst31|mil_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|mil_out[0]~15_combout\ = (\inst49|q\(1) & ((\inst49|q\(0) & ((\inst43|milhar_q\(0)))) # (!\inst49|q\(0) & (\inst35|q\(0))))) # (!\inst49|q\(1) & ((\inst49|q\(0) & (\inst35|q\(0))) # (!\inst49|q\(0) & ((\inst43|milhar_q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datab => \inst49|q\(0),
	datac => \inst35|q\(0),
	datad => \inst43|milhar_q\(0),
	combout => \inst31|mil_out[0]~15_combout\);

-- Location: LCCOMB_X23_Y17_N20
\inst31|mil_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|mil_out[1]~13_combout\ = (\inst35|q\(1) & (!\inst43|milhar_q\(1) & (\inst49|q\(1) $ (!\inst49|q\(0))))) # (!\inst35|q\(1) & ((\inst49|q\(1) $ (\inst49|q\(0))) # (!\inst43|milhar_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst35|q\(1),
	datab => \inst49|q\(1),
	datac => \inst49|q\(0),
	datad => \inst43|milhar_q\(1),
	combout => \inst31|mil_out[1]~13_combout\);

-- Location: LCCOMB_X22_Y20_N16
\inst|segmento_out[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~38_combout\ = (\inst|segmento_out[2]~37_combout\ & (\inst31|mil_out[1]~13_combout\ & (\inst31|mil_out[2]~14_combout\ $ (\inst31|mil_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|mil_out[2]~14_combout\,
	datab => \inst|segmento_out[2]~37_combout\,
	datac => \inst31|mil_out[0]~15_combout\,
	datad => \inst31|mil_out[1]~13_combout\,
	combout => \inst|segmento_out[0]~38_combout\);

-- Location: LCCOMB_X23_Y17_N16
\inst31|dzn_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|dzn_out[1]~13_combout\ = (\inst43|dezena_q\(1) & (!\inst33|q\(1) & (\inst49|q\(1) $ (\inst49|q\(0))))) # (!\inst43|dezena_q\(1) & ((\inst49|q\(1) $ (!\inst49|q\(0))) # (!\inst33|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|dezena_q\(1),
	datab => \inst49|q\(1),
	datac => \inst49|q\(0),
	datad => \inst33|q\(1),
	combout => \inst31|dzn_out[1]~13_combout\);

-- Location: LCCOMB_X25_Y16_N20
\inst31|dzn_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|dzn_out[3]~12_combout\ = (\inst43|dezena_q\(3) & (!\inst33|q\(3) & (\inst49|q\(0) $ (\inst49|q\(1))))) # (!\inst43|dezena_q\(3) & ((\inst49|q\(0) $ (!\inst49|q\(1))) # (!\inst33|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|dezena_q\(3),
	datab => \inst49|q\(0),
	datac => \inst49|q\(1),
	datad => \inst33|q\(3),
	combout => \inst31|dzn_out[3]~12_combout\);

-- Location: LCCOMB_X25_Y16_N14
\inst|segmento_out[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~33_combout\ = (!\inst46|inst5|alterna\(2) & \inst31|dzn_out[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst46|inst5|alterna\(2),
	datad => \inst31|dzn_out[3]~12_combout\,
	combout => \inst|segmento_out[2]~33_combout\);

-- Location: LCCOMB_X25_Y17_N30
\inst31|dzn_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|dzn_out[0]~15_combout\ = (\inst33|q\(0) & ((\inst43|dezena_q\(0)) # (\inst49|q\(1) $ (\inst49|q\(0))))) # (!\inst33|q\(0) & (\inst43|dezena_q\(0) & (\inst49|q\(1) $ (!\inst49|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|q\(0),
	datab => \inst49|q\(1),
	datac => \inst49|q\(0),
	datad => \inst43|dezena_q\(0),
	combout => \inst31|dzn_out[0]~15_combout\);

-- Location: LCCOMB_X25_Y17_N28
\inst31|dzn_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|dzn_out[2]~14_combout\ = (\inst43|dezena_q\(2) & ((\inst33|q\(2)) # (\inst49|q\(0) $ (!\inst49|q\(1))))) # (!\inst43|dezena_q\(2) & (\inst33|q\(2) & (\inst49|q\(0) $ (\inst49|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst43|dezena_q\(2),
	datab => \inst33|q\(2),
	datac => \inst49|q\(0),
	datad => \inst49|q\(1),
	combout => \inst31|dzn_out[2]~14_combout\);

-- Location: LCCOMB_X25_Y16_N28
\inst|segmento_out[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~34_combout\ = (\inst31|dzn_out[1]~13_combout\ & (\inst|segmento_out[2]~33_combout\ & (\inst31|dzn_out[0]~15_combout\ $ (\inst31|dzn_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|dzn_out[1]~13_combout\,
	datab => \inst|segmento_out[2]~33_combout\,
	datac => \inst31|dzn_out[0]~15_combout\,
	datad => \inst31|dzn_out[2]~14_combout\,
	combout => \inst|segmento_out[0]~34_combout\);

-- Location: LCCOMB_X23_Y20_N20
\inst|segmento_out[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~39_combout\ = (\inst|segmento_out[0]~36_combout\) # ((\inst|segmento_out[0]~38_combout\) # (\inst|segmento_out[0]~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|segmento_out[0]~36_combout\,
	datac => \inst|segmento_out[0]~38_combout\,
	datad => \inst|segmento_out[0]~34_combout\,
	combout => \inst|segmento_out[0]~39_combout\);

-- Location: LCCOMB_X22_Y20_N14
\inst|segmento_out[0]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~40_combout\ = (((!\inst46|inst5|alterna\(2)) # (!\inst46|inst5|alterna\(3))) # (!\inst46|inst5|alterna\(0))) # (!\inst46|inst5|alterna\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst5|alterna\(1),
	datab => \inst46|inst5|alterna\(0),
	datac => \inst46|inst5|alterna\(3),
	datad => \inst46|inst5|alterna\(2),
	combout => \inst|segmento_out[0]~40_combout\);

-- Location: LCCOMB_X22_Y20_N8
\inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|_~0_combout\ = (\inst46|inst5|alterna\(1) & (\inst46|inst5|alterna\(0) & (!\inst46|inst5|alterna\(3) & \inst46|inst5|alterna\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst5|alterna\(1),
	datab => \inst46|inst5|alterna\(0),
	datac => \inst46|inst5|alterna\(3),
	datad => \inst46|inst5|alterna\(2),
	combout => \inst|_~0_combout\);

-- Location: LCCOMB_X23_Y20_N16
\inst31|und_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|und_out[3]~12_combout\ = (\inst49|q\(1) & ((\inst49|q\(0) & ((!\inst43|unidade_q\(3)))) # (!\inst49|q\(0) & (!\inst32|q\(3))))) # (!\inst49|q\(1) & ((\inst49|q\(0) & (!\inst32|q\(3))) # (!\inst49|q\(0) & ((!\inst43|unidade_q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datab => \inst32|q\(3),
	datac => \inst43|unidade_q\(3),
	datad => \inst49|q\(0),
	combout => \inst31|und_out[3]~12_combout\);

-- Location: LCCOMB_X23_Y20_N30
\inst|segmento_out[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~31_combout\ = (\inst|_~0_combout\ & \inst31|und_out[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~0_combout\,
	datad => \inst31|und_out[3]~12_combout\,
	combout => \inst|segmento_out[2]~31_combout\);

-- Location: LCCOMB_X23_Y20_N4
\inst31|und_out[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|und_out[0]~15_combout\ = (\inst49|q\(1) & ((\inst49|q\(0) & (\inst43|unidade_q\(0))) # (!\inst49|q\(0) & ((\inst32|q\(0)))))) # (!\inst49|q\(1) & ((\inst49|q\(0) & ((\inst32|q\(0)))) # (!\inst49|q\(0) & (\inst43|unidade_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datab => \inst49|q\(0),
	datac => \inst43|unidade_q\(0),
	datad => \inst32|q\(0),
	combout => \inst31|und_out[0]~15_combout\);

-- Location: LCCOMB_X23_Y20_N22
\inst31|und_out[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|und_out[2]~14_combout\ = (\inst49|q\(1) & ((\inst49|q\(0) & (\inst43|unidade_q\(2))) # (!\inst49|q\(0) & ((\inst32|q\(2)))))) # (!\inst49|q\(1) & ((\inst49|q\(0) & ((\inst32|q\(2)))) # (!\inst49|q\(0) & (\inst43|unidade_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datab => \inst49|q\(0),
	datac => \inst43|unidade_q\(2),
	datad => \inst32|q\(2),
	combout => \inst31|und_out[2]~14_combout\);

-- Location: LCCOMB_X23_Y20_N28
\inst31|und_out[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst31|und_out[1]~13_combout\ = (\inst49|q\(1) & ((\inst49|q\(0) & ((!\inst43|unidade_q\(1)))) # (!\inst49|q\(0) & (!\inst32|q\(1))))) # (!\inst49|q\(1) & ((\inst49|q\(0) & (!\inst32|q\(1))) # (!\inst49|q\(0) & ((!\inst43|unidade_q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst49|q\(1),
	datab => \inst49|q\(0),
	datac => \inst32|q\(1),
	datad => \inst43|unidade_q\(1),
	combout => \inst31|und_out[1]~13_combout\);

-- Location: LCCOMB_X23_Y20_N26
\inst|segmento_out[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~32_combout\ = (\inst|segmento_out[2]~31_combout\ & (\inst31|und_out[1]~13_combout\ & (\inst31|und_out[0]~15_combout\ $ (\inst31|und_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[2]~31_combout\,
	datab => \inst31|und_out[0]~15_combout\,
	datac => \inst31|und_out[2]~14_combout\,
	datad => \inst31|und_out[1]~13_combout\,
	combout => \inst|segmento_out[0]~32_combout\);

-- Location: LCCOMB_X22_Y20_N4
\inst|segmento_out[0]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~41_combout\ = (\inst|segmento_out[0]~39_combout\) # ((\inst|segmento_out[0]~32_combout\) # (!\inst|segmento_out[0]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[0]~39_combout\,
	datac => \inst|segmento_out[0]~40_combout\,
	datad => \inst|segmento_out[0]~32_combout\,
	combout => \inst|segmento_out[0]~41_combout\);

-- Location: LCCOMB_X25_Y16_N4
\inst|segmento_out[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~44_combout\ = (\inst31|dzn_out[2]~14_combout\ & (\inst31|dzn_out[1]~13_combout\ $ (!\inst31|dzn_out[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|dzn_out[1]~13_combout\,
	datac => \inst31|dzn_out[0]~15_combout\,
	datad => \inst31|dzn_out[2]~14_combout\,
	combout => \inst|segmento_out[1]~44_combout\);

-- Location: LCCOMB_X22_Y20_N2
\inst|segmento_out[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~43_combout\ = (\inst31|mil_out[2]~14_combout\ & (\inst|segmento_out[2]~37_combout\ & (\inst31|mil_out[0]~15_combout\ $ (!\inst31|mil_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|mil_out[2]~14_combout\,
	datab => \inst|segmento_out[2]~37_combout\,
	datac => \inst31|mil_out[0]~15_combout\,
	datad => \inst31|mil_out[1]~13_combout\,
	combout => \inst|segmento_out[1]~43_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst|segmento_out[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~42_combout\ = (\inst31|cnt_out[2]~14_combout\ & (\inst|segmento_out[2]~35_combout\ & (\inst31|cnt_out[1]~13_combout\ $ (!\inst31|cnt_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|cnt_out[1]~13_combout\,
	datab => \inst31|cnt_out[0]~15_combout\,
	datac => \inst31|cnt_out[2]~14_combout\,
	datad => \inst|segmento_out[2]~35_combout\,
	combout => \inst|segmento_out[1]~42_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst|segmento_out[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~45_combout\ = (\inst|segmento_out[1]~43_combout\) # ((\inst|segmento_out[1]~42_combout\) # ((\inst|segmento_out[1]~44_combout\ & \inst|segmento_out[2]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[1]~44_combout\,
	datab => \inst|segmento_out[1]~43_combout\,
	datac => \inst|segmento_out[2]~33_combout\,
	datad => \inst|segmento_out[1]~42_combout\,
	combout => \inst|segmento_out[1]~45_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst|segmento_out[1]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~46_combout\ = (\inst31|und_out[2]~14_combout\ & (\inst31|und_out[0]~15_combout\ $ (!\inst31|und_out[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|und_out[2]~14_combout\,
	datac => \inst31|und_out[0]~15_combout\,
	datad => \inst31|und_out[1]~13_combout\,
	combout => \inst|segmento_out[1]~46_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst|segmento_out[1]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~47_combout\ = ((\inst|segmento_out[1]~45_combout\) # ((\inst|segmento_out[2]~31_combout\ & \inst|segmento_out[1]~46_combout\))) # (!\inst|segmento_out[0]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[0]~40_combout\,
	datab => \inst|segmento_out[1]~45_combout\,
	datac => \inst|segmento_out[2]~31_combout\,
	datad => \inst|segmento_out[1]~46_combout\,
	combout => \inst|segmento_out[1]~47_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst|segmento_out[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~52_combout\ = (!\inst31|und_out[2]~14_combout\ & (!\inst31|und_out[0]~15_combout\ & !\inst31|und_out[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|und_out[2]~14_combout\,
	datac => \inst31|und_out[0]~15_combout\,
	datad => \inst31|und_out[1]~13_combout\,
	combout => \inst|segmento_out[2]~52_combout\);

-- Location: LCCOMB_X24_Y20_N12
\inst|segmento_out[2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~50_combout\ = (!\inst31|cnt_out[0]~15_combout\ & (!\inst31|cnt_out[2]~14_combout\ & !\inst31|cnt_out[1]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst31|cnt_out[0]~15_combout\,
	datac => \inst31|cnt_out[2]~14_combout\,
	datad => \inst31|cnt_out[1]~13_combout\,
	combout => \inst|segmento_out[2]~50_combout\);

-- Location: LCCOMB_X22_Y20_N28
\inst|segmento_out[2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~49_combout\ = (!\inst31|mil_out[2]~14_combout\ & (\inst|segmento_out[2]~37_combout\ & (!\inst31|mil_out[0]~15_combout\ & !\inst31|mil_out[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|mil_out[2]~14_combout\,
	datab => \inst|segmento_out[2]~37_combout\,
	datac => \inst31|mil_out[0]~15_combout\,
	datad => \inst31|mil_out[1]~13_combout\,
	combout => \inst|segmento_out[2]~49_combout\);

-- Location: LCCOMB_X25_Y16_N18
\inst|segmento_out[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~48_combout\ = (!\inst31|dzn_out[1]~13_combout\ & (\inst|segmento_out[2]~33_combout\ & (!\inst31|dzn_out[0]~15_combout\ & !\inst31|dzn_out[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|dzn_out[1]~13_combout\,
	datab => \inst|segmento_out[2]~33_combout\,
	datac => \inst31|dzn_out[0]~15_combout\,
	datad => \inst31|dzn_out[2]~14_combout\,
	combout => \inst|segmento_out[2]~48_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst|segmento_out[2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~51_combout\ = (\inst|segmento_out[2]~49_combout\) # ((\inst|segmento_out[2]~48_combout\) # ((\inst|segmento_out[2]~50_combout\ & \inst|segmento_out[2]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[2]~50_combout\,
	datab => \inst|segmento_out[2]~35_combout\,
	datac => \inst|segmento_out[2]~49_combout\,
	datad => \inst|segmento_out[2]~48_combout\,
	combout => \inst|segmento_out[2]~51_combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst|segmento_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out\(2) = ((\inst|segmento_out[2]~51_combout\) # ((\inst|segmento_out[2]~52_combout\ & \inst|segmento_out[2]~31_combout\))) # (!\inst|segmento_out[0]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[0]~40_combout\,
	datab => \inst|segmento_out[2]~52_combout\,
	datac => \inst|segmento_out[2]~31_combout\,
	datad => \inst|segmento_out[2]~51_combout\,
	combout => \inst|segmento_out\(2));

-- Location: LCCOMB_X23_Y20_N8
\inst|segmento_out[3]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~53_combout\ = (\inst|segmento_out[2]~31_combout\ & ((\inst31|und_out[0]~15_combout\ & (\inst31|und_out[2]~14_combout\ $ (\inst31|und_out[1]~13_combout\))) # (!\inst31|und_out[0]~15_combout\ & (\inst31|und_out[2]~14_combout\ & 
-- \inst31|und_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[2]~31_combout\,
	datab => \inst31|und_out[0]~15_combout\,
	datac => \inst31|und_out[2]~14_combout\,
	datad => \inst31|und_out[1]~13_combout\,
	combout => \inst|segmento_out[3]~53_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst|segmento_out[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~54_combout\ = (\inst|segmento_out[2]~35_combout\ & ((\inst31|cnt_out[1]~13_combout\ & (\inst31|cnt_out[0]~15_combout\ $ (\inst31|cnt_out[2]~14_combout\))) # (!\inst31|cnt_out[1]~13_combout\ & (\inst31|cnt_out[0]~15_combout\ & 
-- \inst31|cnt_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|cnt_out[1]~13_combout\,
	datab => \inst31|cnt_out[0]~15_combout\,
	datac => \inst31|cnt_out[2]~14_combout\,
	datad => \inst|segmento_out[2]~35_combout\,
	combout => \inst|segmento_out[3]~54_combout\);

-- Location: LCCOMB_X22_Y20_N26
\inst|segmento_out[3]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~55_combout\ = (\inst|segmento_out[2]~37_combout\ & ((\inst31|mil_out[2]~14_combout\ & (\inst31|mil_out[0]~15_combout\ $ (\inst31|mil_out[1]~13_combout\))) # (!\inst31|mil_out[2]~14_combout\ & (\inst31|mil_out[0]~15_combout\ & 
-- \inst31|mil_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|mil_out[2]~14_combout\,
	datab => \inst|segmento_out[2]~37_combout\,
	datac => \inst31|mil_out[0]~15_combout\,
	datad => \inst31|mil_out[1]~13_combout\,
	combout => \inst|segmento_out[3]~55_combout\);

-- Location: LCCOMB_X25_Y16_N8
\inst|segmento_out[3]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~56_combout\ = (\inst31|dzn_out[1]~13_combout\ & (\inst31|dzn_out[0]~15_combout\ $ (\inst31|dzn_out[2]~14_combout\))) # (!\inst31|dzn_out[1]~13_combout\ & (\inst31|dzn_out[0]~15_combout\ & \inst31|dzn_out[2]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|dzn_out[1]~13_combout\,
	datac => \inst31|dzn_out[0]~15_combout\,
	datad => \inst31|dzn_out[2]~14_combout\,
	combout => \inst|segmento_out[3]~56_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst|segmento_out[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~57_combout\ = (\inst|segmento_out[3]~54_combout\) # ((\inst|segmento_out[3]~55_combout\) # ((\inst|segmento_out[2]~33_combout\ & \inst|segmento_out[3]~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[3]~54_combout\,
	datab => \inst|segmento_out[2]~33_combout\,
	datac => \inst|segmento_out[3]~55_combout\,
	datad => \inst|segmento_out[3]~56_combout\,
	combout => \inst|segmento_out[3]~57_combout\);

-- Location: LCCOMB_X23_Y20_N18
\inst|segmento_out[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~58_combout\ = ((\inst|segmento_out[3]~53_combout\) # (\inst|segmento_out[3]~57_combout\)) # (!\inst|segmento_out[0]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[0]~40_combout\,
	datac => \inst|segmento_out[3]~53_combout\,
	datad => \inst|segmento_out[3]~57_combout\,
	combout => \inst|segmento_out[3]~58_combout\);

-- Location: LCCOMB_X25_Y16_N22
\inst|segmento_out[4]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~59_combout\ = (\inst31|dzn_out[1]~13_combout\ & ((\inst31|dzn_out[2]~14_combout\ & (\inst31|dzn_out[3]~12_combout\)) # (!\inst31|dzn_out[2]~14_combout\ & ((\inst31|dzn_out[0]~15_combout\))))) # (!\inst31|dzn_out[1]~13_combout\ & 
-- (\inst31|dzn_out[3]~12_combout\ & (\inst31|dzn_out[0]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|dzn_out[1]~13_combout\,
	datab => \inst31|dzn_out[3]~12_combout\,
	datac => \inst31|dzn_out[0]~15_combout\,
	datad => \inst31|dzn_out[2]~14_combout\,
	combout => \inst|segmento_out[4]~59_combout\);

-- Location: LCCOMB_X22_Y20_N20
\inst|segmento_out[4]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~60_combout\ = ((\inst|segmento_out[4]~59_combout\ & !\inst46|inst5|alterna\(2))) # (!\inst|segmento_out[0]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|segmento_out[0]~40_combout\,
	datac => \inst|segmento_out[4]~59_combout\,
	datad => \inst46|inst5|alterna\(2),
	combout => \inst|segmento_out[4]~60_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst|segmento_out[4]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~64_combout\ = (\inst31|und_out[1]~13_combout\ & ((\inst31|und_out[2]~14_combout\ & ((\inst31|und_out[3]~12_combout\))) # (!\inst31|und_out[2]~14_combout\ & (\inst31|und_out[0]~15_combout\)))) # (!\inst31|und_out[1]~13_combout\ & 
-- (\inst31|und_out[0]~15_combout\ & (\inst31|und_out[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|und_out[0]~15_combout\,
	datab => \inst31|und_out[3]~12_combout\,
	datac => \inst31|und_out[2]~14_combout\,
	datad => \inst31|und_out[1]~13_combout\,
	combout => \inst|segmento_out[4]~64_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst|segmento_out[4]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~61_combout\ = (\inst31|cnt_out[1]~13_combout\ & ((\inst31|cnt_out[2]~14_combout\ & ((\inst31|cnt_out[3]~12_combout\))) # (!\inst31|cnt_out[2]~14_combout\ & (\inst31|cnt_out[0]~15_combout\)))) # (!\inst31|cnt_out[1]~13_combout\ & 
-- (\inst31|cnt_out[0]~15_combout\ & ((\inst31|cnt_out[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|cnt_out[1]~13_combout\,
	datab => \inst31|cnt_out[0]~15_combout\,
	datac => \inst31|cnt_out[2]~14_combout\,
	datad => \inst31|cnt_out[3]~12_combout\,
	combout => \inst|segmento_out[4]~61_combout\);

-- Location: LCCOMB_X22_Y20_N10
\inst|segmento_out[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~62_combout\ = (\inst31|mil_out[1]~13_combout\ & ((\inst31|mil_out[2]~14_combout\ & (\inst31|mil_out[3]~12_combout\)) # (!\inst31|mil_out[2]~14_combout\ & ((\inst31|mil_out[0]~15_combout\))))) # (!\inst31|mil_out[1]~13_combout\ & 
-- (((\inst31|mil_out[3]~12_combout\ & \inst31|mil_out[0]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|mil_out[2]~14_combout\,
	datab => \inst31|mil_out[3]~12_combout\,
	datac => \inst31|mil_out[0]~15_combout\,
	datad => \inst31|mil_out[1]~13_combout\,
	combout => \inst|segmento_out[4]~62_combout\);

-- Location: LCCOMB_X22_Y20_N24
\inst|segmento_out[4]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~63_combout\ = (\inst46|inst5|alterna\(1) & (!\inst46|inst5|alterna\(0) & ((\inst|segmento_out[4]~62_combout\)))) # (!\inst46|inst5|alterna\(1) & ((\inst|segmento_out[4]~61_combout\) # ((!\inst46|inst5|alterna\(0) & 
-- \inst|segmento_out[4]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst46|inst5|alterna\(1),
	datab => \inst46|inst5|alterna\(0),
	datac => \inst|segmento_out[4]~61_combout\,
	datad => \inst|segmento_out[4]~62_combout\,
	combout => \inst|segmento_out[4]~63_combout\);

-- Location: LCCOMB_X22_Y20_N22
\inst|segmento_out[4]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~65_combout\ = (\inst|segmento_out[4]~60_combout\) # ((\inst|segmento_out[4]~63_combout\) # ((\inst|_~0_combout\ & \inst|segmento_out[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|_~0_combout\,
	datab => \inst|segmento_out[4]~60_combout\,
	datac => \inst|segmento_out[4]~64_combout\,
	datad => \inst|segmento_out[4]~63_combout\,
	combout => \inst|segmento_out[4]~65_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst|segmento_out[5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~68_combout\ = (\inst|segmento_out[2]~35_combout\ & ((\inst31|cnt_out[1]~13_combout\ & (\inst31|cnt_out[0]~15_combout\ & !\inst31|cnt_out[2]~14_combout\)) # (!\inst31|cnt_out[1]~13_combout\ & ((\inst31|cnt_out[0]~15_combout\) # 
-- (!\inst31|cnt_out[2]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|cnt_out[1]~13_combout\,
	datab => \inst31|cnt_out[0]~15_combout\,
	datac => \inst31|cnt_out[2]~14_combout\,
	datad => \inst|segmento_out[2]~35_combout\,
	combout => \inst|segmento_out[5]~68_combout\);

-- Location: LCCOMB_X25_Y16_N0
\inst|segmento_out[5]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~69_combout\ = (\inst31|dzn_out[1]~13_combout\ & (\inst31|dzn_out[0]~15_combout\ & !\inst31|dzn_out[2]~14_combout\)) # (!\inst31|dzn_out[1]~13_combout\ & ((\inst31|dzn_out[0]~15_combout\) # (!\inst31|dzn_out[2]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|dzn_out[1]~13_combout\,
	datac => \inst31|dzn_out[0]~15_combout\,
	datad => \inst31|dzn_out[2]~14_combout\,
	combout => \inst|segmento_out[5]~69_combout\);

-- Location: LCCOMB_X25_Y16_N10
\inst|segmento_out[5]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~77_combout\ = (\inst|segmento_out[5]~68_combout\) # ((\inst31|dzn_out[3]~12_combout\ & (!\inst46|inst5|alterna\(2) & \inst|segmento_out[5]~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[5]~68_combout\,
	datab => \inst31|dzn_out[3]~12_combout\,
	datac => \inst46|inst5|alterna\(2),
	datad => \inst|segmento_out[5]~69_combout\,
	combout => \inst|segmento_out[5]~77_combout\);

-- Location: LCCOMB_X23_Y20_N14
\inst|segmento_out[5]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~66_combout\ = (\inst|segmento_out[2]~31_combout\ & ((\inst31|und_out[0]~15_combout\ & ((!\inst31|und_out[1]~13_combout\) # (!\inst31|und_out[2]~14_combout\))) # (!\inst31|und_out[0]~15_combout\ & (!\inst31|und_out[2]~14_combout\ & 
-- !\inst31|und_out[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[2]~31_combout\,
	datab => \inst31|und_out[0]~15_combout\,
	datac => \inst31|und_out[2]~14_combout\,
	datad => \inst31|und_out[1]~13_combout\,
	combout => \inst|segmento_out[5]~66_combout\);

-- Location: LCCOMB_X22_Y20_N0
\inst|segmento_out[5]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~67_combout\ = (\inst|segmento_out[2]~37_combout\ & ((\inst31|mil_out[2]~14_combout\ & (\inst31|mil_out[0]~15_combout\ & !\inst31|mil_out[1]~13_combout\)) # (!\inst31|mil_out[2]~14_combout\ & ((\inst31|mil_out[0]~15_combout\) # 
-- (!\inst31|mil_out[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|mil_out[2]~14_combout\,
	datab => \inst|segmento_out[2]~37_combout\,
	datac => \inst31|mil_out[0]~15_combout\,
	datad => \inst31|mil_out[1]~13_combout\,
	combout => \inst|segmento_out[5]~67_combout\);

-- Location: LCCOMB_X22_Y20_N6
\inst|segmento_out[5]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~70_combout\ = (\inst|segmento_out[5]~77_combout\) # ((\inst|segmento_out[5]~66_combout\) # ((\inst|segmento_out[5]~67_combout\) # (!\inst|segmento_out[0]~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[5]~77_combout\,
	datab => \inst|segmento_out[5]~66_combout\,
	datac => \inst|segmento_out[0]~40_combout\,
	datad => \inst|segmento_out[5]~67_combout\,
	combout => \inst|segmento_out[5]~70_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst|segmento_out[6]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~72_combout\ = (\inst|segmento_out[2]~35_combout\ & ((\inst31|cnt_out[1]~13_combout\ & ((!\inst31|cnt_out[2]~14_combout\))) # (!\inst31|cnt_out[1]~13_combout\ & (\inst31|cnt_out[0]~15_combout\ & \inst31|cnt_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|cnt_out[1]~13_combout\,
	datab => \inst31|cnt_out[0]~15_combout\,
	datac => \inst31|cnt_out[2]~14_combout\,
	datad => \inst|segmento_out[2]~35_combout\,
	combout => \inst|segmento_out[6]~72_combout\);

-- Location: LCCOMB_X22_Y20_N12
\inst|segmento_out[6]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~73_combout\ = (\inst|segmento_out[2]~37_combout\ & ((\inst31|mil_out[2]~14_combout\ & (\inst31|mil_out[0]~15_combout\ & !\inst31|mil_out[1]~13_combout\)) # (!\inst31|mil_out[2]~14_combout\ & ((\inst31|mil_out[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|mil_out[2]~14_combout\,
	datab => \inst|segmento_out[2]~37_combout\,
	datac => \inst31|mil_out[0]~15_combout\,
	datad => \inst31|mil_out[1]~13_combout\,
	combout => \inst|segmento_out[6]~73_combout\);

-- Location: LCCOMB_X25_Y16_N26
\inst|segmento_out[6]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~71_combout\ = (\inst|segmento_out[2]~33_combout\ & ((\inst31|dzn_out[1]~13_combout\ & ((!\inst31|dzn_out[2]~14_combout\))) # (!\inst31|dzn_out[1]~13_combout\ & (\inst31|dzn_out[0]~15_combout\ & \inst31|dzn_out[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|dzn_out[1]~13_combout\,
	datab => \inst|segmento_out[2]~33_combout\,
	datac => \inst31|dzn_out[0]~15_combout\,
	datad => \inst31|dzn_out[2]~14_combout\,
	combout => \inst|segmento_out[6]~71_combout\);

-- Location: LCCOMB_X24_Y20_N8
\inst|segmento_out[6]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~74_combout\ = (\inst|segmento_out[6]~72_combout\) # ((\inst|segmento_out[6]~73_combout\) # (\inst|segmento_out[6]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[6]~72_combout\,
	datac => \inst|segmento_out[6]~73_combout\,
	datad => \inst|segmento_out[6]~71_combout\,
	combout => \inst|segmento_out[6]~74_combout\);

-- Location: LCCOMB_X23_Y20_N24
\inst|segmento_out[6]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~75_combout\ = (\inst31|und_out[2]~14_combout\ & (\inst31|und_out[0]~15_combout\ & !\inst31|und_out[1]~13_combout\)) # (!\inst31|und_out[2]~14_combout\ & ((\inst31|und_out[1]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst31|und_out[2]~14_combout\,
	datac => \inst31|und_out[0]~15_combout\,
	datad => \inst31|und_out[1]~13_combout\,
	combout => \inst|segmento_out[6]~75_combout\);

-- Location: LCCOMB_X23_Y20_N10
\inst|segmento_out[6]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~76_combout\ = ((\inst|segmento_out[6]~74_combout\) # ((\inst|segmento_out[2]~31_combout\ & \inst|segmento_out[6]~75_combout\))) # (!\inst|segmento_out[0]~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[0]~40_combout\,
	datab => \inst|segmento_out[6]~74_combout\,
	datac => \inst|segmento_out[2]~31_combout\,
	datad => \inst|segmento_out[6]~75_combout\,
	combout => \inst|segmento_out[6]~76_combout\);

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


