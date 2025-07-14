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

-- DATE "07/11/2025 14:05:36"

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
	led : OUT std_logic_vector(4 DOWNTO 1);
	SEG : OUT std_logic_vector(0 TO 6);
	key : IN std_logic_vector(4 DOWNTO 1)
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
-- key[4]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_led : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_SEG : std_logic_vector(0 TO 6);
SIGNAL ww_key : std_logic_vector(4 DOWNTO 1);
SIGNAL \inst5|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst|aux_tff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
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
SIGNAL \inst13|inst|q[1]~14_combout\ : std_logic;
SIGNAL \inst13|inst|_~1_combout\ : std_logic;
SIGNAL \inst13|inst|_~4_combout\ : std_logic;
SIGNAL \inst13|inst|q[1]~15\ : std_logic;
SIGNAL \inst13|inst|q[2]~16_combout\ : std_logic;
SIGNAL \inst13|inst|q[2]~17\ : std_logic;
SIGNAL \inst13|inst|q[3]~18_combout\ : std_logic;
SIGNAL \inst13|inst|q[3]~19\ : std_logic;
SIGNAL \inst13|inst|q[4]~20_combout\ : std_logic;
SIGNAL \inst13|inst|q[4]~21\ : std_logic;
SIGNAL \inst13|inst|q[5]~22_combout\ : std_logic;
SIGNAL \inst13|inst|q[5]~23\ : std_logic;
SIGNAL \inst13|inst|q[6]~24_combout\ : std_logic;
SIGNAL \inst13|inst|q[6]~25\ : std_logic;
SIGNAL \inst13|inst|q[7]~26_combout\ : std_logic;
SIGNAL \inst13|inst|q[7]~27\ : std_logic;
SIGNAL \inst13|inst|q[8]~28_combout\ : std_logic;
SIGNAL \inst13|inst|q[8]~29\ : std_logic;
SIGNAL \inst13|inst|q[9]~30_combout\ : std_logic;
SIGNAL \inst13|inst|q[9]~31\ : std_logic;
SIGNAL \inst13|inst|q[10]~32_combout\ : std_logic;
SIGNAL \inst13|inst|q[10]~33\ : std_logic;
SIGNAL \inst13|inst|q[11]~34_combout\ : std_logic;
SIGNAL \inst13|inst|q[11]~35\ : std_logic;
SIGNAL \inst13|inst|q[12]~36_combout\ : std_logic;
SIGNAL \inst13|inst|q[12]~37\ : std_logic;
SIGNAL \inst13|inst|q[13]~38_combout\ : std_logic;
SIGNAL \inst13|inst|q[13]~39\ : std_logic;
SIGNAL \inst13|inst|q[14]~40_combout\ : std_logic;
SIGNAL \inst13|inst|_~2_combout\ : std_logic;
SIGNAL \inst13|inst|_~3_combout\ : std_logic;
SIGNAL \inst13|inst|_~5_combout\ : std_logic;
SIGNAL \inst13|inst|_~0_combout\ : std_logic;
SIGNAL \inst13|inst|aux_tff~1_combout\ : std_logic;
SIGNAL \inst13|inst|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst13|inst|aux_tff~q\ : std_logic;
SIGNAL \inst13|inst|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst13|inst1|q[0]~1_combout\ : std_logic;
SIGNAL \inst13|inst1|_~0_combout\ : std_logic;
SIGNAL \inst13|inst7|alterna[0]~4_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~33_combout\ : std_logic;
SIGNAL \inst5|_~3_combout\ : std_logic;
SIGNAL \inst5|_~0_combout\ : std_logic;
SIGNAL \inst5|_~1_combout\ : std_logic;
SIGNAL \inst5|_~2_combout\ : std_logic;
SIGNAL \inst5|_~4_combout\ : std_logic;
SIGNAL \inst5|_~7_combout\ : std_logic;
SIGNAL \inst5|q[1]~22_combout\ : std_logic;
SIGNAL \inst5|_~8_combout\ : std_logic;
SIGNAL \inst5|q[1]~23\ : std_logic;
SIGNAL \inst5|q[2]~24_combout\ : std_logic;
SIGNAL \inst5|q[2]~25\ : std_logic;
SIGNAL \inst5|q[3]~26_combout\ : std_logic;
SIGNAL \inst5|q[3]~27\ : std_logic;
SIGNAL \inst5|q[4]~28_combout\ : std_logic;
SIGNAL \inst5|q[4]~29\ : std_logic;
SIGNAL \inst5|q[5]~30_combout\ : std_logic;
SIGNAL \inst5|q[5]~31\ : std_logic;
SIGNAL \inst5|q[6]~32_combout\ : std_logic;
SIGNAL \inst5|q[6]~33\ : std_logic;
SIGNAL \inst5|q[7]~34_combout\ : std_logic;
SIGNAL \inst5|q[7]~35\ : std_logic;
SIGNAL \inst5|q[8]~36_combout\ : std_logic;
SIGNAL \inst5|q[8]~37\ : std_logic;
SIGNAL \inst5|q[9]~38_combout\ : std_logic;
SIGNAL \inst5|q[9]~39\ : std_logic;
SIGNAL \inst5|q[10]~40_combout\ : std_logic;
SIGNAL \inst5|q[10]~41\ : std_logic;
SIGNAL \inst5|q[11]~42_combout\ : std_logic;
SIGNAL \inst5|q[11]~43\ : std_logic;
SIGNAL \inst5|q[12]~44_combout\ : std_logic;
SIGNAL \inst5|q[12]~45\ : std_logic;
SIGNAL \inst5|q[13]~46_combout\ : std_logic;
SIGNAL \inst5|q[13]~47\ : std_logic;
SIGNAL \inst5|q[14]~48_combout\ : std_logic;
SIGNAL \inst5|q[14]~49\ : std_logic;
SIGNAL \inst5|q[15]~50_combout\ : std_logic;
SIGNAL \inst5|q[15]~51\ : std_logic;
SIGNAL \inst5|q[16]~52_combout\ : std_logic;
SIGNAL \inst5|q[16]~53\ : std_logic;
SIGNAL \inst5|q[17]~54_combout\ : std_logic;
SIGNAL \inst5|q[17]~55\ : std_logic;
SIGNAL \inst5|q[18]~56_combout\ : std_logic;
SIGNAL \inst5|q[18]~57\ : std_logic;
SIGNAL \inst5|q[19]~58_combout\ : std_logic;
SIGNAL \inst5|q[19]~59\ : std_logic;
SIGNAL \inst5|q[20]~60_combout\ : std_logic;
SIGNAL \inst5|q[20]~61\ : std_logic;
SIGNAL \inst5|q[21]~62_combout\ : std_logic;
SIGNAL \inst5|q[21]~63\ : std_logic;
SIGNAL \inst5|q[22]~64_combout\ : std_logic;
SIGNAL \inst5|_~5_combout\ : std_logic;
SIGNAL \inst5|_~6_combout\ : std_logic;
SIGNAL \inst5|aux_tff~1_combout\ : std_logic;
SIGNAL \inst5|aux_tff~feeder_combout\ : std_logic;
SIGNAL \inst5|aux_tff~q\ : std_logic;
SIGNAL \inst5|aux_tff~clkctrl_outclk\ : std_logic;
SIGNAL \inst12|q[0]~0_combout\ : std_logic;
SIGNAL \inst12|_~1_combout\ : std_logic;
SIGNAL \inst12|_~2_combout\ : std_logic;
SIGNAL \inst12|_~0_combout\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst20|inst|ff1~q\ : std_logic;
SIGNAL \inst20|inst|ff2~feeder_combout\ : std_logic;
SIGNAL \inst20|inst|ff2~q\ : std_logic;
SIGNAL \inst20|inst|ff3~0_combout\ : std_logic;
SIGNAL \inst20|inst|ff3~q\ : std_logic;
SIGNAL \inst14|_~0_combout\ : std_logic;
SIGNAL \inst14|_~4_combout\ : std_logic;
SIGNAL \inst14|_~2_combout\ : std_logic;
SIGNAL \inst14|op_1~0_combout\ : std_logic;
SIGNAL \inst14|_~3_combout\ : std_logic;
SIGNAL \inst7|segmento[4]~9_combout\ : std_logic;
SIGNAL \inst14|_~1_combout\ : std_logic;
SIGNAL \inst14|dezena_q[0]~2_combout\ : std_logic;
SIGNAL \inst14|dezena_q[2]~0_combout\ : std_logic;
SIGNAL \inst14|dezena_q[1]~5_combout\ : std_logic;
SIGNAL \inst14|op_2~0_combout\ : std_logic;
SIGNAL \inst14|dezena_q[2]~1_combout\ : std_logic;
SIGNAL \inst14|op_2~1_combout\ : std_logic;
SIGNAL \inst14|dezena_q[3]~3_combout\ : std_logic;
SIGNAL \inst14|dezena_q[3]~4_combout\ : std_logic;
SIGNAL \inst8|segmento[4]~9_combout\ : std_logic;
SIGNAL \inst14|centena_q[0]~0_combout\ : std_logic;
SIGNAL \inst14|centena_q[3]~4_combout\ : std_logic;
SIGNAL \inst14|op_3~1_combout\ : std_logic;
SIGNAL \inst14|centena_q[3]~5_combout\ : std_logic;
SIGNAL \inst14|_~5_combout\ : std_logic;
SIGNAL \inst14|centena_q[3]~3_combout\ : std_logic;
SIGNAL \inst14|centena_q[1]~6_combout\ : std_logic;
SIGNAL \inst14|op_3~0_combout\ : std_logic;
SIGNAL \inst14|centena_q[2]~1_combout\ : std_logic;
SIGNAL \inst14|_~6_combout\ : std_logic;
SIGNAL \inst14|centena_q[2]~2_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~37_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~80_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~35_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~34_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~36_combout\ : std_logic;
SIGNAL \inst14|milhar_q[0]~3_combout\ : std_logic;
SIGNAL \inst14|milhar_q[3]~1_combout\ : std_logic;
SIGNAL \inst14|op_4~0_combout\ : std_logic;
SIGNAL \inst14|milhar_q[2]~2_combout\ : std_logic;
SIGNAL \inst14|op_4~1_combout\ : std_logic;
SIGNAL \inst14|milhar_q[3]~4_combout\ : std_logic;
SIGNAL \inst10|segmento[4]~9_combout\ : std_logic;
SIGNAL \inst14|milhar_q[3]~0_combout\ : std_logic;
SIGNAL \inst14|milhar_q[1]~5_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~38_combout\ : std_logic;
SIGNAL \inst|segmento_out[0]~39_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~40_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~43_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~42_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~44_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~41_combout\ : std_logic;
SIGNAL \inst|segmento_out[1]~45_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~50_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~51_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~52_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~53_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~48_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~49_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~46_combout\ : std_logic;
SIGNAL \inst|segmento_out[2]~47_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~57_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~56_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~58_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~55_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~54_combout\ : std_logic;
SIGNAL \inst|segmento_out[3]~59_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~60_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~61_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~62_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~63_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~81_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~64_combout\ : std_logic;
SIGNAL \inst|segmento_out[4]~65_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~69_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~70_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~71_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~67_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~66_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~68_combout\ : std_logic;
SIGNAL \inst|segmento_out[5]~72_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~77_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~76_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~78_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~73_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~74_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~75_combout\ : std_logic;
SIGNAL \inst|segmento_out[6]~79_combout\ : std_logic;
SIGNAL \inst13|inst|q\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst14|dezena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|q\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst14|unidade_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst13|inst1|q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst13|inst7|alterna\ : std_logic_vector(0 TO 3);
SIGNAL \inst14|centena_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|milhar_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|segmento_out\ : std_logic_vector(0 TO 6);
SIGNAL \inst12|ALT_INV_q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_segmento_out[1]~33_combout\ : std_logic;
SIGNAL \inst13|inst7|ALT_INV_alterna[0]~4_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DIG <= ww_DIG;
ww_clock <= clock;
led <= ww_led;
SEG <= ww_SEG;
ww_key <= key;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|aux_tff~q\);

\inst13|inst|aux_tff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst13|inst|aux_tff~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst12|ALT_INV_q\(3) <= NOT \inst12|q\(3);
\inst12|ALT_INV_q\(2) <= NOT \inst12|q\(2);
\inst12|ALT_INV_q\(1) <= NOT \inst12|q\(1);
\inst12|ALT_INV_q\(0) <= NOT \inst12|q\(0);
\inst|ALT_INV_segmento_out[1]~33_combout\ <= NOT \inst|segmento_out[1]~33_combout\;
\inst13|inst7|ALT_INV_alterna[0]~4_combout\ <= NOT \inst13|inst7|alterna[0]~4_combout\;
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
	i => \inst13|inst7|ALT_INV_alterna[0]~4_combout\,
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
	i => \inst13|inst7|alterna\(1),
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
	i => \inst13|inst7|alterna\(2),
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
	i => \inst|ALT_INV_segmento_out[1]~33_combout\,
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
	i => \inst12|ALT_INV_q\(0),
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
	i => \inst12|ALT_INV_q\(1),
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
	i => \inst12|ALT_INV_q\(2),
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
	i => \inst12|ALT_INV_q\(3),
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
	i => \inst|segmento_out[0]~39_combout\,
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
	i => \inst|segmento_out[1]~45_combout\,
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
	i => \inst|segmento_out[3]~59_combout\,
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
	i => \inst|segmento_out[5]~72_combout\,
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
	i => \inst|segmento_out[6]~79_combout\,
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

-- Location: LCCOMB_X24_Y7_N4
\inst13|inst|q[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[1]~14_combout\ = (\inst13|inst|q\(1) & (\inst13|inst|q\(0) $ (VCC))) # (!\inst13|inst|q\(1) & (\inst13|inst|q\(0) & VCC))
-- \inst13|inst|q[1]~15\ = CARRY((\inst13|inst|q\(1) & \inst13|inst|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(1),
	datab => \inst13|inst|q\(0),
	datad => VCC,
	combout => \inst13|inst|q[1]~14_combout\,
	cout => \inst13|inst|q[1]~15\);

-- Location: LCCOMB_X25_Y7_N30
\inst13|inst|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|_~1_combout\ = (!\inst13|inst|q\(6) & (\inst13|inst|q\(5) & (\inst13|inst|q\(7) & !\inst13|inst|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(6),
	datab => \inst13|inst|q\(5),
	datac => \inst13|inst|q\(7),
	datad => \inst13|inst|q\(4),
	combout => \inst13|inst|_~1_combout\);

-- Location: LCCOMB_X24_Y7_N2
\inst13|inst|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|_~4_combout\ = (\inst13|inst|_~0_combout\ & (\inst13|inst|_~1_combout\ & \inst13|inst|_~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|_~0_combout\,
	datac => \inst13|inst|_~1_combout\,
	datad => \inst13|inst|_~3_combout\,
	combout => \inst13|inst|_~4_combout\);

-- Location: FF_X24_Y7_N5
\inst13|inst|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[1]~14_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(1));

-- Location: LCCOMB_X24_Y7_N6
\inst13|inst|q[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[2]~16_combout\ = (\inst13|inst|q\(2) & (!\inst13|inst|q[1]~15\)) # (!\inst13|inst|q\(2) & ((\inst13|inst|q[1]~15\) # (GND)))
-- \inst13|inst|q[2]~17\ = CARRY((!\inst13|inst|q[1]~15\) # (!\inst13|inst|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(2),
	datad => VCC,
	cin => \inst13|inst|q[1]~15\,
	combout => \inst13|inst|q[2]~16_combout\,
	cout => \inst13|inst|q[2]~17\);

-- Location: FF_X24_Y7_N7
\inst13|inst|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[2]~16_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(2));

-- Location: LCCOMB_X24_Y7_N8
\inst13|inst|q[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[3]~18_combout\ = (\inst13|inst|q\(3) & (\inst13|inst|q[2]~17\ $ (GND))) # (!\inst13|inst|q\(3) & (!\inst13|inst|q[2]~17\ & VCC))
-- \inst13|inst|q[3]~19\ = CARRY((\inst13|inst|q\(3) & !\inst13|inst|q[2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|q\(3),
	datad => VCC,
	cin => \inst13|inst|q[2]~17\,
	combout => \inst13|inst|q[3]~18_combout\,
	cout => \inst13|inst|q[3]~19\);

-- Location: FF_X24_Y7_N9
\inst13|inst|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[3]~18_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(3));

-- Location: LCCOMB_X24_Y7_N10
\inst13|inst|q[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[4]~20_combout\ = (\inst13|inst|q\(4) & (!\inst13|inst|q[3]~19\)) # (!\inst13|inst|q\(4) & ((\inst13|inst|q[3]~19\) # (GND)))
-- \inst13|inst|q[4]~21\ = CARRY((!\inst13|inst|q[3]~19\) # (!\inst13|inst|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(4),
	datad => VCC,
	cin => \inst13|inst|q[3]~19\,
	combout => \inst13|inst|q[4]~20_combout\,
	cout => \inst13|inst|q[4]~21\);

-- Location: FF_X24_Y7_N11
\inst13|inst|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[4]~20_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(4));

-- Location: LCCOMB_X24_Y7_N12
\inst13|inst|q[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[5]~22_combout\ = (\inst13|inst|q\(5) & (\inst13|inst|q[4]~21\ $ (GND))) # (!\inst13|inst|q\(5) & (!\inst13|inst|q[4]~21\ & VCC))
-- \inst13|inst|q[5]~23\ = CARRY((\inst13|inst|q\(5) & !\inst13|inst|q[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(5),
	datad => VCC,
	cin => \inst13|inst|q[4]~21\,
	combout => \inst13|inst|q[5]~22_combout\,
	cout => \inst13|inst|q[5]~23\);

-- Location: FF_X24_Y7_N13
\inst13|inst|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[5]~22_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(5));

-- Location: LCCOMB_X24_Y7_N14
\inst13|inst|q[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[6]~24_combout\ = (\inst13|inst|q\(6) & (!\inst13|inst|q[5]~23\)) # (!\inst13|inst|q\(6) & ((\inst13|inst|q[5]~23\) # (GND)))
-- \inst13|inst|q[6]~25\ = CARRY((!\inst13|inst|q[5]~23\) # (!\inst13|inst|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|q\(6),
	datad => VCC,
	cin => \inst13|inst|q[5]~23\,
	combout => \inst13|inst|q[6]~24_combout\,
	cout => \inst13|inst|q[6]~25\);

-- Location: FF_X24_Y7_N15
\inst13|inst|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[6]~24_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(6));

-- Location: LCCOMB_X24_Y7_N16
\inst13|inst|q[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[7]~26_combout\ = (\inst13|inst|q\(7) & (\inst13|inst|q[6]~25\ $ (GND))) # (!\inst13|inst|q\(7) & (!\inst13|inst|q[6]~25\ & VCC))
-- \inst13|inst|q[7]~27\ = CARRY((\inst13|inst|q\(7) & !\inst13|inst|q[6]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|q\(7),
	datad => VCC,
	cin => \inst13|inst|q[6]~25\,
	combout => \inst13|inst|q[7]~26_combout\,
	cout => \inst13|inst|q[7]~27\);

-- Location: FF_X24_Y7_N17
\inst13|inst|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[7]~26_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(7));

-- Location: LCCOMB_X24_Y7_N18
\inst13|inst|q[8]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[8]~28_combout\ = (\inst13|inst|q\(8) & (!\inst13|inst|q[7]~27\)) # (!\inst13|inst|q\(8) & ((\inst13|inst|q[7]~27\) # (GND)))
-- \inst13|inst|q[8]~29\ = CARRY((!\inst13|inst|q[7]~27\) # (!\inst13|inst|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|q\(8),
	datad => VCC,
	cin => \inst13|inst|q[7]~27\,
	combout => \inst13|inst|q[8]~28_combout\,
	cout => \inst13|inst|q[8]~29\);

-- Location: FF_X24_Y7_N19
\inst13|inst|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[8]~28_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(8));

-- Location: LCCOMB_X24_Y7_N20
\inst13|inst|q[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[9]~30_combout\ = (\inst13|inst|q\(9) & (\inst13|inst|q[8]~29\ $ (GND))) # (!\inst13|inst|q\(9) & (!\inst13|inst|q[8]~29\ & VCC))
-- \inst13|inst|q[9]~31\ = CARRY((\inst13|inst|q\(9) & !\inst13|inst|q[8]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|q\(9),
	datad => VCC,
	cin => \inst13|inst|q[8]~29\,
	combout => \inst13|inst|q[9]~30_combout\,
	cout => \inst13|inst|q[9]~31\);

-- Location: FF_X24_Y7_N21
\inst13|inst|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[9]~30_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(9));

-- Location: LCCOMB_X24_Y7_N22
\inst13|inst|q[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[10]~32_combout\ = (\inst13|inst|q\(10) & (!\inst13|inst|q[9]~31\)) # (!\inst13|inst|q\(10) & ((\inst13|inst|q[9]~31\) # (GND)))
-- \inst13|inst|q[10]~33\ = CARRY((!\inst13|inst|q[9]~31\) # (!\inst13|inst|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(10),
	datad => VCC,
	cin => \inst13|inst|q[9]~31\,
	combout => \inst13|inst|q[10]~32_combout\,
	cout => \inst13|inst|q[10]~33\);

-- Location: FF_X24_Y7_N23
\inst13|inst|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[10]~32_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(10));

-- Location: LCCOMB_X24_Y7_N24
\inst13|inst|q[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[11]~34_combout\ = (\inst13|inst|q\(11) & (\inst13|inst|q[10]~33\ $ (GND))) # (!\inst13|inst|q\(11) & (!\inst13|inst|q[10]~33\ & VCC))
-- \inst13|inst|q[11]~35\ = CARRY((\inst13|inst|q\(11) & !\inst13|inst|q[10]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|q\(11),
	datad => VCC,
	cin => \inst13|inst|q[10]~33\,
	combout => \inst13|inst|q[11]~34_combout\,
	cout => \inst13|inst|q[11]~35\);

-- Location: FF_X24_Y7_N25
\inst13|inst|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[11]~34_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(11));

-- Location: LCCOMB_X24_Y7_N26
\inst13|inst|q[12]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[12]~36_combout\ = (\inst13|inst|q\(12) & (!\inst13|inst|q[11]~35\)) # (!\inst13|inst|q\(12) & ((\inst13|inst|q[11]~35\) # (GND)))
-- \inst13|inst|q[12]~37\ = CARRY((!\inst13|inst|q[11]~35\) # (!\inst13|inst|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(12),
	datad => VCC,
	cin => \inst13|inst|q[11]~35\,
	combout => \inst13|inst|q[12]~36_combout\,
	cout => \inst13|inst|q[12]~37\);

-- Location: FF_X24_Y7_N27
\inst13|inst|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[12]~36_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(12));

-- Location: LCCOMB_X24_Y7_N28
\inst13|inst|q[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[13]~38_combout\ = (\inst13|inst|q\(13) & (\inst13|inst|q[12]~37\ $ (GND))) # (!\inst13|inst|q\(13) & (!\inst13|inst|q[12]~37\ & VCC))
-- \inst13|inst|q[13]~39\ = CARRY((\inst13|inst|q\(13) & !\inst13|inst|q[12]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst|q\(13),
	datad => VCC,
	cin => \inst13|inst|q[12]~37\,
	combout => \inst13|inst|q[13]~38_combout\,
	cout => \inst13|inst|q[13]~39\);

-- Location: FF_X24_Y7_N29
\inst13|inst|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[13]~38_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(13));

-- Location: LCCOMB_X24_Y7_N30
\inst13|inst|q[14]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|q[14]~40_combout\ = \inst13|inst|q\(14) $ (\inst13|inst|q[13]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(14),
	cin => \inst13|inst|q[13]~39\,
	combout => \inst13|inst|q[14]~40_combout\);

-- Location: FF_X24_Y7_N31
\inst13|inst|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|q[14]~40_combout\,
	sclr => \inst13|inst|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(14));

-- Location: LCCOMB_X23_Y7_N24
\inst13|inst|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|_~2_combout\ = (!\inst13|inst|q\(11) & (!\inst13|inst|q\(10) & (!\inst13|inst|q\(9) & \inst13|inst|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(11),
	datab => \inst13|inst|q\(10),
	datac => \inst13|inst|q\(9),
	datad => \inst13|inst|q\(8),
	combout => \inst13|inst|_~2_combout\);

-- Location: LCCOMB_X24_Y7_N0
\inst13|inst|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|_~3_combout\ = (\inst13|inst|q\(14) & (\inst13|inst|q\(13) & (!\inst13|inst|q\(12) & \inst13|inst|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(14),
	datab => \inst13|inst|q\(13),
	datac => \inst13|inst|q\(12),
	datad => \inst13|inst|_~2_combout\,
	combout => \inst13|inst|_~3_combout\);

-- Location: LCCOMB_X25_Y7_N12
\inst13|inst|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|_~5_combout\ = (!\inst13|inst|q\(0) & (((!\inst13|inst|_~1_combout\) # (!\inst13|inst|_~0_combout\)) # (!\inst13|inst|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|_~3_combout\,
	datab => \inst13|inst|_~0_combout\,
	datac => \inst13|inst|q\(0),
	datad => \inst13|inst|_~1_combout\,
	combout => \inst13|inst|_~5_combout\);

-- Location: FF_X25_Y7_N13
\inst13|inst|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|_~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|q\(0));

-- Location: LCCOMB_X25_Y7_N22
\inst13|inst|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|_~0_combout\ = (!\inst13|inst|q\(0) & (!\inst13|inst|q\(1) & (!\inst13|inst|q\(2) & \inst13|inst|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|q\(0),
	datab => \inst13|inst|q\(1),
	datac => \inst13|inst|q\(2),
	datad => \inst13|inst|q\(3),
	combout => \inst13|inst|_~0_combout\);

-- Location: LCCOMB_X25_Y7_N26
\inst13|inst|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|aux_tff~1_combout\ = \inst13|inst|aux_tff~q\ $ (((\inst13|inst|_~0_combout\ & (\inst13|inst|_~1_combout\ & \inst13|inst|_~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst|_~0_combout\,
	datab => \inst13|inst|_~1_combout\,
	datac => \inst13|inst|_~3_combout\,
	datad => \inst13|inst|aux_tff~q\,
	combout => \inst13|inst|aux_tff~1_combout\);

-- Location: LCCOMB_X25_Y7_N0
\inst13|inst|aux_tff~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst|aux_tff~feeder_combout\ = \inst13|inst|aux_tff~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst|aux_tff~1_combout\,
	combout => \inst13|inst|aux_tff~feeder_combout\);

-- Location: FF_X25_Y7_N1
\inst13|inst|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst13|inst|aux_tff~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst|aux_tff~q\);

-- Location: CLKCTRL_G9
\inst13|inst|aux_tff~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst13|inst|aux_tff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst13|inst|aux_tff~clkctrl_outclk\);

-- Location: LCCOMB_X16_Y20_N6
\inst13|inst1|q[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst1|q[0]~1_combout\ = !\inst13|inst1|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1|q\(0),
	combout => \inst13|inst1|q[0]~1_combout\);

-- Location: FF_X16_Y20_N7
\inst13|inst1|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|aux_tff~clkctrl_outclk\,
	d => \inst13|inst1|q[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst1|q\(0));

-- Location: LCCOMB_X16_Y20_N16
\inst13|inst1|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst1|_~0_combout\ = \inst13|inst1|q\(1) $ (\inst13|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1|q\(1),
	datad => \inst13|inst1|q\(0),
	combout => \inst13|inst1|_~0_combout\);

-- Location: FF_X16_Y20_N17
\inst13|inst1|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst13|inst|aux_tff~clkctrl_outclk\,
	d => \inst13|inst1|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13|inst1|q\(1));

-- Location: LCCOMB_X13_Y20_N4
\inst13|inst7|alterna[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|alterna[0]~4_combout\ = (\inst13|inst1|q\(0) & \inst13|inst1|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1|q\(0),
	datad => \inst13|inst1|q\(1),
	combout => \inst13|inst7|alterna[0]~4_combout\);

-- Location: LCCOMB_X13_Y20_N30
\inst13|inst7|alterna[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|alterna\(1) = (\inst13|inst1|q\(0)) # (!\inst13|inst1|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1|q\(0),
	datad => \inst13|inst1|q\(1),
	combout => \inst13|inst7|alterna\(1));

-- Location: LCCOMB_X14_Y20_N0
\inst13|inst7|alterna[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst13|inst7|alterna\(2) = (\inst13|inst1|q\(1)) # (!\inst13|inst1|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1|q\(0),
	datad => \inst13|inst1|q\(1),
	combout => \inst13|inst7|alterna\(2));

-- Location: LCCOMB_X13_Y20_N16
\inst|segmento_out[1]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~33_combout\ = (!\inst13|inst1|q\(0) & !\inst13|inst1|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst13|inst1|q\(0),
	datad => \inst13|inst1|q\(1),
	combout => \inst|segmento_out[1]~33_combout\);

-- Location: LCCOMB_X30_Y10_N30
\inst5|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~3_combout\ = (!\inst5|q\(15) & (!\inst5|q\(13) & (\inst5|q\(14) & \inst5|q\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(15),
	datab => \inst5|q\(13),
	datac => \inst5|q\(14),
	datad => \inst5|q\(12),
	combout => \inst5|_~3_combout\);

-- Location: LCCOMB_X30_Y11_N2
\inst5|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~0_combout\ = (!\inst5|q\(1) & (!\inst5|q\(0) & (!\inst5|q\(3) & !\inst5|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(1),
	datab => \inst5|q\(0),
	datac => \inst5|q\(3),
	datad => \inst5|q\(2),
	combout => \inst5|_~0_combout\);

-- Location: LCCOMB_X30_Y11_N0
\inst5|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~1_combout\ = (!\inst5|q\(6) & (!\inst5|q\(5) & (!\inst5|q\(7) & \inst5|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(6),
	datab => \inst5|q\(5),
	datac => \inst5|q\(7),
	datad => \inst5|q\(4),
	combout => \inst5|_~1_combout\);

-- Location: LCCOMB_X30_Y11_N6
\inst5|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~2_combout\ = (\inst5|q\(9) & (\inst5|q\(10) & (\inst5|q\(11) & !\inst5|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(9),
	datab => \inst5|q\(10),
	datac => \inst5|q\(11),
	datad => \inst5|q\(8),
	combout => \inst5|_~2_combout\);

-- Location: LCCOMB_X30_Y10_N28
\inst5|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~4_combout\ = (\inst5|_~3_combout\ & (\inst5|_~0_combout\ & (\inst5|_~1_combout\ & \inst5|_~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|_~3_combout\,
	datab => \inst5|_~0_combout\,
	datac => \inst5|_~1_combout\,
	datad => \inst5|_~2_combout\,
	combout => \inst5|_~4_combout\);

-- Location: LCCOMB_X30_Y11_N4
\inst5|_~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~7_combout\ = (!\inst5|q\(0) & ((!\inst5|_~4_combout\) # (!\inst5|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|_~6_combout\,
	datac => \inst5|q\(0),
	datad => \inst5|_~4_combout\,
	combout => \inst5|_~7_combout\);

-- Location: FF_X30_Y11_N5
\inst5|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|_~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(0));

-- Location: LCCOMB_X30_Y11_N10
\inst5|q[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[1]~22_combout\ = (\inst5|q\(1) & (\inst5|q\(0) $ (VCC))) # (!\inst5|q\(1) & (\inst5|q\(0) & VCC))
-- \inst5|q[1]~23\ = CARRY((\inst5|q\(1) & \inst5|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(1),
	datab => \inst5|q\(0),
	datad => VCC,
	combout => \inst5|q[1]~22_combout\,
	cout => \inst5|q[1]~23\);

-- Location: LCCOMB_X30_Y10_N22
\inst5|_~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~8_combout\ = (\inst5|_~6_combout\ & \inst5|_~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|_~6_combout\,
	datad => \inst5|_~4_combout\,
	combout => \inst5|_~8_combout\);

-- Location: FF_X30_Y11_N11
\inst5|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[1]~22_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(1));

-- Location: LCCOMB_X30_Y11_N12
\inst5|q[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[2]~24_combout\ = (\inst5|q\(2) & (!\inst5|q[1]~23\)) # (!\inst5|q\(2) & ((\inst5|q[1]~23\) # (GND)))
-- \inst5|q[2]~25\ = CARRY((!\inst5|q[1]~23\) # (!\inst5|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(2),
	datad => VCC,
	cin => \inst5|q[1]~23\,
	combout => \inst5|q[2]~24_combout\,
	cout => \inst5|q[2]~25\);

-- Location: FF_X30_Y11_N13
\inst5|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[2]~24_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(2));

-- Location: LCCOMB_X30_Y11_N14
\inst5|q[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[3]~26_combout\ = (\inst5|q\(3) & (\inst5|q[2]~25\ $ (GND))) # (!\inst5|q\(3) & (!\inst5|q[2]~25\ & VCC))
-- \inst5|q[3]~27\ = CARRY((\inst5|q\(3) & !\inst5|q[2]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(3),
	datad => VCC,
	cin => \inst5|q[2]~25\,
	combout => \inst5|q[3]~26_combout\,
	cout => \inst5|q[3]~27\);

-- Location: FF_X30_Y11_N15
\inst5|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[3]~26_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(3));

-- Location: LCCOMB_X30_Y11_N16
\inst5|q[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[4]~28_combout\ = (\inst5|q\(4) & (!\inst5|q[3]~27\)) # (!\inst5|q\(4) & ((\inst5|q[3]~27\) # (GND)))
-- \inst5|q[4]~29\ = CARRY((!\inst5|q[3]~27\) # (!\inst5|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(4),
	datad => VCC,
	cin => \inst5|q[3]~27\,
	combout => \inst5|q[4]~28_combout\,
	cout => \inst5|q[4]~29\);

-- Location: FF_X30_Y11_N17
\inst5|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[4]~28_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(4));

-- Location: LCCOMB_X30_Y11_N18
\inst5|q[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[5]~30_combout\ = (\inst5|q\(5) & (\inst5|q[4]~29\ $ (GND))) # (!\inst5|q\(5) & (!\inst5|q[4]~29\ & VCC))
-- \inst5|q[5]~31\ = CARRY((\inst5|q\(5) & !\inst5|q[4]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(5),
	datad => VCC,
	cin => \inst5|q[4]~29\,
	combout => \inst5|q[5]~30_combout\,
	cout => \inst5|q[5]~31\);

-- Location: FF_X30_Y11_N19
\inst5|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[5]~30_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(5));

-- Location: LCCOMB_X30_Y11_N20
\inst5|q[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[6]~32_combout\ = (\inst5|q\(6) & (!\inst5|q[5]~31\)) # (!\inst5|q\(6) & ((\inst5|q[5]~31\) # (GND)))
-- \inst5|q[6]~33\ = CARRY((!\inst5|q[5]~31\) # (!\inst5|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(6),
	datad => VCC,
	cin => \inst5|q[5]~31\,
	combout => \inst5|q[6]~32_combout\,
	cout => \inst5|q[6]~33\);

-- Location: FF_X30_Y11_N21
\inst5|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[6]~32_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(6));

-- Location: LCCOMB_X30_Y11_N22
\inst5|q[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[7]~34_combout\ = (\inst5|q\(7) & (\inst5|q[6]~33\ $ (GND))) # (!\inst5|q\(7) & (!\inst5|q[6]~33\ & VCC))
-- \inst5|q[7]~35\ = CARRY((\inst5|q\(7) & !\inst5|q[6]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(7),
	datad => VCC,
	cin => \inst5|q[6]~33\,
	combout => \inst5|q[7]~34_combout\,
	cout => \inst5|q[7]~35\);

-- Location: FF_X30_Y11_N23
\inst5|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[7]~34_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(7));

-- Location: LCCOMB_X30_Y11_N24
\inst5|q[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[8]~36_combout\ = (\inst5|q\(8) & (!\inst5|q[7]~35\)) # (!\inst5|q\(8) & ((\inst5|q[7]~35\) # (GND)))
-- \inst5|q[8]~37\ = CARRY((!\inst5|q[7]~35\) # (!\inst5|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(8),
	datad => VCC,
	cin => \inst5|q[7]~35\,
	combout => \inst5|q[8]~36_combout\,
	cout => \inst5|q[8]~37\);

-- Location: FF_X30_Y11_N25
\inst5|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[8]~36_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(8));

-- Location: LCCOMB_X30_Y11_N26
\inst5|q[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[9]~38_combout\ = (\inst5|q\(9) & (\inst5|q[8]~37\ $ (GND))) # (!\inst5|q\(9) & (!\inst5|q[8]~37\ & VCC))
-- \inst5|q[9]~39\ = CARRY((\inst5|q\(9) & !\inst5|q[8]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(9),
	datad => VCC,
	cin => \inst5|q[8]~37\,
	combout => \inst5|q[9]~38_combout\,
	cout => \inst5|q[9]~39\);

-- Location: FF_X30_Y11_N27
\inst5|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[9]~38_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(9));

-- Location: LCCOMB_X30_Y11_N28
\inst5|q[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[10]~40_combout\ = (\inst5|q\(10) & (!\inst5|q[9]~39\)) # (!\inst5|q\(10) & ((\inst5|q[9]~39\) # (GND)))
-- \inst5|q[10]~41\ = CARRY((!\inst5|q[9]~39\) # (!\inst5|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(10),
	datad => VCC,
	cin => \inst5|q[9]~39\,
	combout => \inst5|q[10]~40_combout\,
	cout => \inst5|q[10]~41\);

-- Location: FF_X30_Y11_N29
\inst5|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[10]~40_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(10));

-- Location: LCCOMB_X30_Y11_N30
\inst5|q[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[11]~42_combout\ = (\inst5|q\(11) & (\inst5|q[10]~41\ $ (GND))) # (!\inst5|q\(11) & (!\inst5|q[10]~41\ & VCC))
-- \inst5|q[11]~43\ = CARRY((\inst5|q\(11) & !\inst5|q[10]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(11),
	datad => VCC,
	cin => \inst5|q[10]~41\,
	combout => \inst5|q[11]~42_combout\,
	cout => \inst5|q[11]~43\);

-- Location: FF_X30_Y11_N31
\inst5|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[11]~42_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(11));

-- Location: LCCOMB_X30_Y10_N0
\inst5|q[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[12]~44_combout\ = (\inst5|q\(12) & (!\inst5|q[11]~43\)) # (!\inst5|q\(12) & ((\inst5|q[11]~43\) # (GND)))
-- \inst5|q[12]~45\ = CARRY((!\inst5|q[11]~43\) # (!\inst5|q\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(12),
	datad => VCC,
	cin => \inst5|q[11]~43\,
	combout => \inst5|q[12]~44_combout\,
	cout => \inst5|q[12]~45\);

-- Location: FF_X30_Y10_N1
\inst5|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[12]~44_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(12));

-- Location: LCCOMB_X30_Y10_N2
\inst5|q[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[13]~46_combout\ = (\inst5|q\(13) & (\inst5|q[12]~45\ $ (GND))) # (!\inst5|q\(13) & (!\inst5|q[12]~45\ & VCC))
-- \inst5|q[13]~47\ = CARRY((\inst5|q\(13) & !\inst5|q[12]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(13),
	datad => VCC,
	cin => \inst5|q[12]~45\,
	combout => \inst5|q[13]~46_combout\,
	cout => \inst5|q[13]~47\);

-- Location: FF_X30_Y10_N3
\inst5|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[13]~46_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(13));

-- Location: LCCOMB_X30_Y10_N4
\inst5|q[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[14]~48_combout\ = (\inst5|q\(14) & (!\inst5|q[13]~47\)) # (!\inst5|q\(14) & ((\inst5|q[13]~47\) # (GND)))
-- \inst5|q[14]~49\ = CARRY((!\inst5|q[13]~47\) # (!\inst5|q\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(14),
	datad => VCC,
	cin => \inst5|q[13]~47\,
	combout => \inst5|q[14]~48_combout\,
	cout => \inst5|q[14]~49\);

-- Location: FF_X30_Y10_N5
\inst5|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[14]~48_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(14));

-- Location: LCCOMB_X30_Y10_N6
\inst5|q[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[15]~50_combout\ = (\inst5|q\(15) & (\inst5|q[14]~49\ $ (GND))) # (!\inst5|q\(15) & (!\inst5|q[14]~49\ & VCC))
-- \inst5|q[15]~51\ = CARRY((\inst5|q\(15) & !\inst5|q[14]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(15),
	datad => VCC,
	cin => \inst5|q[14]~49\,
	combout => \inst5|q[15]~50_combout\,
	cout => \inst5|q[15]~51\);

-- Location: FF_X30_Y10_N7
\inst5|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[15]~50_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(15));

-- Location: LCCOMB_X30_Y10_N8
\inst5|q[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[16]~52_combout\ = (\inst5|q\(16) & (!\inst5|q[15]~51\)) # (!\inst5|q\(16) & ((\inst5|q[15]~51\) # (GND)))
-- \inst5|q[16]~53\ = CARRY((!\inst5|q[15]~51\) # (!\inst5|q\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(16),
	datad => VCC,
	cin => \inst5|q[15]~51\,
	combout => \inst5|q[16]~52_combout\,
	cout => \inst5|q[16]~53\);

-- Location: FF_X30_Y10_N9
\inst5|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[16]~52_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(16));

-- Location: LCCOMB_X30_Y10_N10
\inst5|q[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[17]~54_combout\ = (\inst5|q\(17) & (\inst5|q[16]~53\ $ (GND))) # (!\inst5|q\(17) & (!\inst5|q[16]~53\ & VCC))
-- \inst5|q[17]~55\ = CARRY((\inst5|q\(17) & !\inst5|q[16]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(17),
	datad => VCC,
	cin => \inst5|q[16]~53\,
	combout => \inst5|q[17]~54_combout\,
	cout => \inst5|q[17]~55\);

-- Location: FF_X30_Y10_N11
\inst5|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[17]~54_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(17));

-- Location: LCCOMB_X30_Y10_N12
\inst5|q[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[18]~56_combout\ = (\inst5|q\(18) & (!\inst5|q[17]~55\)) # (!\inst5|q\(18) & ((\inst5|q[17]~55\) # (GND)))
-- \inst5|q[18]~57\ = CARRY((!\inst5|q[17]~55\) # (!\inst5|q\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(18),
	datad => VCC,
	cin => \inst5|q[17]~55\,
	combout => \inst5|q[18]~56_combout\,
	cout => \inst5|q[18]~57\);

-- Location: FF_X30_Y10_N13
\inst5|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[18]~56_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(18));

-- Location: LCCOMB_X30_Y10_N14
\inst5|q[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[19]~58_combout\ = (\inst5|q\(19) & (\inst5|q[18]~57\ $ (GND))) # (!\inst5|q\(19) & (!\inst5|q[18]~57\ & VCC))
-- \inst5|q[19]~59\ = CARRY((\inst5|q\(19) & !\inst5|q[18]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(19),
	datad => VCC,
	cin => \inst5|q[18]~57\,
	combout => \inst5|q[19]~58_combout\,
	cout => \inst5|q[19]~59\);

-- Location: FF_X30_Y10_N15
\inst5|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[19]~58_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(19));

-- Location: LCCOMB_X30_Y10_N16
\inst5|q[20]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[20]~60_combout\ = (\inst5|q\(20) & (!\inst5|q[19]~59\)) # (!\inst5|q\(20) & ((\inst5|q[19]~59\) # (GND)))
-- \inst5|q[20]~61\ = CARRY((!\inst5|q[19]~59\) # (!\inst5|q\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(20),
	datad => VCC,
	cin => \inst5|q[19]~59\,
	combout => \inst5|q[20]~60_combout\,
	cout => \inst5|q[20]~61\);

-- Location: FF_X30_Y10_N17
\inst5|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[20]~60_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(20));

-- Location: LCCOMB_X30_Y10_N18
\inst5|q[21]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[21]~62_combout\ = (\inst5|q\(21) & (\inst5|q[20]~61\ $ (GND))) # (!\inst5|q\(21) & (!\inst5|q[20]~61\ & VCC))
-- \inst5|q[21]~63\ = CARRY((\inst5|q\(21) & !\inst5|q[20]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|q\(21),
	datad => VCC,
	cin => \inst5|q[20]~61\,
	combout => \inst5|q[21]~62_combout\,
	cout => \inst5|q[21]~63\);

-- Location: FF_X30_Y10_N19
\inst5|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[21]~62_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(21));

-- Location: LCCOMB_X30_Y10_N20
\inst5|q[22]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|q[22]~64_combout\ = \inst5|q[21]~63\ $ (\inst5|q\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst5|q\(22),
	cin => \inst5|q[21]~63\,
	combout => \inst5|q[22]~64_combout\);

-- Location: FF_X30_Y10_N21
\inst5|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|q[22]~64_combout\,
	sclr => \inst5|_~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|q\(22));

-- Location: LCCOMB_X30_Y10_N26
\inst5|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~5_combout\ = (\inst5|q\(17) & (\inst5|q\(16) & (\inst5|q\(19) & \inst5|q\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(17),
	datab => \inst5|q\(16),
	datac => \inst5|q\(19),
	datad => \inst5|q\(18),
	combout => \inst5|_~5_combout\);

-- Location: LCCOMB_X30_Y10_N24
\inst5|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|_~6_combout\ = (\inst5|q\(22) & (!\inst5|q\(21) & (\inst5|_~5_combout\ & \inst5|q\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|q\(22),
	datab => \inst5|q\(21),
	datac => \inst5|_~5_combout\,
	datad => \inst5|q\(20),
	combout => \inst5|_~6_combout\);

-- Location: LCCOMB_X31_Y10_N18
\inst5|aux_tff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|aux_tff~1_combout\ = \inst5|aux_tff~q\ $ (((\inst5|_~6_combout\ & \inst5|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|_~6_combout\,
	datac => \inst5|aux_tff~q\,
	datad => \inst5|_~4_combout\,
	combout => \inst5|aux_tff~1_combout\);

-- Location: LCCOMB_X31_Y10_N6
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

-- Location: FF_X31_Y10_N7
\inst5|aux_tff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|aux_tff~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|aux_tff~q\);

-- Location: CLKCTRL_G5
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

-- Location: LCCOMB_X33_Y9_N28
\inst12|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|q[0]~0_combout\ = !\inst12|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst12|q\(0),
	combout => \inst12|q[0]~0_combout\);

-- Location: FF_X33_Y9_N29
\inst12|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst12|q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|q\(0));

-- Location: LCCOMB_X33_Y9_N12
\inst12|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|_~1_combout\ = \inst12|q\(2) $ (((\inst12|q\(0) & \inst12|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst12|q\(0),
	datac => \inst12|q\(2),
	datad => \inst12|q\(1),
	combout => \inst12|_~1_combout\);

-- Location: FF_X33_Y9_N13
\inst12|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst12|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|q\(2));

-- Location: LCCOMB_X33_Y9_N30
\inst12|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|_~2_combout\ = (\inst12|q\(1) & (\inst12|q\(3) $ (((\inst12|q\(0) & \inst12|q\(2)))))) # (!\inst12|q\(1) & (\inst12|q\(3) & ((\inst12|q\(2)) # (!\inst12|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|q\(1),
	datab => \inst12|q\(0),
	datac => \inst12|q\(3),
	datad => \inst12|q\(2),
	combout => \inst12|_~2_combout\);

-- Location: FF_X33_Y9_N31
\inst12|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst12|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|q\(3));

-- Location: LCCOMB_X33_Y9_N6
\inst12|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst12|_~0_combout\ = (\inst12|q\(1) & (((!\inst12|q\(0))))) # (!\inst12|q\(1) & (\inst12|q\(0) & ((\inst12|q\(2)) # (!\inst12|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|q\(3),
	datab => \inst12|q\(2),
	datac => \inst12|q\(1),
	datad => \inst12|q\(0),
	combout => \inst12|_~0_combout\);

-- Location: FF_X33_Y9_N7
\inst12|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst12|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12|q\(1));

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

-- Location: FF_X11_Y20_N25
\inst20|inst|ff1\ : dffeas
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
	q => \inst20|inst|ff1~q\);

-- Location: LCCOMB_X11_Y20_N2
\inst20|inst|ff2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst|ff2~feeder_combout\ = \inst20|inst|ff1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst20|inst|ff1~q\,
	combout => \inst20|inst|ff2~feeder_combout\);

-- Location: FF_X11_Y20_N3
\inst20|inst|ff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst20|inst|ff2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst|ff2~q\);

-- Location: LCCOMB_X11_Y20_N12
\inst20|inst|ff3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst20|inst|ff3~0_combout\ = (\inst20|inst|ff2~q\ & ((\inst20|inst|ff3~q\) # (!\inst20|inst|ff1~q\))) # (!\inst20|inst|ff2~q\ & (\inst20|inst|ff3~q\ & !\inst20|inst|ff1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|inst|ff2~q\,
	datac => \inst20|inst|ff3~q\,
	datad => \inst20|inst|ff1~q\,
	combout => \inst20|inst|ff3~0_combout\);

-- Location: FF_X11_Y20_N13
\inst20|inst|ff3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst20|inst|ff3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|inst|ff3~q\);

-- Location: LCCOMB_X16_Y20_N8
\inst14|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|_~0_combout\ = (!\inst14|unidade_q\(0) & !\inst20|inst|ff3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|unidade_q\(0),
	datad => \inst20|inst|ff3~q\,
	combout => \inst14|_~0_combout\);

-- Location: FF_X16_Y20_N9
\inst14|unidade_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|unidade_q\(0));

-- Location: LCCOMB_X16_Y20_N18
\inst14|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|_~4_combout\ = (!\inst7|segmento[4]~9_combout\ & (!\inst20|inst|ff3~q\ & (\inst14|unidade_q\(0) $ (\inst14|unidade_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(0),
	datab => \inst7|segmento[4]~9_combout\,
	datac => \inst14|unidade_q\(1),
	datad => \inst20|inst|ff3~q\,
	combout => \inst14|_~4_combout\);

-- Location: FF_X16_Y20_N19
\inst14|unidade_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|unidade_q\(1));

-- Location: LCCOMB_X16_Y20_N10
\inst14|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|_~2_combout\ = (\inst14|_~1_combout\ & (\inst14|unidade_q\(2) $ (((\inst14|unidade_q\(0) & \inst14|unidade_q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(0),
	datab => \inst14|unidade_q\(1),
	datac => \inst14|unidade_q\(2),
	datad => \inst14|_~1_combout\,
	combout => \inst14|_~2_combout\);

-- Location: FF_X16_Y20_N11
\inst14|unidade_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|_~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|unidade_q\(2));

-- Location: LCCOMB_X16_Y20_N14
\inst14|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|op_1~0_combout\ = \inst14|unidade_q\(3) $ (((\inst14|unidade_q\(1) & (\inst14|unidade_q\(2) & \inst14|unidade_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(1),
	datab => \inst14|unidade_q\(2),
	datac => \inst14|unidade_q\(3),
	datad => \inst14|unidade_q\(0),
	combout => \inst14|op_1~0_combout\);

-- Location: LCCOMB_X16_Y20_N4
\inst14|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|_~3_combout\ = (!\inst7|segmento[4]~9_combout\ & (\inst14|op_1~0_combout\ & !\inst20|inst|ff3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|segmento[4]~9_combout\,
	datac => \inst14|op_1~0_combout\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst14|_~3_combout\);

-- Location: FF_X16_Y20_N5
\inst14|unidade_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|_~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|unidade_q\(3));

-- Location: LCCOMB_X16_Y20_N24
\inst7|segmento[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|segmento[4]~9_combout\ = (!\inst14|unidade_q\(2) & (\inst14|unidade_q\(0) & (\inst14|unidade_q\(3) & !\inst14|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(2),
	datab => \inst14|unidade_q\(0),
	datac => \inst14|unidade_q\(3),
	datad => \inst14|unidade_q\(1),
	combout => \inst7|segmento[4]~9_combout\);

-- Location: LCCOMB_X11_Y20_N10
\inst14|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|_~1_combout\ = (!\inst7|segmento[4]~9_combout\ & !\inst20|inst|ff3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|segmento[4]~9_combout\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst14|_~1_combout\);

-- Location: LCCOMB_X11_Y20_N16
\inst14|dezena_q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dezena_q[0]~2_combout\ = (!\inst20|inst|ff3~q\ & (\inst14|dezena_q\(0) $ (\inst7|segmento[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(0),
	datac => \inst7|segmento[4]~9_combout\,
	datad => \inst20|inst|ff3~q\,
	combout => \inst14|dezena_q[0]~2_combout\);

-- Location: FF_X12_Y20_N21
\inst14|dezena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	asdata => \inst14|dezena_q[0]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dezena_q\(0));

-- Location: LCCOMB_X11_Y20_N14
\inst14|dezena_q[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dezena_q[2]~0_combout\ = (!\inst20|inst|ff3~q\ & (!\inst8|segmento[4]~9_combout\ & \inst7|segmento[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst|ff3~q\,
	datab => \inst8|segmento[4]~9_combout\,
	datad => \inst7|segmento[4]~9_combout\,
	combout => \inst14|dezena_q[2]~0_combout\);

-- Location: LCCOMB_X12_Y20_N12
\inst14|dezena_q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dezena_q[1]~5_combout\ = (\inst14|dezena_q\(1) & ((\inst14|_~1_combout\) # ((!\inst14|dezena_q\(0) & \inst14|dezena_q[2]~0_combout\)))) # (!\inst14|dezena_q\(1) & (((\inst14|dezena_q\(0) & \inst14|dezena_q[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|_~1_combout\,
	datab => \inst14|dezena_q\(0),
	datac => \inst14|dezena_q\(1),
	datad => \inst14|dezena_q[2]~0_combout\,
	combout => \inst14|dezena_q[1]~5_combout\);

-- Location: FF_X12_Y20_N13
\inst14|dezena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|dezena_q[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dezena_q\(1));

-- Location: LCCOMB_X11_Y20_N24
\inst14|op_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|op_2~0_combout\ = \inst14|dezena_q\(2) $ (((\inst14|dezena_q\(0) & \inst14|dezena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(0),
	datab => \inst14|dezena_q\(1),
	datad => \inst14|dezena_q\(2),
	combout => \inst14|op_2~0_combout\);

-- Location: LCCOMB_X11_Y20_N20
\inst14|dezena_q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dezena_q[2]~1_combout\ = (\inst14|_~1_combout\ & ((\inst14|dezena_q\(2)) # ((\inst14|dezena_q[2]~0_combout\ & \inst14|op_2~0_combout\)))) # (!\inst14|_~1_combout\ & (\inst14|dezena_q[2]~0_combout\ & ((\inst14|op_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|_~1_combout\,
	datab => \inst14|dezena_q[2]~0_combout\,
	datac => \inst14|dezena_q\(2),
	datad => \inst14|op_2~0_combout\,
	combout => \inst14|dezena_q[2]~1_combout\);

-- Location: FF_X11_Y20_N21
\inst14|dezena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|dezena_q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dezena_q\(2));

-- Location: LCCOMB_X12_Y20_N22
\inst14|op_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|op_2~1_combout\ = \inst14|dezena_q\(3) $ (((\inst14|dezena_q\(1) & (\inst14|dezena_q\(0) & \inst14|dezena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(1),
	datab => \inst14|dezena_q\(0),
	datac => \inst14|dezena_q\(3),
	datad => \inst14|dezena_q\(2),
	combout => \inst14|op_2~1_combout\);

-- Location: LCCOMB_X12_Y20_N0
\inst14|dezena_q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dezena_q[3]~3_combout\ = (\inst7|segmento[4]~9_combout\ & (\inst14|op_2~1_combout\ & ((!\inst8|segmento[4]~9_combout\)))) # (!\inst7|segmento[4]~9_combout\ & (((\inst14|dezena_q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|op_2~1_combout\,
	datab => \inst14|dezena_q\(3),
	datac => \inst8|segmento[4]~9_combout\,
	datad => \inst7|segmento[4]~9_combout\,
	combout => \inst14|dezena_q[3]~3_combout\);

-- Location: LCCOMB_X12_Y20_N14
\inst14|dezena_q[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|dezena_q[3]~4_combout\ = (!\inst20|inst|ff3~q\ & \inst14|dezena_q[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|inst|ff3~q\,
	datad => \inst14|dezena_q[3]~3_combout\,
	combout => \inst14|dezena_q[3]~4_combout\);

-- Location: FF_X12_Y20_N15
\inst14|dezena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|dezena_q[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dezena_q\(3));

-- Location: LCCOMB_X12_Y20_N28
\inst8|segmento[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|segmento[4]~9_combout\ = (!\inst14|dezena_q\(1) & (\inst14|dezena_q\(0) & (\inst14|dezena_q\(3) & !\inst14|dezena_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(1),
	datab => \inst14|dezena_q\(0),
	datac => \inst14|dezena_q\(3),
	datad => \inst14|dezena_q\(2),
	combout => \inst8|segmento[4]~9_combout\);

-- Location: LCCOMB_X12_Y20_N2
\inst14|centena_q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|centena_q[0]~0_combout\ = (!\inst20|inst|ff3~q\ & (\inst14|centena_q\(0) $ (((\inst7|segmento[4]~9_combout\ & \inst8|segmento[4]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst|ff3~q\,
	datab => \inst7|segmento[4]~9_combout\,
	datac => \inst14|centena_q\(0),
	datad => \inst8|segmento[4]~9_combout\,
	combout => \inst14|centena_q[0]~0_combout\);

-- Location: FF_X12_Y20_N3
\inst14|centena_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|centena_q[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|centena_q\(0));

-- Location: LCCOMB_X11_Y20_N4
\inst14|centena_q[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|centena_q[3]~4_combout\ = (!\inst20|inst|ff3~q\ & ((!\inst7|segmento[4]~9_combout\) # (!\inst8|segmento[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst|ff3~q\,
	datab => \inst8|segmento[4]~9_combout\,
	datad => \inst7|segmento[4]~9_combout\,
	combout => \inst14|centena_q[3]~4_combout\);

-- Location: LCCOMB_X11_Y20_N28
\inst14|op_3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|op_3~1_combout\ = \inst14|centena_q\(3) $ (((\inst14|centena_q\(0) & (\inst14|centena_q\(1) & \inst14|centena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q\(0),
	datab => \inst14|centena_q\(3),
	datac => \inst14|centena_q\(1),
	datad => \inst14|centena_q\(2),
	combout => \inst14|op_3~1_combout\);

-- Location: LCCOMB_X11_Y20_N0
\inst14|centena_q[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|centena_q[3]~5_combout\ = (\inst14|centena_q[3]~3_combout\ & ((\inst14|op_3~1_combout\) # ((\inst14|centena_q[3]~4_combout\ & \inst14|centena_q\(3))))) # (!\inst14|centena_q[3]~3_combout\ & (\inst14|centena_q[3]~4_combout\ & 
-- (\inst14|centena_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q[3]~3_combout\,
	datab => \inst14|centena_q[3]~4_combout\,
	datac => \inst14|centena_q\(3),
	datad => \inst14|op_3~1_combout\,
	combout => \inst14|centena_q[3]~5_combout\);

-- Location: FF_X11_Y20_N1
\inst14|centena_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|centena_q[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|centena_q\(3));

-- Location: LCCOMB_X11_Y20_N8
\inst14|_~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|_~5_combout\ = (\inst14|centena_q\(0) & (\inst14|centena_q\(3) & (!\inst14|centena_q\(1) & !\inst14|centena_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q\(0),
	datab => \inst14|centena_q\(3),
	datac => \inst14|centena_q\(1),
	datad => \inst14|centena_q\(2),
	combout => \inst14|_~5_combout\);

-- Location: LCCOMB_X11_Y20_N30
\inst14|centena_q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|centena_q[3]~3_combout\ = (!\inst20|inst|ff3~q\ & (\inst8|segmento[4]~9_combout\ & (!\inst14|_~5_combout\ & \inst7|segmento[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|inst|ff3~q\,
	datab => \inst8|segmento[4]~9_combout\,
	datac => \inst14|_~5_combout\,
	datad => \inst7|segmento[4]~9_combout\,
	combout => \inst14|centena_q[3]~3_combout\);

-- Location: LCCOMB_X11_Y20_N26
\inst14|centena_q[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|centena_q[1]~6_combout\ = (\inst14|centena_q\(1) & ((\inst14|centena_q[3]~4_combout\) # ((\inst14|centena_q[3]~3_combout\ & !\inst14|centena_q\(0))))) # (!\inst14|centena_q\(1) & (\inst14|centena_q[3]~3_combout\ & ((\inst14|centena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q[3]~3_combout\,
	datab => \inst14|centena_q[3]~4_combout\,
	datac => \inst14|centena_q\(1),
	datad => \inst14|centena_q\(0),
	combout => \inst14|centena_q[1]~6_combout\);

-- Location: FF_X11_Y20_N27
\inst14|centena_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|centena_q[1]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|centena_q\(1));

-- Location: LCCOMB_X11_Y20_N22
\inst14|op_3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|op_3~0_combout\ = \inst14|centena_q\(2) $ (((\inst14|centena_q\(1) & \inst14|centena_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|centena_q\(2),
	datac => \inst14|centena_q\(1),
	datad => \inst14|centena_q\(0),
	combout => \inst14|op_3~0_combout\);

-- Location: LCCOMB_X11_Y20_N6
\inst14|centena_q[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|centena_q[2]~1_combout\ = (\inst14|op_3~0_combout\ & (\inst8|segmento[4]~9_combout\ & (!\inst14|_~5_combout\ & \inst7|segmento[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|op_3~0_combout\,
	datab => \inst8|segmento[4]~9_combout\,
	datac => \inst14|_~5_combout\,
	datad => \inst7|segmento[4]~9_combout\,
	combout => \inst14|centena_q[2]~1_combout\);

-- Location: LCCOMB_X12_Y20_N18
\inst14|_~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|_~6_combout\ = (\inst8|segmento[4]~9_combout\ & \inst7|segmento[4]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|segmento[4]~9_combout\,
	datad => \inst7|segmento[4]~9_combout\,
	combout => \inst14|_~6_combout\);

-- Location: LCCOMB_X11_Y20_N18
\inst14|centena_q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|centena_q[2]~2_combout\ = (!\inst20|inst|ff3~q\ & ((\inst14|centena_q[2]~1_combout\) # ((\inst14|centena_q\(2) & !\inst14|_~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q[2]~1_combout\,
	datab => \inst20|inst|ff3~q\,
	datac => \inst14|centena_q\(2),
	datad => \inst14|_~6_combout\,
	combout => \inst14|centena_q[2]~2_combout\);

-- Location: FF_X11_Y20_N19
\inst14|centena_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|centena_q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|centena_q\(2));

-- Location: LCCOMB_X14_Y20_N10
\inst|segmento_out[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~37_combout\ = (!\inst14|centena_q\(1) & (!\inst14|centena_q\(3) & (\inst14|centena_q\(2) $ (\inst14|centena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q\(2),
	datab => \inst14|centena_q\(1),
	datac => \inst14|centena_q\(0),
	datad => \inst14|centena_q\(3),
	combout => \inst|segmento_out[0]~37_combout\);

-- Location: LCCOMB_X14_Y20_N30
\inst|segmento_out[0]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~80_combout\ = (\inst|segmento_out[0]~37_combout\ & (\inst13|inst1|q\(0) & !\inst13|inst1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[0]~37_combout\,
	datac => \inst13|inst1|q\(0),
	datad => \inst13|inst1|q\(1),
	combout => \inst|segmento_out[0]~80_combout\);

-- Location: LCCOMB_X13_Y20_N22
\inst|segmento_out[0]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~35_combout\ = (!\inst14|dezena_q\(3) & (!\inst14|dezena_q\(1) & (\inst14|dezena_q\(0) $ (\inst14|dezena_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(3),
	datab => \inst14|dezena_q\(0),
	datac => \inst14|dezena_q\(2),
	datad => \inst14|dezena_q\(1),
	combout => \inst|segmento_out[0]~35_combout\);

-- Location: LCCOMB_X16_Y20_N28
\inst|segmento_out[0]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~34_combout\ = (!\inst14|unidade_q\(1) & (!\inst14|unidade_q\(3) & (\inst14|unidade_q\(2) $ (\inst14|unidade_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(1),
	datab => \inst14|unidade_q\(3),
	datac => \inst14|unidade_q\(2),
	datad => \inst14|unidade_q\(0),
	combout => \inst|segmento_out[0]~34_combout\);

-- Location: LCCOMB_X16_Y20_N30
\inst|segmento_out[0]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~36_combout\ = (\inst13|inst1|q\(1) & ((\inst13|inst1|q\(0) & ((\inst|segmento_out[0]~34_combout\))) # (!\inst13|inst1|q\(0) & (\inst|segmento_out[0]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[0]~35_combout\,
	datab => \inst|segmento_out[0]~34_combout\,
	datac => \inst13|inst1|q\(0),
	datad => \inst13|inst1|q\(1),
	combout => \inst|segmento_out[0]~36_combout\);

-- Location: LCCOMB_X12_Y20_N6
\inst14|milhar_q[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|milhar_q[0]~3_combout\ = (!\inst20|inst|ff3~q\ & (\inst14|milhar_q\(0) $ (((\inst14|_~5_combout\ & \inst14|_~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|_~5_combout\,
	datab => \inst20|inst|ff3~q\,
	datac => \inst14|milhar_q\(0),
	datad => \inst14|_~6_combout\,
	combout => \inst14|milhar_q[0]~3_combout\);

-- Location: FF_X12_Y20_N7
\inst14|milhar_q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|milhar_q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|milhar_q\(0));

-- Location: LCCOMB_X12_Y20_N4
\inst14|milhar_q[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|milhar_q[3]~1_combout\ = (!\inst20|inst|ff3~q\ & (((!\inst7|segmento[4]~9_combout\) # (!\inst8|segmento[4]~9_combout\)) # (!\inst14|_~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|_~5_combout\,
	datab => \inst8|segmento[4]~9_combout\,
	datac => \inst20|inst|ff3~q\,
	datad => \inst7|segmento[4]~9_combout\,
	combout => \inst14|milhar_q[3]~1_combout\);

-- Location: LCCOMB_X12_Y20_N20
\inst14|op_4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|op_4~0_combout\ = \inst14|milhar_q\(2) $ (((\inst14|milhar_q\(1) & \inst14|milhar_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(1),
	datab => \inst14|milhar_q\(2),
	datad => \inst14|milhar_q\(0),
	combout => \inst14|op_4~0_combout\);

-- Location: LCCOMB_X12_Y20_N16
\inst14|milhar_q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|milhar_q[2]~2_combout\ = (\inst14|op_4~0_combout\ & ((\inst14|milhar_q[3]~0_combout\) # ((\inst14|milhar_q[3]~1_combout\ & \inst14|milhar_q\(2))))) # (!\inst14|op_4~0_combout\ & (\inst14|milhar_q[3]~1_combout\ & (\inst14|milhar_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|op_4~0_combout\,
	datab => \inst14|milhar_q[3]~1_combout\,
	datac => \inst14|milhar_q\(2),
	datad => \inst14|milhar_q[3]~0_combout\,
	combout => \inst14|milhar_q[2]~2_combout\);

-- Location: FF_X12_Y20_N17
\inst14|milhar_q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|milhar_q[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|milhar_q\(2));

-- Location: LCCOMB_X12_Y20_N10
\inst14|op_4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|op_4~1_combout\ = (\inst14|milhar_q\(0) & (\inst14|milhar_q\(1) & \inst14|milhar_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(0),
	datac => \inst14|milhar_q\(1),
	datad => \inst14|milhar_q\(2),
	combout => \inst14|op_4~1_combout\);

-- Location: LCCOMB_X12_Y20_N8
\inst14|milhar_q[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|milhar_q[3]~4_combout\ = (\inst14|milhar_q\(3) & ((\inst14|milhar_q[3]~1_combout\) # ((\inst14|milhar_q[3]~0_combout\ & !\inst14|op_4~1_combout\)))) # (!\inst14|milhar_q\(3) & (\inst14|milhar_q[3]~0_combout\ & (\inst14|op_4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q[3]~0_combout\,
	datab => \inst14|op_4~1_combout\,
	datac => \inst14|milhar_q\(3),
	datad => \inst14|milhar_q[3]~1_combout\,
	combout => \inst14|milhar_q[3]~4_combout\);

-- Location: FF_X12_Y20_N9
\inst14|milhar_q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|milhar_q[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|milhar_q\(3));

-- Location: LCCOMB_X12_Y20_N24
\inst10|segmento[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst10|segmento[4]~9_combout\ = (!\inst14|milhar_q\(1) & (!\inst14|milhar_q\(2) & (\inst14|milhar_q\(3) & \inst14|milhar_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(1),
	datab => \inst14|milhar_q\(2),
	datac => \inst14|milhar_q\(3),
	datad => \inst14|milhar_q\(0),
	combout => \inst10|segmento[4]~9_combout\);

-- Location: LCCOMB_X12_Y20_N26
\inst14|milhar_q[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|milhar_q[3]~0_combout\ = (\inst14|_~5_combout\ & (!\inst10|segmento[4]~9_combout\ & (!\inst20|inst|ff3~q\ & \inst14|_~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|_~5_combout\,
	datab => \inst10|segmento[4]~9_combout\,
	datac => \inst20|inst|ff3~q\,
	datad => \inst14|_~6_combout\,
	combout => \inst14|milhar_q[3]~0_combout\);

-- Location: LCCOMB_X12_Y20_N30
\inst14|milhar_q[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst14|milhar_q[1]~5_combout\ = (\inst14|milhar_q\(1) & ((\inst14|milhar_q[3]~1_combout\) # ((!\inst14|milhar_q\(0) & \inst14|milhar_q[3]~0_combout\)))) # (!\inst14|milhar_q\(1) & (\inst14|milhar_q\(0) & ((\inst14|milhar_q[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(0),
	datab => \inst14|milhar_q[3]~1_combout\,
	datac => \inst14|milhar_q\(1),
	datad => \inst14|milhar_q[3]~0_combout\,
	combout => \inst14|milhar_q[1]~5_combout\);

-- Location: FF_X12_Y20_N31
\inst14|milhar_q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|aux_tff~clkctrl_outclk\,
	d => \inst14|milhar_q[1]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|milhar_q\(1));

-- Location: LCCOMB_X17_Y20_N24
\inst|segmento_out[0]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~38_combout\ = (!\inst14|milhar_q\(1) & (!\inst14|milhar_q\(3) & (\inst14|milhar_q\(0) $ (\inst14|milhar_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(0),
	datab => \inst14|milhar_q\(1),
	datac => \inst14|milhar_q\(3),
	datad => \inst14|milhar_q\(2),
	combout => \inst|segmento_out[0]~38_combout\);

-- Location: LCCOMB_X16_Y20_N12
\inst|segmento_out[0]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[0]~39_combout\ = (\inst|segmento_out[0]~80_combout\) # ((\inst|segmento_out[0]~36_combout\) # ((\inst|segmento_out[1]~33_combout\ & \inst|segmento_out[0]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[1]~33_combout\,
	datab => \inst|segmento_out[0]~80_combout\,
	datac => \inst|segmento_out[0]~36_combout\,
	datad => \inst|segmento_out[0]~38_combout\,
	combout => \inst|segmento_out[0]~39_combout\);

-- Location: LCCOMB_X13_Y20_N24
\inst|segmento_out[1]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~40_combout\ = (!\inst14|dezena_q\(3) & (\inst14|dezena_q\(2) & (\inst14|dezena_q\(0) $ (\inst14|dezena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(3),
	datab => \inst14|dezena_q\(0),
	datac => \inst14|dezena_q\(2),
	datad => \inst14|dezena_q\(1),
	combout => \inst|segmento_out[1]~40_combout\);

-- Location: LCCOMB_X14_Y20_N24
\inst|segmento_out[1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~43_combout\ = (\inst14|centena_q\(2) & (!\inst14|centena_q\(3) & (\inst14|centena_q\(1) $ (\inst14|centena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q\(2),
	datab => \inst14|centena_q\(1),
	datac => \inst14|centena_q\(0),
	datad => \inst14|centena_q\(3),
	combout => \inst|segmento_out[1]~43_combout\);

-- Location: LCCOMB_X17_Y20_N12
\inst|segmento_out[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~42_combout\ = (\inst14|unidade_q\(2) & (!\inst14|unidade_q\(3) & (\inst14|unidade_q\(0) $ (\inst14|unidade_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(2),
	datab => \inst14|unidade_q\(0),
	datac => \inst14|unidade_q\(3),
	datad => \inst14|unidade_q\(1),
	combout => \inst|segmento_out[1]~42_combout\);

-- Location: LCCOMB_X17_Y20_N26
\inst|segmento_out[1]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~44_combout\ = (\inst13|inst1|q\(1) & (((\inst|segmento_out[1]~42_combout\)) # (!\inst13|inst1|q\(0)))) # (!\inst13|inst1|q\(1) & (\inst13|inst1|q\(0) & (\inst|segmento_out[1]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|q\(1),
	datab => \inst13|inst1|q\(0),
	datac => \inst|segmento_out[1]~43_combout\,
	datad => \inst|segmento_out[1]~42_combout\,
	combout => \inst|segmento_out[1]~44_combout\);

-- Location: LCCOMB_X17_Y20_N18
\inst|segmento_out[1]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~41_combout\ = (!\inst14|milhar_q\(3) & (\inst14|milhar_q\(2) & (\inst14|milhar_q\(0) $ (\inst14|milhar_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(0),
	datab => \inst14|milhar_q\(1),
	datac => \inst14|milhar_q\(3),
	datad => \inst14|milhar_q\(2),
	combout => \inst|segmento_out[1]~41_combout\);

-- Location: LCCOMB_X17_Y20_N0
\inst|segmento_out[1]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[1]~45_combout\ = (\inst13|inst1|q\(0) & (((\inst|segmento_out[1]~44_combout\)))) # (!\inst13|inst1|q\(0) & ((\inst|segmento_out[1]~44_combout\ & (\inst|segmento_out[1]~40_combout\)) # (!\inst|segmento_out[1]~44_combout\ & 
-- ((\inst|segmento_out[1]~41_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[1]~40_combout\,
	datab => \inst13|inst1|q\(0),
	datac => \inst|segmento_out[1]~44_combout\,
	datad => \inst|segmento_out[1]~41_combout\,
	combout => \inst|segmento_out[1]~45_combout\);

-- Location: LCCOMB_X14_Y20_N18
\inst|segmento_out[2]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~50_combout\ = (\inst14|centena_q\(1) & !\inst14|centena_q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst14|centena_q\(1),
	datad => \inst14|centena_q\(3),
	combout => \inst|segmento_out[2]~50_combout\);

-- Location: LCCOMB_X14_Y20_N16
\inst|segmento_out[2]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~51_combout\ = (!\inst14|centena_q\(0) & (\inst|segmento_out[2]~50_combout\ & (!\inst14|centena_q\(2) & !\inst13|inst7|alterna\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q\(0),
	datab => \inst|segmento_out[2]~50_combout\,
	datac => \inst14|centena_q\(2),
	datad => \inst13|inst7|alterna\(2),
	combout => \inst|segmento_out[2]~51_combout\);

-- Location: LCCOMB_X17_Y20_N22
\inst|segmento_out[2]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~52_combout\ = (!\inst13|inst1|q\(1) & (!\inst14|milhar_q\(3) & !\inst13|inst1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|q\(1),
	datab => \inst14|milhar_q\(3),
	datac => \inst13|inst1|q\(0),
	combout => \inst|segmento_out[2]~52_combout\);

-- Location: LCCOMB_X17_Y20_N16
\inst|segmento_out[2]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~53_combout\ = (!\inst14|milhar_q\(0) & (\inst14|milhar_q\(1) & (\inst|segmento_out[2]~52_combout\ & !\inst14|milhar_q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(0),
	datab => \inst14|milhar_q\(1),
	datac => \inst|segmento_out[2]~52_combout\,
	datad => \inst14|milhar_q\(2),
	combout => \inst|segmento_out[2]~53_combout\);

-- Location: LCCOMB_X13_Y20_N18
\inst|segmento_out[2]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~48_combout\ = (!\inst14|dezena_q\(3) & (\inst13|inst1|q\(1) & (!\inst13|inst1|q\(0) & \inst14|dezena_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(3),
	datab => \inst13|inst1|q\(1),
	datac => \inst13|inst1|q\(0),
	datad => \inst14|dezena_q\(1),
	combout => \inst|segmento_out[2]~48_combout\);

-- Location: LCCOMB_X13_Y20_N0
\inst|segmento_out[2]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~49_combout\ = (!\inst14|dezena_q\(0) & (!\inst14|dezena_q\(2) & \inst|segmento_out[2]~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|dezena_q\(0),
	datac => \inst14|dezena_q\(2),
	datad => \inst|segmento_out[2]~48_combout\,
	combout => \inst|segmento_out[2]~49_combout\);

-- Location: LCCOMB_X17_Y20_N6
\inst|segmento_out[2]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~46_combout\ = (\inst13|inst1|q\(0) & (!\inst14|unidade_q\(3) & (\inst13|inst1|q\(1) & \inst14|unidade_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst1|q\(0),
	datab => \inst14|unidade_q\(3),
	datac => \inst13|inst1|q\(1),
	datad => \inst14|unidade_q\(1),
	combout => \inst|segmento_out[2]~46_combout\);

-- Location: LCCOMB_X17_Y20_N28
\inst|segmento_out[2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[2]~47_combout\ = (!\inst14|unidade_q\(2) & (!\inst14|unidade_q\(0) & \inst|segmento_out[2]~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(2),
	datac => \inst14|unidade_q\(0),
	datad => \inst|segmento_out[2]~46_combout\,
	combout => \inst|segmento_out[2]~47_combout\);

-- Location: LCCOMB_X17_Y20_N2
\inst|segmento_out[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out\(2) = (\inst|segmento_out[2]~51_combout\) # ((\inst|segmento_out[2]~53_combout\) # ((\inst|segmento_out[2]~49_combout\) # (\inst|segmento_out[2]~47_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[2]~51_combout\,
	datab => \inst|segmento_out[2]~53_combout\,
	datac => \inst|segmento_out[2]~49_combout\,
	datad => \inst|segmento_out[2]~47_combout\,
	combout => \inst|segmento_out\(2));

-- Location: LCCOMB_X13_Y20_N12
\inst|segmento_out[3]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~57_combout\ = (!\inst14|milhar_q\(3) & ((\inst14|milhar_q\(1) & (\inst14|milhar_q\(0) & \inst14|milhar_q\(2))) # (!\inst14|milhar_q\(1) & (\inst14|milhar_q\(0) $ (\inst14|milhar_q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(3),
	datab => \inst14|milhar_q\(1),
	datac => \inst14|milhar_q\(0),
	datad => \inst14|milhar_q\(2),
	combout => \inst|segmento_out[3]~57_combout\);

-- Location: LCCOMB_X13_Y20_N2
\inst|segmento_out[3]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~56_combout\ = (!\inst14|dezena_q\(3) & ((\inst14|dezena_q\(0) & (\inst14|dezena_q\(2) $ (!\inst14|dezena_q\(1)))) # (!\inst14|dezena_q\(0) & (\inst14|dezena_q\(2) & !\inst14|dezena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(3),
	datab => \inst14|dezena_q\(0),
	datac => \inst14|dezena_q\(2),
	datad => \inst14|dezena_q\(1),
	combout => \inst|segmento_out[3]~56_combout\);

-- Location: LCCOMB_X13_Y20_N14
\inst|segmento_out[3]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~58_combout\ = (\inst13|inst1|q\(0) & (((\inst13|inst1|q\(1))))) # (!\inst13|inst1|q\(0) & ((\inst13|inst1|q\(1) & ((\inst|segmento_out[3]~56_combout\))) # (!\inst13|inst1|q\(1) & (\inst|segmento_out[3]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[3]~57_combout\,
	datab => \inst|segmento_out[3]~56_combout\,
	datac => \inst13|inst1|q\(0),
	datad => \inst13|inst1|q\(1),
	combout => \inst|segmento_out[3]~58_combout\);

-- Location: LCCOMB_X14_Y20_N22
\inst|segmento_out[3]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~55_combout\ = (!\inst14|centena_q\(3) & ((\inst14|centena_q\(2) & (\inst14|centena_q\(1) $ (!\inst14|centena_q\(0)))) # (!\inst14|centena_q\(2) & (!\inst14|centena_q\(1) & \inst14|centena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q\(2),
	datab => \inst14|centena_q\(1),
	datac => \inst14|centena_q\(0),
	datad => \inst14|centena_q\(3),
	combout => \inst|segmento_out[3]~55_combout\);

-- Location: LCCOMB_X16_Y20_N22
\inst|segmento_out[3]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~54_combout\ = (!\inst14|unidade_q\(3) & ((\inst14|unidade_q\(1) & (\inst14|unidade_q\(2) & \inst14|unidade_q\(0))) # (!\inst14|unidade_q\(1) & (\inst14|unidade_q\(2) $ (\inst14|unidade_q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(1),
	datab => \inst14|unidade_q\(3),
	datac => \inst14|unidade_q\(2),
	datad => \inst14|unidade_q\(0),
	combout => \inst|segmento_out[3]~54_combout\);

-- Location: LCCOMB_X14_Y20_N12
\inst|segmento_out[3]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[3]~59_combout\ = (\inst|segmento_out[3]~58_combout\ & (((\inst|segmento_out[3]~54_combout\)) # (!\inst13|inst1|q\(0)))) # (!\inst|segmento_out[3]~58_combout\ & (\inst13|inst1|q\(0) & (\inst|segmento_out[3]~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[3]~58_combout\,
	datab => \inst13|inst1|q\(0),
	datac => \inst|segmento_out[3]~55_combout\,
	datad => \inst|segmento_out[3]~54_combout\,
	combout => \inst|segmento_out[3]~59_combout\);

-- Location: LCCOMB_X16_Y20_N20
\inst|segmento_out[4]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~60_combout\ = (\inst14|unidade_q\(1) & (!\inst14|unidade_q\(3) & ((\inst14|unidade_q\(0))))) # (!\inst14|unidade_q\(1) & ((\inst14|unidade_q\(2) & (!\inst14|unidade_q\(3))) # (!\inst14|unidade_q\(2) & ((\inst14|unidade_q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(1),
	datab => \inst14|unidade_q\(3),
	datac => \inst14|unidade_q\(2),
	datad => \inst14|unidade_q\(0),
	combout => \inst|segmento_out[4]~60_combout\);

-- Location: LCCOMB_X13_Y20_N20
\inst|segmento_out[4]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~61_combout\ = (\inst14|dezena_q\(1) & (!\inst14|dezena_q\(3) & (\inst14|dezena_q\(0)))) # (!\inst14|dezena_q\(1) & ((\inst14|dezena_q\(2) & (!\inst14|dezena_q\(3))) # (!\inst14|dezena_q\(2) & ((\inst14|dezena_q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(3),
	datab => \inst14|dezena_q\(0),
	datac => \inst14|dezena_q\(2),
	datad => \inst14|dezena_q\(1),
	combout => \inst|segmento_out[4]~61_combout\);

-- Location: LCCOMB_X13_Y20_N6
\inst|segmento_out[4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~62_combout\ = (\inst13|inst1|q\(1) & ((\inst13|inst1|q\(0) & (\inst|segmento_out[4]~60_combout\)) # (!\inst13|inst1|q\(0) & ((\inst|segmento_out[4]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[4]~60_combout\,
	datab => \inst|segmento_out[4]~61_combout\,
	datac => \inst13|inst1|q\(0),
	datad => \inst13|inst1|q\(1),
	combout => \inst|segmento_out[4]~62_combout\);

-- Location: LCCOMB_X14_Y20_N26
\inst|segmento_out[4]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~63_combout\ = (\inst14|centena_q\(1) & (((\inst14|centena_q\(0) & !\inst14|centena_q\(3))))) # (!\inst14|centena_q\(1) & ((\inst14|centena_q\(2) & ((!\inst14|centena_q\(3)))) # (!\inst14|centena_q\(2) & (\inst14|centena_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q\(2),
	datab => \inst14|centena_q\(1),
	datac => \inst14|centena_q\(0),
	datad => \inst14|centena_q\(3),
	combout => \inst|segmento_out[4]~63_combout\);

-- Location: LCCOMB_X13_Y20_N26
\inst|segmento_out[4]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~81_combout\ = (\inst|segmento_out[4]~63_combout\ & (\inst13|inst1|q\(0) & !\inst13|inst1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|segmento_out[4]~63_combout\,
	datac => \inst13|inst1|q\(0),
	datad => \inst13|inst1|q\(1),
	combout => \inst|segmento_out[4]~81_combout\);

-- Location: LCCOMB_X17_Y20_N8
\inst|segmento_out[4]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~64_combout\ = (\inst14|milhar_q\(1) & (\inst14|milhar_q\(0) & (!\inst14|milhar_q\(3)))) # (!\inst14|milhar_q\(1) & ((\inst14|milhar_q\(2) & ((!\inst14|milhar_q\(3)))) # (!\inst14|milhar_q\(2) & (\inst14|milhar_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(0),
	datab => \inst14|milhar_q\(1),
	datac => \inst14|milhar_q\(3),
	datad => \inst14|milhar_q\(2),
	combout => \inst|segmento_out[4]~64_combout\);

-- Location: LCCOMB_X13_Y20_N28
\inst|segmento_out[4]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[4]~65_combout\ = (\inst|segmento_out[4]~62_combout\) # ((\inst|segmento_out[4]~81_combout\) # ((\inst|segmento_out[1]~33_combout\ & \inst|segmento_out[4]~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[4]~62_combout\,
	datab => \inst|segmento_out[1]~33_combout\,
	datac => \inst|segmento_out[4]~81_combout\,
	datad => \inst|segmento_out[4]~64_combout\,
	combout => \inst|segmento_out[4]~65_combout\);

-- Location: LCCOMB_X17_Y20_N14
\inst|segmento_out[5]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~69_combout\ = (!\inst14|milhar_q\(3) & ((\inst14|milhar_q\(0) & ((\inst14|milhar_q\(1)) # (!\inst14|milhar_q\(2)))) # (!\inst14|milhar_q\(0) & (\inst14|milhar_q\(1) & !\inst14|milhar_q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(0),
	datab => \inst14|milhar_q\(1),
	datac => \inst14|milhar_q\(3),
	datad => \inst14|milhar_q\(2),
	combout => \inst|segmento_out[5]~69_combout\);

-- Location: LCCOMB_X14_Y20_N14
\inst|segmento_out[5]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~70_combout\ = (!\inst14|centena_q\(3) & ((\inst14|centena_q\(2) & (\inst14|centena_q\(1) & \inst14|centena_q\(0))) # (!\inst14|centena_q\(2) & ((\inst14|centena_q\(1)) # (\inst14|centena_q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q\(2),
	datab => \inst14|centena_q\(1),
	datac => \inst14|centena_q\(0),
	datad => \inst14|centena_q\(3),
	combout => \inst|segmento_out[5]~70_combout\);

-- Location: LCCOMB_X14_Y20_N8
\inst|segmento_out[5]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~71_combout\ = (\inst|segmento_out[5]~69_combout\ & ((\inst|segmento_out[1]~33_combout\) # ((\inst|segmento_out[5]~70_combout\ & !\inst13|inst7|alterna\(2))))) # (!\inst|segmento_out[5]~69_combout\ & 
-- (((\inst|segmento_out[5]~70_combout\ & !\inst13|inst7|alterna\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[5]~69_combout\,
	datab => \inst|segmento_out[1]~33_combout\,
	datac => \inst|segmento_out[5]~70_combout\,
	datad => \inst13|inst7|alterna\(2),
	combout => \inst|segmento_out[5]~71_combout\);

-- Location: LCCOMB_X13_Y20_N10
\inst|segmento_out[5]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~67_combout\ = (!\inst14|dezena_q\(3) & ((\inst14|dezena_q\(0) & ((\inst14|dezena_q\(1)) # (!\inst14|dezena_q\(2)))) # (!\inst14|dezena_q\(0) & (!\inst14|dezena_q\(2) & \inst14|dezena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(3),
	datab => \inst14|dezena_q\(0),
	datac => \inst14|dezena_q\(2),
	datad => \inst14|dezena_q\(1),
	combout => \inst|segmento_out[5]~67_combout\);

-- Location: LCCOMB_X16_Y20_N2
\inst|segmento_out[5]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~66_combout\ = (!\inst14|unidade_q\(3) & ((\inst14|unidade_q\(1) & ((\inst14|unidade_q\(0)) # (!\inst14|unidade_q\(2)))) # (!\inst14|unidade_q\(1) & (!\inst14|unidade_q\(2) & \inst14|unidade_q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(1),
	datab => \inst14|unidade_q\(3),
	datac => \inst14|unidade_q\(2),
	datad => \inst14|unidade_q\(0),
	combout => \inst|segmento_out[5]~66_combout\);

-- Location: LCCOMB_X14_Y20_N20
\inst|segmento_out[5]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~68_combout\ = (\inst13|inst1|q\(1) & ((\inst13|inst1|q\(0) & ((\inst|segmento_out[5]~66_combout\))) # (!\inst13|inst1|q\(0) & (\inst|segmento_out[5]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[5]~67_combout\,
	datab => \inst13|inst1|q\(1),
	datac => \inst13|inst1|q\(0),
	datad => \inst|segmento_out[5]~66_combout\,
	combout => \inst|segmento_out[5]~68_combout\);

-- Location: LCCOMB_X14_Y20_N2
\inst|segmento_out[5]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[5]~72_combout\ = (\inst|segmento_out[5]~71_combout\) # (\inst|segmento_out[5]~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|segmento_out[5]~71_combout\,
	datad => \inst|segmento_out[5]~68_combout\,
	combout => \inst|segmento_out[5]~72_combout\);

-- Location: LCCOMB_X14_Y20_N4
\inst|segmento_out[6]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~77_combout\ = (!\inst13|inst1|q\(1) & ((\inst14|centena_q\(2) & (\inst14|centena_q\(1) & \inst14|centena_q\(0))) # (!\inst14|centena_q\(2) & (!\inst14|centena_q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q\(2),
	datab => \inst14|centena_q\(1),
	datac => \inst14|centena_q\(0),
	datad => \inst13|inst1|q\(1),
	combout => \inst|segmento_out[6]~77_combout\);

-- Location: LCCOMB_X16_Y20_N0
\inst|segmento_out[6]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~76_combout\ = (\inst13|inst1|q\(1) & ((\inst14|unidade_q\(1) & (\inst14|unidade_q\(0) & \inst14|unidade_q\(2))) # (!\inst14|unidade_q\(1) & ((!\inst14|unidade_q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|unidade_q\(0),
	datab => \inst14|unidade_q\(1),
	datac => \inst14|unidade_q\(2),
	datad => \inst13|inst1|q\(1),
	combout => \inst|segmento_out[6]~76_combout\);

-- Location: LCCOMB_X16_Y20_N26
\inst|segmento_out[6]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~78_combout\ = (\inst14|centena_q\(3) & (((!\inst14|unidade_q\(3) & \inst|segmento_out[6]~76_combout\)))) # (!\inst14|centena_q\(3) & ((\inst|segmento_out[6]~77_combout\) # ((!\inst14|unidade_q\(3) & 
-- \inst|segmento_out[6]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|centena_q\(3),
	datab => \inst|segmento_out[6]~77_combout\,
	datac => \inst14|unidade_q\(3),
	datad => \inst|segmento_out[6]~76_combout\,
	combout => \inst|segmento_out[6]~78_combout\);

-- Location: LCCOMB_X17_Y20_N20
\inst|segmento_out[6]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~73_combout\ = (\inst|segmento_out[2]~52_combout\ & ((\inst14|milhar_q\(1) & (\inst14|milhar_q\(0) & \inst14|milhar_q\(2))) # (!\inst14|milhar_q\(1) & ((!\inst14|milhar_q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|milhar_q\(0),
	datab => \inst14|milhar_q\(1),
	datac => \inst|segmento_out[2]~52_combout\,
	datad => \inst14|milhar_q\(2),
	combout => \inst|segmento_out[6]~73_combout\);

-- Location: LCCOMB_X13_Y20_N8
\inst|segmento_out[6]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~74_combout\ = (!\inst14|dezena_q\(3) & ((\inst14|dezena_q\(2) & (\inst14|dezena_q\(0) & \inst14|dezena_q\(1))) # (!\inst14|dezena_q\(2) & ((!\inst14|dezena_q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|dezena_q\(3),
	datab => \inst14|dezena_q\(0),
	datac => \inst14|dezena_q\(2),
	datad => \inst14|dezena_q\(1),
	combout => \inst|segmento_out[6]~74_combout\);

-- Location: LCCOMB_X17_Y20_N10
\inst|segmento_out[6]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~75_combout\ = (\inst|segmento_out[6]~74_combout\ & (!\inst13|inst1|q\(0) & \inst13|inst1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[6]~74_combout\,
	datab => \inst13|inst1|q\(0),
	datac => \inst13|inst1|q\(1),
	combout => \inst|segmento_out[6]~75_combout\);

-- Location: LCCOMB_X17_Y20_N4
\inst|segmento_out[6]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|segmento_out[6]~79_combout\ = (\inst|segmento_out[6]~73_combout\) # ((\inst|segmento_out[6]~75_combout\) # ((\inst|segmento_out[6]~78_combout\ & \inst13|inst1|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|segmento_out[6]~78_combout\,
	datab => \inst|segmento_out[6]~73_combout\,
	datac => \inst13|inst1|q\(0),
	datad => \inst|segmento_out[6]~75_combout\,
	combout => \inst|segmento_out[6]~79_combout\);

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


