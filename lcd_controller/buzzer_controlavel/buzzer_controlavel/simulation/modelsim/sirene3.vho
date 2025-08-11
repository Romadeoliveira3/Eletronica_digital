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

-- DATE "03/28/2022 19:48:32"

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

ENTITY 	buzzer_controlavel IS
    PORT (
	buzzer : OUT std_logic;
	clock : IN std_logic;
	key : IN std_logic_vector(2 DOWNTO 1)
	);
END buzzer_controlavel;

-- Design Ports Information
-- buzzer	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF buzzer_controlavel IS
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
SIGNAL ww_key : std_logic_vector(2 DOWNTO 1);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|div_clock|cnt[0]~32_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[0]~33\ : std_logic;
SIGNAL \inst|div_clock|cnt[1]~34_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[1]~35\ : std_logic;
SIGNAL \inst|div_clock|cnt[2]~36_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[2]~37\ : std_logic;
SIGNAL \inst|div_clock|cnt[3]~38_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[3]~39\ : std_logic;
SIGNAL \inst|div_clock|cnt[4]~40_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[4]~41\ : std_logic;
SIGNAL \inst|div_clock|cnt[5]~42_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[5]~43\ : std_logic;
SIGNAL \inst|div_clock|cnt[6]~44_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[6]~45\ : std_logic;
SIGNAL \inst|div_clock|cnt[7]~46_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[7]~47\ : std_logic;
SIGNAL \inst|div_clock|cnt[8]~48_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[8]~49\ : std_logic;
SIGNAL \inst|div_clock|cnt[9]~50_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[9]~51\ : std_logic;
SIGNAL \inst|div_clock|cnt[10]~52_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[10]~53\ : std_logic;
SIGNAL \inst|div_clock|cnt[11]~54_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[11]~55\ : std_logic;
SIGNAL \inst|div_clock|cnt[12]~56_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[12]~57\ : std_logic;
SIGNAL \inst|div_clock|cnt[13]~58_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[13]~59\ : std_logic;
SIGNAL \inst|div_clock|cnt[14]~60_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[14]~61\ : std_logic;
SIGNAL \inst|div_clock|cnt[15]~62_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[15]~63\ : std_logic;
SIGNAL \inst|div_clock|cnt[16]~64_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[16]~65\ : std_logic;
SIGNAL \inst|div_clock|cnt[17]~66_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[17]~67\ : std_logic;
SIGNAL \inst|div_clock|cnt[18]~68_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[18]~69\ : std_logic;
SIGNAL \inst|div_clock|cnt[19]~70_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[19]~71\ : std_logic;
SIGNAL \inst|div_clock|cnt[20]~72_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[20]~73\ : std_logic;
SIGNAL \inst|div_clock|cnt[21]~74_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[21]~75\ : std_logic;
SIGNAL \inst|div_clock|cnt[22]~76_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[22]~77\ : std_logic;
SIGNAL \inst|div_clock|cnt[23]~78_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[23]~79\ : std_logic;
SIGNAL \inst|div_clock|cnt[24]~80_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[24]~81\ : std_logic;
SIGNAL \inst|div_clock|cnt[25]~82_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[25]~83\ : std_logic;
SIGNAL \inst|div_clock|cnt[26]~84_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[26]~85\ : std_logic;
SIGNAL \inst|div_clock|cnt[27]~86_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[27]~87\ : std_logic;
SIGNAL \inst|div_clock|cnt[28]~88_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[28]~89\ : std_logic;
SIGNAL \inst|div_clock|cnt[29]~90_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[29]~91\ : std_logic;
SIGNAL \inst|div_clock|cnt[30]~92_combout\ : std_logic;
SIGNAL \inst|div_clock|cnt[30]~93\ : std_logic;
SIGNAL \inst|div_clock|cnt[31]~94_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~4_combout\ : std_logic;
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \inst|control|Disparo~feeder_combout\ : std_logic;
SIGNAL \inst|control|Disparo~q\ : std_logic;
SIGNAL \inst|control|Selector1~0_combout\ : std_logic;
SIGNAL \inst|control|proximo_estado.s0~0_combout\ : std_logic;
SIGNAL \inst|control|estado_atual.s2~q\ : std_logic;
SIGNAL \inst|temp|Add0~0_combout\ : std_logic;
SIGNAL \inst|temp|Add0~5_combout\ : std_logic;
SIGNAL \inst|temp|Add0~1\ : std_logic;
SIGNAL \inst|temp|Add0~2_combout\ : std_logic;
SIGNAL \inst|temp|Add0~4_combout\ : std_logic;
SIGNAL \inst|temp|Add0~3\ : std_logic;
SIGNAL \inst|temp|Add0~6_combout\ : std_logic;
SIGNAL \inst|temp|Add0~8_combout\ : std_logic;
SIGNAL \inst|temp|Add0~7\ : std_logic;
SIGNAL \inst|temp|Add0~9_combout\ : std_logic;
SIGNAL \inst|temp|Add0~11_combout\ : std_logic;
SIGNAL \inst|temp|Add0~10\ : std_logic;
SIGNAL \inst|temp|Add0~12_combout\ : std_logic;
SIGNAL \inst|temp|Add0~14_combout\ : std_logic;
SIGNAL \inst|temp|Add0~13\ : std_logic;
SIGNAL \inst|temp|Add0~15_combout\ : std_logic;
SIGNAL \inst|temp|Add0~17_combout\ : std_logic;
SIGNAL \inst|temp|Add0~16\ : std_logic;
SIGNAL \inst|temp|Add0~18_combout\ : std_logic;
SIGNAL \inst|temp|cnt~0_combout\ : std_logic;
SIGNAL \inst|temp|Add0~19\ : std_logic;
SIGNAL \inst|temp|Add0~20_combout\ : std_logic;
SIGNAL \inst|temp|cnt~1_combout\ : std_logic;
SIGNAL \inst|temp|Add0~21\ : std_logic;
SIGNAL \inst|temp|Add0~22_combout\ : std_logic;
SIGNAL \inst|temp|Add0~24_combout\ : std_logic;
SIGNAL \inst|temp|Add0~23\ : std_logic;
SIGNAL \inst|temp|Add0~25_combout\ : std_logic;
SIGNAL \inst|temp|Add0~27_combout\ : std_logic;
SIGNAL \inst|temp|Add0~26\ : std_logic;
SIGNAL \inst|temp|Add0~28_combout\ : std_logic;
SIGNAL \inst|temp|Add0~30_combout\ : std_logic;
SIGNAL \inst|temp|Add0~29\ : std_logic;
SIGNAL \inst|temp|Add0~31_combout\ : std_logic;
SIGNAL \inst|temp|cnt~2_combout\ : std_logic;
SIGNAL \inst|temp|Add0~32\ : std_logic;
SIGNAL \inst|temp|Add0~33_combout\ : std_logic;
SIGNAL \inst|temp|Add0~35_combout\ : std_logic;
SIGNAL \inst|temp|Add0~34\ : std_logic;
SIGNAL \inst|temp|Add0~36_combout\ : std_logic;
SIGNAL \inst|temp|Add0~38_combout\ : std_logic;
SIGNAL \inst|temp|Add0~37\ : std_logic;
SIGNAL \inst|temp|Add0~39_combout\ : std_logic;
SIGNAL \inst|temp|Add0~41_combout\ : std_logic;
SIGNAL \inst|temp|Add0~40\ : std_logic;
SIGNAL \inst|temp|Add0~42_combout\ : std_logic;
SIGNAL \inst|temp|cnt~3_combout\ : std_logic;
SIGNAL \inst|temp|Add0~43\ : std_logic;
SIGNAL \inst|temp|Add0~44_combout\ : std_logic;
SIGNAL \inst|temp|cnt~4_combout\ : std_logic;
SIGNAL \inst|temp|Add0~45\ : std_logic;
SIGNAL \inst|temp|Add0~46_combout\ : std_logic;
SIGNAL \inst|temp|cnt~5_combout\ : std_logic;
SIGNAL \inst|temp|Add0~47\ : std_logic;
SIGNAL \inst|temp|Add0~48_combout\ : std_logic;
SIGNAL \inst|temp|cnt~6_combout\ : std_logic;
SIGNAL \inst|temp|Add0~49\ : std_logic;
SIGNAL \inst|temp|Add0~50_combout\ : std_logic;
SIGNAL \inst|temp|Add0~52_combout\ : std_logic;
SIGNAL \inst|temp|Add0~51\ : std_logic;
SIGNAL \inst|temp|Add0~53_combout\ : std_logic;
SIGNAL \inst|temp|Add0~55_combout\ : std_logic;
SIGNAL \inst|temp|Add0~54\ : std_logic;
SIGNAL \inst|temp|Add0~56_combout\ : std_logic;
SIGNAL \inst|temp|Add0~58_combout\ : std_logic;
SIGNAL \inst|temp|Add0~57\ : std_logic;
SIGNAL \inst|temp|Add0~59_combout\ : std_logic;
SIGNAL \inst|temp|Add0~61_combout\ : std_logic;
SIGNAL \inst|temp|Add0~60\ : std_logic;
SIGNAL \inst|temp|Add0~62_combout\ : std_logic;
SIGNAL \inst|temp|cnt~7_combout\ : std_logic;
SIGNAL \inst|temp|Add0~63\ : std_logic;
SIGNAL \inst|temp|Add0~64_combout\ : std_logic;
SIGNAL \inst|temp|cnt~8_combout\ : std_logic;
SIGNAL \inst|temp|Add0~65\ : std_logic;
SIGNAL \inst|temp|Add0~66_combout\ : std_logic;
SIGNAL \inst|temp|cnt~9_combout\ : std_logic;
SIGNAL \inst|temp|Add0~67\ : std_logic;
SIGNAL \inst|temp|Add0~68_combout\ : std_logic;
SIGNAL \inst|temp|Add0~70_combout\ : std_logic;
SIGNAL \inst|temp|Add0~69\ : std_logic;
SIGNAL \inst|temp|Add0~71_combout\ : std_logic;
SIGNAL \inst|temp|Add0~73_combout\ : std_logic;
SIGNAL \inst|temp|Add0~72\ : std_logic;
SIGNAL \inst|temp|Add0~74_combout\ : std_logic;
SIGNAL \inst|temp|Add0~76_combout\ : std_logic;
SIGNAL \inst|temp|Add0~75\ : std_logic;
SIGNAL \inst|temp|Add0~77_combout\ : std_logic;
SIGNAL \inst|temp|Add0~79_combout\ : std_logic;
SIGNAL \inst|temp|Add0~78\ : std_logic;
SIGNAL \inst|temp|Add0~80_combout\ : std_logic;
SIGNAL \inst|temp|Add0~82_combout\ : std_logic;
SIGNAL \inst|temp|Add0~81\ : std_logic;
SIGNAL \inst|temp|Add0~83_combout\ : std_logic;
SIGNAL \inst|temp|Add0~85_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~9_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~5_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~6_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~7_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~1_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~2_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~0_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~3_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~4_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~8_combout\ : std_logic;
SIGNAL \inst|temp|Equal0~10_combout\ : std_logic;
SIGNAL \inst|control|Selector0~0_combout\ : std_logic;
SIGNAL \inst|control|estado_atual.s1~q\ : std_logic;
SIGNAL \inst|control|estado_atual.s0~q\ : std_logic;
SIGNAL \inst|control|Freq_out[13]~feeder_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~13_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~14_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~15_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~16_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~17_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~5_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~6_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~7_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~9_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~8_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~10_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~11_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~12_combout\ : std_logic;
SIGNAL \inst|div_clock|LessThan0~18_combout\ : std_logic;
SIGNAL \inst|div_clock|toggle~0_combout\ : std_logic;
SIGNAL \inst|div_clock|toggle~q\ : std_logic;
SIGNAL \inst|div_clock|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst|control|Freq_out\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \inst|temp|cnt\ : std_logic_vector(31 DOWNTO 0);

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
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
	i => \inst|div_clock|toggle~q\,
	devoe => ww_devoe,
	o => \buzzer~output_o\);

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

-- Location: LCCOMB_X17_Y10_N0
\inst|div_clock|cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[0]~32_combout\ = \inst|div_clock|cnt\(0) $ (VCC)
-- \inst|div_clock|cnt[0]~33\ = CARRY(\inst|div_clock|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(0),
	datad => VCC,
	combout => \inst|div_clock|cnt[0]~32_combout\,
	cout => \inst|div_clock|cnt[0]~33\);

-- Location: FF_X17_Y10_N1
\inst|div_clock|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[0]~32_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(0));

-- Location: LCCOMB_X17_Y10_N2
\inst|div_clock|cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[1]~34_combout\ = (\inst|div_clock|cnt\(1) & (!\inst|div_clock|cnt[0]~33\)) # (!\inst|div_clock|cnt\(1) & ((\inst|div_clock|cnt[0]~33\) # (GND)))
-- \inst|div_clock|cnt[1]~35\ = CARRY((!\inst|div_clock|cnt[0]~33\) # (!\inst|div_clock|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(1),
	datad => VCC,
	cin => \inst|div_clock|cnt[0]~33\,
	combout => \inst|div_clock|cnt[1]~34_combout\,
	cout => \inst|div_clock|cnt[1]~35\);

-- Location: FF_X17_Y10_N3
\inst|div_clock|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[1]~34_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(1));

-- Location: LCCOMB_X17_Y10_N4
\inst|div_clock|cnt[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[2]~36_combout\ = (\inst|div_clock|cnt\(2) & (\inst|div_clock|cnt[1]~35\ $ (GND))) # (!\inst|div_clock|cnt\(2) & (!\inst|div_clock|cnt[1]~35\ & VCC))
-- \inst|div_clock|cnt[2]~37\ = CARRY((\inst|div_clock|cnt\(2) & !\inst|div_clock|cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(2),
	datad => VCC,
	cin => \inst|div_clock|cnt[1]~35\,
	combout => \inst|div_clock|cnt[2]~36_combout\,
	cout => \inst|div_clock|cnt[2]~37\);

-- Location: FF_X17_Y10_N5
\inst|div_clock|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[2]~36_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(2));

-- Location: LCCOMB_X17_Y10_N6
\inst|div_clock|cnt[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[3]~38_combout\ = (\inst|div_clock|cnt\(3) & (!\inst|div_clock|cnt[2]~37\)) # (!\inst|div_clock|cnt\(3) & ((\inst|div_clock|cnt[2]~37\) # (GND)))
-- \inst|div_clock|cnt[3]~39\ = CARRY((!\inst|div_clock|cnt[2]~37\) # (!\inst|div_clock|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(3),
	datad => VCC,
	cin => \inst|div_clock|cnt[2]~37\,
	combout => \inst|div_clock|cnt[3]~38_combout\,
	cout => \inst|div_clock|cnt[3]~39\);

-- Location: FF_X17_Y10_N7
\inst|div_clock|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[3]~38_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(3));

-- Location: LCCOMB_X17_Y10_N8
\inst|div_clock|cnt[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[4]~40_combout\ = (\inst|div_clock|cnt\(4) & (\inst|div_clock|cnt[3]~39\ $ (GND))) # (!\inst|div_clock|cnt\(4) & (!\inst|div_clock|cnt[3]~39\ & VCC))
-- \inst|div_clock|cnt[4]~41\ = CARRY((\inst|div_clock|cnt\(4) & !\inst|div_clock|cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(4),
	datad => VCC,
	cin => \inst|div_clock|cnt[3]~39\,
	combout => \inst|div_clock|cnt[4]~40_combout\,
	cout => \inst|div_clock|cnt[4]~41\);

-- Location: FF_X17_Y10_N9
\inst|div_clock|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[4]~40_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(4));

-- Location: LCCOMB_X17_Y10_N10
\inst|div_clock|cnt[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[5]~42_combout\ = (\inst|div_clock|cnt\(5) & (!\inst|div_clock|cnt[4]~41\)) # (!\inst|div_clock|cnt\(5) & ((\inst|div_clock|cnt[4]~41\) # (GND)))
-- \inst|div_clock|cnt[5]~43\ = CARRY((!\inst|div_clock|cnt[4]~41\) # (!\inst|div_clock|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(5),
	datad => VCC,
	cin => \inst|div_clock|cnt[4]~41\,
	combout => \inst|div_clock|cnt[5]~42_combout\,
	cout => \inst|div_clock|cnt[5]~43\);

-- Location: FF_X17_Y10_N11
\inst|div_clock|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[5]~42_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(5));

-- Location: LCCOMB_X17_Y10_N12
\inst|div_clock|cnt[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[6]~44_combout\ = (\inst|div_clock|cnt\(6) & (\inst|div_clock|cnt[5]~43\ $ (GND))) # (!\inst|div_clock|cnt\(6) & (!\inst|div_clock|cnt[5]~43\ & VCC))
-- \inst|div_clock|cnt[6]~45\ = CARRY((\inst|div_clock|cnt\(6) & !\inst|div_clock|cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(6),
	datad => VCC,
	cin => \inst|div_clock|cnt[5]~43\,
	combout => \inst|div_clock|cnt[6]~44_combout\,
	cout => \inst|div_clock|cnt[6]~45\);

-- Location: FF_X17_Y10_N13
\inst|div_clock|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[6]~44_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(6));

-- Location: LCCOMB_X17_Y10_N14
\inst|div_clock|cnt[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[7]~46_combout\ = (\inst|div_clock|cnt\(7) & (!\inst|div_clock|cnt[6]~45\)) # (!\inst|div_clock|cnt\(7) & ((\inst|div_clock|cnt[6]~45\) # (GND)))
-- \inst|div_clock|cnt[7]~47\ = CARRY((!\inst|div_clock|cnt[6]~45\) # (!\inst|div_clock|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(7),
	datad => VCC,
	cin => \inst|div_clock|cnt[6]~45\,
	combout => \inst|div_clock|cnt[7]~46_combout\,
	cout => \inst|div_clock|cnt[7]~47\);

-- Location: FF_X17_Y10_N15
\inst|div_clock|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[7]~46_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(7));

-- Location: LCCOMB_X17_Y10_N16
\inst|div_clock|cnt[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[8]~48_combout\ = (\inst|div_clock|cnt\(8) & (\inst|div_clock|cnt[7]~47\ $ (GND))) # (!\inst|div_clock|cnt\(8) & (!\inst|div_clock|cnt[7]~47\ & VCC))
-- \inst|div_clock|cnt[8]~49\ = CARRY((\inst|div_clock|cnt\(8) & !\inst|div_clock|cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(8),
	datad => VCC,
	cin => \inst|div_clock|cnt[7]~47\,
	combout => \inst|div_clock|cnt[8]~48_combout\,
	cout => \inst|div_clock|cnt[8]~49\);

-- Location: FF_X17_Y10_N17
\inst|div_clock|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[8]~48_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(8));

-- Location: LCCOMB_X17_Y10_N18
\inst|div_clock|cnt[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[9]~50_combout\ = (\inst|div_clock|cnt\(9) & (!\inst|div_clock|cnt[8]~49\)) # (!\inst|div_clock|cnt\(9) & ((\inst|div_clock|cnt[8]~49\) # (GND)))
-- \inst|div_clock|cnt[9]~51\ = CARRY((!\inst|div_clock|cnt[8]~49\) # (!\inst|div_clock|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(9),
	datad => VCC,
	cin => \inst|div_clock|cnt[8]~49\,
	combout => \inst|div_clock|cnt[9]~50_combout\,
	cout => \inst|div_clock|cnt[9]~51\);

-- Location: FF_X17_Y10_N19
\inst|div_clock|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[9]~50_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(9));

-- Location: LCCOMB_X17_Y10_N20
\inst|div_clock|cnt[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[10]~52_combout\ = (\inst|div_clock|cnt\(10) & (\inst|div_clock|cnt[9]~51\ $ (GND))) # (!\inst|div_clock|cnt\(10) & (!\inst|div_clock|cnt[9]~51\ & VCC))
-- \inst|div_clock|cnt[10]~53\ = CARRY((\inst|div_clock|cnt\(10) & !\inst|div_clock|cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(10),
	datad => VCC,
	cin => \inst|div_clock|cnt[9]~51\,
	combout => \inst|div_clock|cnt[10]~52_combout\,
	cout => \inst|div_clock|cnt[10]~53\);

-- Location: FF_X17_Y10_N21
\inst|div_clock|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[10]~52_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(10));

-- Location: LCCOMB_X17_Y10_N22
\inst|div_clock|cnt[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[11]~54_combout\ = (\inst|div_clock|cnt\(11) & (!\inst|div_clock|cnt[10]~53\)) # (!\inst|div_clock|cnt\(11) & ((\inst|div_clock|cnt[10]~53\) # (GND)))
-- \inst|div_clock|cnt[11]~55\ = CARRY((!\inst|div_clock|cnt[10]~53\) # (!\inst|div_clock|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(11),
	datad => VCC,
	cin => \inst|div_clock|cnt[10]~53\,
	combout => \inst|div_clock|cnt[11]~54_combout\,
	cout => \inst|div_clock|cnt[11]~55\);

-- Location: FF_X17_Y10_N23
\inst|div_clock|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[11]~54_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(11));

-- Location: LCCOMB_X17_Y10_N24
\inst|div_clock|cnt[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[12]~56_combout\ = (\inst|div_clock|cnt\(12) & (\inst|div_clock|cnt[11]~55\ $ (GND))) # (!\inst|div_clock|cnt\(12) & (!\inst|div_clock|cnt[11]~55\ & VCC))
-- \inst|div_clock|cnt[12]~57\ = CARRY((\inst|div_clock|cnt\(12) & !\inst|div_clock|cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(12),
	datad => VCC,
	cin => \inst|div_clock|cnt[11]~55\,
	combout => \inst|div_clock|cnt[12]~56_combout\,
	cout => \inst|div_clock|cnt[12]~57\);

-- Location: FF_X17_Y10_N25
\inst|div_clock|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[12]~56_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(12));

-- Location: LCCOMB_X17_Y10_N26
\inst|div_clock|cnt[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[13]~58_combout\ = (\inst|div_clock|cnt\(13) & (!\inst|div_clock|cnt[12]~57\)) # (!\inst|div_clock|cnt\(13) & ((\inst|div_clock|cnt[12]~57\) # (GND)))
-- \inst|div_clock|cnt[13]~59\ = CARRY((!\inst|div_clock|cnt[12]~57\) # (!\inst|div_clock|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(13),
	datad => VCC,
	cin => \inst|div_clock|cnt[12]~57\,
	combout => \inst|div_clock|cnt[13]~58_combout\,
	cout => \inst|div_clock|cnt[13]~59\);

-- Location: FF_X17_Y10_N27
\inst|div_clock|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[13]~58_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(13));

-- Location: LCCOMB_X17_Y10_N28
\inst|div_clock|cnt[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[14]~60_combout\ = (\inst|div_clock|cnt\(14) & (\inst|div_clock|cnt[13]~59\ $ (GND))) # (!\inst|div_clock|cnt\(14) & (!\inst|div_clock|cnt[13]~59\ & VCC))
-- \inst|div_clock|cnt[14]~61\ = CARRY((\inst|div_clock|cnt\(14) & !\inst|div_clock|cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(14),
	datad => VCC,
	cin => \inst|div_clock|cnt[13]~59\,
	combout => \inst|div_clock|cnt[14]~60_combout\,
	cout => \inst|div_clock|cnt[14]~61\);

-- Location: FF_X17_Y10_N29
\inst|div_clock|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[14]~60_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(14));

-- Location: LCCOMB_X17_Y10_N30
\inst|div_clock|cnt[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[15]~62_combout\ = (\inst|div_clock|cnt\(15) & (!\inst|div_clock|cnt[14]~61\)) # (!\inst|div_clock|cnt\(15) & ((\inst|div_clock|cnt[14]~61\) # (GND)))
-- \inst|div_clock|cnt[15]~63\ = CARRY((!\inst|div_clock|cnt[14]~61\) # (!\inst|div_clock|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(15),
	datad => VCC,
	cin => \inst|div_clock|cnt[14]~61\,
	combout => \inst|div_clock|cnt[15]~62_combout\,
	cout => \inst|div_clock|cnt[15]~63\);

-- Location: FF_X17_Y10_N31
\inst|div_clock|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[15]~62_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(15));

-- Location: LCCOMB_X17_Y9_N0
\inst|div_clock|cnt[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[16]~64_combout\ = (\inst|div_clock|cnt\(16) & (\inst|div_clock|cnt[15]~63\ $ (GND))) # (!\inst|div_clock|cnt\(16) & (!\inst|div_clock|cnt[15]~63\ & VCC))
-- \inst|div_clock|cnt[16]~65\ = CARRY((\inst|div_clock|cnt\(16) & !\inst|div_clock|cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(16),
	datad => VCC,
	cin => \inst|div_clock|cnt[15]~63\,
	combout => \inst|div_clock|cnt[16]~64_combout\,
	cout => \inst|div_clock|cnt[16]~65\);

-- Location: FF_X17_Y9_N1
\inst|div_clock|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[16]~64_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(16));

-- Location: LCCOMB_X17_Y9_N2
\inst|div_clock|cnt[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[17]~66_combout\ = (\inst|div_clock|cnt\(17) & (!\inst|div_clock|cnt[16]~65\)) # (!\inst|div_clock|cnt\(17) & ((\inst|div_clock|cnt[16]~65\) # (GND)))
-- \inst|div_clock|cnt[17]~67\ = CARRY((!\inst|div_clock|cnt[16]~65\) # (!\inst|div_clock|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(17),
	datad => VCC,
	cin => \inst|div_clock|cnt[16]~65\,
	combout => \inst|div_clock|cnt[17]~66_combout\,
	cout => \inst|div_clock|cnt[17]~67\);

-- Location: FF_X17_Y9_N3
\inst|div_clock|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[17]~66_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(17));

-- Location: LCCOMB_X17_Y9_N4
\inst|div_clock|cnt[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[18]~68_combout\ = (\inst|div_clock|cnt\(18) & (\inst|div_clock|cnt[17]~67\ $ (GND))) # (!\inst|div_clock|cnt\(18) & (!\inst|div_clock|cnt[17]~67\ & VCC))
-- \inst|div_clock|cnt[18]~69\ = CARRY((\inst|div_clock|cnt\(18) & !\inst|div_clock|cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(18),
	datad => VCC,
	cin => \inst|div_clock|cnt[17]~67\,
	combout => \inst|div_clock|cnt[18]~68_combout\,
	cout => \inst|div_clock|cnt[18]~69\);

-- Location: FF_X17_Y9_N5
\inst|div_clock|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[18]~68_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(18));

-- Location: LCCOMB_X17_Y9_N6
\inst|div_clock|cnt[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[19]~70_combout\ = (\inst|div_clock|cnt\(19) & (!\inst|div_clock|cnt[18]~69\)) # (!\inst|div_clock|cnt\(19) & ((\inst|div_clock|cnt[18]~69\) # (GND)))
-- \inst|div_clock|cnt[19]~71\ = CARRY((!\inst|div_clock|cnt[18]~69\) # (!\inst|div_clock|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(19),
	datad => VCC,
	cin => \inst|div_clock|cnt[18]~69\,
	combout => \inst|div_clock|cnt[19]~70_combout\,
	cout => \inst|div_clock|cnt[19]~71\);

-- Location: FF_X17_Y9_N7
\inst|div_clock|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[19]~70_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(19));

-- Location: LCCOMB_X17_Y9_N8
\inst|div_clock|cnt[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[20]~72_combout\ = (\inst|div_clock|cnt\(20) & (\inst|div_clock|cnt[19]~71\ $ (GND))) # (!\inst|div_clock|cnt\(20) & (!\inst|div_clock|cnt[19]~71\ & VCC))
-- \inst|div_clock|cnt[20]~73\ = CARRY((\inst|div_clock|cnt\(20) & !\inst|div_clock|cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(20),
	datad => VCC,
	cin => \inst|div_clock|cnt[19]~71\,
	combout => \inst|div_clock|cnt[20]~72_combout\,
	cout => \inst|div_clock|cnt[20]~73\);

-- Location: FF_X17_Y9_N9
\inst|div_clock|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[20]~72_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(20));

-- Location: LCCOMB_X17_Y9_N10
\inst|div_clock|cnt[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[21]~74_combout\ = (\inst|div_clock|cnt\(21) & (!\inst|div_clock|cnt[20]~73\)) # (!\inst|div_clock|cnt\(21) & ((\inst|div_clock|cnt[20]~73\) # (GND)))
-- \inst|div_clock|cnt[21]~75\ = CARRY((!\inst|div_clock|cnt[20]~73\) # (!\inst|div_clock|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(21),
	datad => VCC,
	cin => \inst|div_clock|cnt[20]~73\,
	combout => \inst|div_clock|cnt[21]~74_combout\,
	cout => \inst|div_clock|cnt[21]~75\);

-- Location: FF_X17_Y9_N11
\inst|div_clock|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[21]~74_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(21));

-- Location: LCCOMB_X17_Y9_N12
\inst|div_clock|cnt[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[22]~76_combout\ = (\inst|div_clock|cnt\(22) & (\inst|div_clock|cnt[21]~75\ $ (GND))) # (!\inst|div_clock|cnt\(22) & (!\inst|div_clock|cnt[21]~75\ & VCC))
-- \inst|div_clock|cnt[22]~77\ = CARRY((\inst|div_clock|cnt\(22) & !\inst|div_clock|cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(22),
	datad => VCC,
	cin => \inst|div_clock|cnt[21]~75\,
	combout => \inst|div_clock|cnt[22]~76_combout\,
	cout => \inst|div_clock|cnt[22]~77\);

-- Location: FF_X17_Y9_N13
\inst|div_clock|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[22]~76_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(22));

-- Location: LCCOMB_X17_Y9_N14
\inst|div_clock|cnt[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[23]~78_combout\ = (\inst|div_clock|cnt\(23) & (!\inst|div_clock|cnt[22]~77\)) # (!\inst|div_clock|cnt\(23) & ((\inst|div_clock|cnt[22]~77\) # (GND)))
-- \inst|div_clock|cnt[23]~79\ = CARRY((!\inst|div_clock|cnt[22]~77\) # (!\inst|div_clock|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(23),
	datad => VCC,
	cin => \inst|div_clock|cnt[22]~77\,
	combout => \inst|div_clock|cnt[23]~78_combout\,
	cout => \inst|div_clock|cnt[23]~79\);

-- Location: FF_X17_Y9_N15
\inst|div_clock|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[23]~78_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(23));

-- Location: LCCOMB_X17_Y9_N16
\inst|div_clock|cnt[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[24]~80_combout\ = (\inst|div_clock|cnt\(24) & (\inst|div_clock|cnt[23]~79\ $ (GND))) # (!\inst|div_clock|cnt\(24) & (!\inst|div_clock|cnt[23]~79\ & VCC))
-- \inst|div_clock|cnt[24]~81\ = CARRY((\inst|div_clock|cnt\(24) & !\inst|div_clock|cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(24),
	datad => VCC,
	cin => \inst|div_clock|cnt[23]~79\,
	combout => \inst|div_clock|cnt[24]~80_combout\,
	cout => \inst|div_clock|cnt[24]~81\);

-- Location: FF_X17_Y9_N17
\inst|div_clock|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[24]~80_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(24));

-- Location: LCCOMB_X17_Y9_N18
\inst|div_clock|cnt[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[25]~82_combout\ = (\inst|div_clock|cnt\(25) & (!\inst|div_clock|cnt[24]~81\)) # (!\inst|div_clock|cnt\(25) & ((\inst|div_clock|cnt[24]~81\) # (GND)))
-- \inst|div_clock|cnt[25]~83\ = CARRY((!\inst|div_clock|cnt[24]~81\) # (!\inst|div_clock|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(25),
	datad => VCC,
	cin => \inst|div_clock|cnt[24]~81\,
	combout => \inst|div_clock|cnt[25]~82_combout\,
	cout => \inst|div_clock|cnt[25]~83\);

-- Location: FF_X17_Y9_N19
\inst|div_clock|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[25]~82_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(25));

-- Location: LCCOMB_X17_Y9_N20
\inst|div_clock|cnt[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[26]~84_combout\ = (\inst|div_clock|cnt\(26) & (\inst|div_clock|cnt[25]~83\ $ (GND))) # (!\inst|div_clock|cnt\(26) & (!\inst|div_clock|cnt[25]~83\ & VCC))
-- \inst|div_clock|cnt[26]~85\ = CARRY((\inst|div_clock|cnt\(26) & !\inst|div_clock|cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(26),
	datad => VCC,
	cin => \inst|div_clock|cnt[25]~83\,
	combout => \inst|div_clock|cnt[26]~84_combout\,
	cout => \inst|div_clock|cnt[26]~85\);

-- Location: FF_X17_Y9_N21
\inst|div_clock|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[26]~84_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(26));

-- Location: LCCOMB_X17_Y9_N22
\inst|div_clock|cnt[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[27]~86_combout\ = (\inst|div_clock|cnt\(27) & (!\inst|div_clock|cnt[26]~85\)) # (!\inst|div_clock|cnt\(27) & ((\inst|div_clock|cnt[26]~85\) # (GND)))
-- \inst|div_clock|cnt[27]~87\ = CARRY((!\inst|div_clock|cnt[26]~85\) # (!\inst|div_clock|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(27),
	datad => VCC,
	cin => \inst|div_clock|cnt[26]~85\,
	combout => \inst|div_clock|cnt[27]~86_combout\,
	cout => \inst|div_clock|cnt[27]~87\);

-- Location: FF_X17_Y9_N23
\inst|div_clock|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[27]~86_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(27));

-- Location: LCCOMB_X17_Y9_N24
\inst|div_clock|cnt[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[28]~88_combout\ = (\inst|div_clock|cnt\(28) & (\inst|div_clock|cnt[27]~87\ $ (GND))) # (!\inst|div_clock|cnt\(28) & (!\inst|div_clock|cnt[27]~87\ & VCC))
-- \inst|div_clock|cnt[28]~89\ = CARRY((\inst|div_clock|cnt\(28) & !\inst|div_clock|cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(28),
	datad => VCC,
	cin => \inst|div_clock|cnt[27]~87\,
	combout => \inst|div_clock|cnt[28]~88_combout\,
	cout => \inst|div_clock|cnt[28]~89\);

-- Location: FF_X17_Y9_N25
\inst|div_clock|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[28]~88_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(28));

-- Location: LCCOMB_X17_Y9_N26
\inst|div_clock|cnt[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[29]~90_combout\ = (\inst|div_clock|cnt\(29) & (!\inst|div_clock|cnt[28]~89\)) # (!\inst|div_clock|cnt\(29) & ((\inst|div_clock|cnt[28]~89\) # (GND)))
-- \inst|div_clock|cnt[29]~91\ = CARRY((!\inst|div_clock|cnt[28]~89\) # (!\inst|div_clock|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(29),
	datad => VCC,
	cin => \inst|div_clock|cnt[28]~89\,
	combout => \inst|div_clock|cnt[29]~90_combout\,
	cout => \inst|div_clock|cnt[29]~91\);

-- Location: FF_X17_Y9_N27
\inst|div_clock|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[29]~90_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(29));

-- Location: LCCOMB_X17_Y9_N28
\inst|div_clock|cnt[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[30]~92_combout\ = (\inst|div_clock|cnt\(30) & (\inst|div_clock|cnt[29]~91\ $ (GND))) # (!\inst|div_clock|cnt\(30) & (!\inst|div_clock|cnt[29]~91\ & VCC))
-- \inst|div_clock|cnt[30]~93\ = CARRY((\inst|div_clock|cnt\(30) & !\inst|div_clock|cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(30),
	datad => VCC,
	cin => \inst|div_clock|cnt[29]~91\,
	combout => \inst|div_clock|cnt[30]~92_combout\,
	cout => \inst|div_clock|cnt[30]~93\);

-- Location: FF_X17_Y9_N29
\inst|div_clock|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[30]~92_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(30));

-- Location: LCCOMB_X17_Y9_N30
\inst|div_clock|cnt[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|cnt[31]~94_combout\ = \inst|div_clock|cnt\(31) $ (\inst|div_clock|cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(31),
	cin => \inst|div_clock|cnt[30]~93\,
	combout => \inst|div_clock|cnt[31]~94_combout\);

-- Location: FF_X17_Y9_N31
\inst|div_clock|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|cnt[31]~94_combout\,
	sclr => \inst|div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|cnt\(31));

-- Location: LCCOMB_X16_Y9_N6
\inst|div_clock|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~3_combout\ = (!\inst|div_clock|cnt\(30) & (!\inst|div_clock|cnt\(29) & !\inst|div_clock|cnt\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|div_clock|cnt\(30),
	datac => \inst|div_clock|cnt\(29),
	datad => \inst|div_clock|cnt\(28),
	combout => \inst|div_clock|LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y9_N0
\inst|div_clock|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~0_combout\ = (!\inst|div_clock|cnt\(18) & (!\inst|div_clock|cnt\(19) & (!\inst|div_clock|cnt\(16) & !\inst|div_clock|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(18),
	datab => \inst|div_clock|cnt\(19),
	datac => \inst|div_clock|cnt\(16),
	datad => \inst|div_clock|cnt\(17),
	combout => \inst|div_clock|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y9_N20
\inst|div_clock|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~2_combout\ = (!\inst|div_clock|cnt\(27) & (!\inst|div_clock|cnt\(25) & (!\inst|div_clock|cnt\(26) & !\inst|div_clock|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(27),
	datab => \inst|div_clock|cnt\(25),
	datac => \inst|div_clock|cnt\(26),
	datad => \inst|div_clock|cnt\(24),
	combout => \inst|div_clock|LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y9_N2
\inst|div_clock|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~1_combout\ = (!\inst|div_clock|cnt\(22) & (!\inst|div_clock|cnt\(23) & (!\inst|div_clock|cnt\(20) & !\inst|div_clock|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(22),
	datab => \inst|div_clock|cnt\(23),
	datac => \inst|div_clock|cnt\(20),
	datad => \inst|div_clock|cnt\(21),
	combout => \inst|div_clock|LessThan0~1_combout\);

-- Location: LCCOMB_X16_Y10_N24
\inst|div_clock|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~4_combout\ = (\inst|div_clock|LessThan0~3_combout\ & (\inst|div_clock|LessThan0~0_combout\ & (\inst|div_clock|LessThan0~2_combout\ & \inst|div_clock|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|LessThan0~3_combout\,
	datab => \inst|div_clock|LessThan0~0_combout\,
	datac => \inst|div_clock|LessThan0~2_combout\,
	datad => \inst|div_clock|LessThan0~1_combout\,
	combout => \inst|div_clock|LessThan0~4_combout\);

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

-- Location: LCCOMB_X12_Y12_N0
\inst|control|Disparo~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|control|Disparo~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst|control|Disparo~feeder_combout\);

-- Location: FF_X12_Y12_N1
\inst|control|Disparo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|control|Disparo~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|control|Disparo~q\);

-- Location: LCCOMB_X12_Y12_N28
\inst|control|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|control|Selector1~0_combout\ = (\inst|control|estado_atual.s1~q\ & \key[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|estado_atual.s1~q\,
	datac => \key[1]~input_o\,
	combout => \inst|control|Selector1~0_combout\);

-- Location: LCCOMB_X12_Y12_N8
\inst|control|proximo_estado.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|control|proximo_estado.s0~0_combout\ = ((!\key[2]~input_o\ & \inst|temp|Equal0~10_combout\)) # (!\key[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key[2]~input_o\,
	datac => \key[1]~input_o\,
	datad => \inst|temp|Equal0~10_combout\,
	combout => \inst|control|proximo_estado.s0~0_combout\);

-- Location: FF_X12_Y12_N29
\inst|control|estado_atual.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|control|Selector1~0_combout\,
	ena => \inst|control|proximo_estado.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|control|estado_atual.s2~q\);

-- Location: FF_X16_Y10_N31
\inst|control|Freq_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|control|estado_atual.s2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|control|Freq_out\(14));

-- Location: LCCOMB_X13_Y13_N0
\inst|temp|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~0_combout\ = \inst|temp|cnt\(0) $ (VCC)
-- \inst|temp|Add0~1\ = CARRY(\inst|temp|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(0),
	datad => VCC,
	combout => \inst|temp|Add0~0_combout\,
	cout => \inst|temp|Add0~1\);

-- Location: LCCOMB_X12_Y12_N4
\inst|temp|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~5_combout\ = (\inst|temp|Add0~0_combout\ & !\inst|temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp|Add0~0_combout\,
	datad => \inst|temp|Equal0~10_combout\,
	combout => \inst|temp|Add0~5_combout\);

-- Location: FF_X12_Y12_N5
\inst|temp|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(0));

-- Location: LCCOMB_X13_Y13_N2
\inst|temp|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~2_combout\ = (\inst|temp|cnt\(1) & (\inst|temp|Add0~1\ & VCC)) # (!\inst|temp|cnt\(1) & (!\inst|temp|Add0~1\))
-- \inst|temp|Add0~3\ = CARRY((!\inst|temp|cnt\(1) & !\inst|temp|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(1),
	datad => VCC,
	cin => \inst|temp|Add0~1\,
	combout => \inst|temp|Add0~2_combout\,
	cout => \inst|temp|Add0~3\);

-- Location: LCCOMB_X12_Y12_N2
\inst|temp|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~4_combout\ = (\inst|temp|Add0~2_combout\ & !\inst|temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|Add0~2_combout\,
	datad => \inst|temp|Equal0~10_combout\,
	combout => \inst|temp|Add0~4_combout\);

-- Location: FF_X12_Y12_N3
\inst|temp|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(1));

-- Location: LCCOMB_X13_Y13_N4
\inst|temp|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~6_combout\ = (\inst|temp|cnt\(2) & ((GND) # (!\inst|temp|Add0~3\))) # (!\inst|temp|cnt\(2) & (\inst|temp|Add0~3\ $ (GND)))
-- \inst|temp|Add0~7\ = CARRY((\inst|temp|cnt\(2)) # (!\inst|temp|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(2),
	datad => VCC,
	cin => \inst|temp|Add0~3\,
	combout => \inst|temp|Add0~6_combout\,
	cout => \inst|temp|Add0~7\);

-- Location: LCCOMB_X12_Y12_N22
\inst|temp|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~8_combout\ = (\inst|temp|Add0~6_combout\ & !\inst|temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp|Add0~6_combout\,
	datad => \inst|temp|Equal0~10_combout\,
	combout => \inst|temp|Add0~8_combout\);

-- Location: FF_X12_Y12_N23
\inst|temp|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(2));

-- Location: LCCOMB_X13_Y13_N6
\inst|temp|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~9_combout\ = (\inst|temp|cnt\(3) & (\inst|temp|Add0~7\ & VCC)) # (!\inst|temp|cnt\(3) & (!\inst|temp|Add0~7\))
-- \inst|temp|Add0~10\ = CARRY((!\inst|temp|cnt\(3) & !\inst|temp|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(3),
	datad => VCC,
	cin => \inst|temp|Add0~7\,
	combout => \inst|temp|Add0~9_combout\,
	cout => \inst|temp|Add0~10\);

-- Location: LCCOMB_X12_Y12_N20
\inst|temp|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~11_combout\ = (\inst|temp|Add0~9_combout\ & !\inst|temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp|Add0~9_combout\,
	datad => \inst|temp|Equal0~10_combout\,
	combout => \inst|temp|Add0~11_combout\);

-- Location: FF_X12_Y12_N21
\inst|temp|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(3));

-- Location: LCCOMB_X13_Y13_N8
\inst|temp|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~12_combout\ = (\inst|temp|cnt\(4) & ((GND) # (!\inst|temp|Add0~10\))) # (!\inst|temp|cnt\(4) & (\inst|temp|Add0~10\ $ (GND)))
-- \inst|temp|Add0~13\ = CARRY((\inst|temp|cnt\(4)) # (!\inst|temp|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(4),
	datad => VCC,
	cin => \inst|temp|Add0~10\,
	combout => \inst|temp|Add0~12_combout\,
	cout => \inst|temp|Add0~13\);

-- Location: LCCOMB_X14_Y13_N20
\inst|temp|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~14_combout\ = (!\inst|temp|Equal0~10_combout\ & \inst|temp|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~12_combout\,
	combout => \inst|temp|Add0~14_combout\);

-- Location: FF_X14_Y13_N21
\inst|temp|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(4));

-- Location: LCCOMB_X13_Y13_N10
\inst|temp|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~15_combout\ = (\inst|temp|cnt\(5) & (\inst|temp|Add0~13\ & VCC)) # (!\inst|temp|cnt\(5) & (!\inst|temp|Add0~13\))
-- \inst|temp|Add0~16\ = CARRY((!\inst|temp|cnt\(5) & !\inst|temp|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(5),
	datad => VCC,
	cin => \inst|temp|Add0~13\,
	combout => \inst|temp|Add0~15_combout\,
	cout => \inst|temp|Add0~16\);

-- Location: LCCOMB_X14_Y13_N6
\inst|temp|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~17_combout\ = (!\inst|temp|Equal0~10_combout\ & \inst|temp|Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~15_combout\,
	combout => \inst|temp|Add0~17_combout\);

-- Location: FF_X14_Y13_N7
\inst|temp|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(5));

-- Location: LCCOMB_X13_Y13_N12
\inst|temp|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~18_combout\ = (\inst|temp|cnt\(6) & ((GND) # (!\inst|temp|Add0~16\))) # (!\inst|temp|cnt\(6) & (\inst|temp|Add0~16\ $ (GND)))
-- \inst|temp|Add0~19\ = CARRY((\inst|temp|cnt\(6)) # (!\inst|temp|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(6),
	datad => VCC,
	cin => \inst|temp|Add0~16\,
	combout => \inst|temp|Add0~18_combout\,
	cout => \inst|temp|Add0~19\);

-- Location: LCCOMB_X14_Y13_N28
\inst|temp|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|cnt~0_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\ & (\inst|control|Freq_out\(14)))) # (!\inst|temp|Equal0~10_combout\ & (((\inst|temp|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datab => \inst|temp|Equal0~10_combout\,
	datac => \inst|control|Freq_out\(14),
	datad => \inst|temp|Add0~18_combout\,
	combout => \inst|temp|cnt~0_combout\);

-- Location: FF_X14_Y13_N29
\inst|temp|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(6));

-- Location: LCCOMB_X13_Y13_N14
\inst|temp|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~20_combout\ = (\inst|temp|cnt\(7) & (\inst|temp|Add0~19\ & VCC)) # (!\inst|temp|cnt\(7) & (!\inst|temp|Add0~19\))
-- \inst|temp|Add0~21\ = CARRY((!\inst|temp|cnt\(7) & !\inst|temp|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(7),
	datad => VCC,
	cin => \inst|temp|Add0~19\,
	combout => \inst|temp|Add0~20_combout\,
	cout => \inst|temp|Add0~21\);

-- Location: LCCOMB_X14_Y13_N22
\inst|temp|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|cnt~1_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\ & (!\inst|control|Freq_out\(14)))) # (!\inst|temp|Equal0~10_combout\ & (((\inst|temp|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datab => \inst|temp|Equal0~10_combout\,
	datac => \inst|control|Freq_out\(14),
	datad => \inst|temp|Add0~20_combout\,
	combout => \inst|temp|cnt~1_combout\);

-- Location: FF_X14_Y13_N23
\inst|temp|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(7));

-- Location: LCCOMB_X13_Y13_N16
\inst|temp|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~22_combout\ = (\inst|temp|cnt\(8) & ((GND) # (!\inst|temp|Add0~21\))) # (!\inst|temp|cnt\(8) & (\inst|temp|Add0~21\ $ (GND)))
-- \inst|temp|Add0~23\ = CARRY((\inst|temp|cnt\(8)) # (!\inst|temp|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(8),
	datad => VCC,
	cin => \inst|temp|Add0~21\,
	combout => \inst|temp|Add0~22_combout\,
	cout => \inst|temp|Add0~23\);

-- Location: LCCOMB_X14_Y13_N10
\inst|temp|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~24_combout\ = (!\inst|temp|Equal0~10_combout\ & \inst|temp|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|Equal0~10_combout\,
	datac => \inst|temp|Add0~22_combout\,
	combout => \inst|temp|Add0~24_combout\);

-- Location: FF_X14_Y13_N11
\inst|temp|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(8));

-- Location: LCCOMB_X13_Y13_N18
\inst|temp|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~25_combout\ = (\inst|temp|cnt\(9) & (\inst|temp|Add0~23\ & VCC)) # (!\inst|temp|cnt\(9) & (!\inst|temp|Add0~23\))
-- \inst|temp|Add0~26\ = CARRY((!\inst|temp|cnt\(9) & !\inst|temp|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(9),
	datad => VCC,
	cin => \inst|temp|Add0~23\,
	combout => \inst|temp|Add0~25_combout\,
	cout => \inst|temp|Add0~26\);

-- Location: LCCOMB_X14_Y13_N8
\inst|temp|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~27_combout\ = (!\inst|temp|Equal0~10_combout\ & \inst|temp|Add0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~25_combout\,
	combout => \inst|temp|Add0~27_combout\);

-- Location: FF_X14_Y13_N9
\inst|temp|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(9));

-- Location: LCCOMB_X13_Y13_N20
\inst|temp|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~28_combout\ = (\inst|temp|cnt\(10) & ((GND) # (!\inst|temp|Add0~26\))) # (!\inst|temp|cnt\(10) & (\inst|temp|Add0~26\ $ (GND)))
-- \inst|temp|Add0~29\ = CARRY((\inst|temp|cnt\(10)) # (!\inst|temp|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(10),
	datad => VCC,
	cin => \inst|temp|Add0~26\,
	combout => \inst|temp|Add0~28_combout\,
	cout => \inst|temp|Add0~29\);

-- Location: LCCOMB_X14_Y13_N14
\inst|temp|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~30_combout\ = (!\inst|temp|Equal0~10_combout\ & \inst|temp|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~28_combout\,
	combout => \inst|temp|Add0~30_combout\);

-- Location: FF_X14_Y13_N15
\inst|temp|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(10));

-- Location: LCCOMB_X13_Y13_N22
\inst|temp|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~31_combout\ = (\inst|temp|cnt\(11) & (\inst|temp|Add0~29\ & VCC)) # (!\inst|temp|cnt\(11) & (!\inst|temp|Add0~29\))
-- \inst|temp|Add0~32\ = CARRY((!\inst|temp|cnt\(11) & !\inst|temp|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(11),
	datad => VCC,
	cin => \inst|temp|Add0~29\,
	combout => \inst|temp|Add0~31_combout\,
	cout => \inst|temp|Add0~32\);

-- Location: LCCOMB_X14_Y13_N4
\inst|temp|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|cnt~2_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\ & (\inst|control|Freq_out\(14)))) # (!\inst|temp|Equal0~10_combout\ & (((\inst|temp|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datab => \inst|temp|Equal0~10_combout\,
	datac => \inst|control|Freq_out\(14),
	datad => \inst|temp|Add0~31_combout\,
	combout => \inst|temp|cnt~2_combout\);

-- Location: FF_X14_Y13_N5
\inst|temp|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(11));

-- Location: LCCOMB_X13_Y13_N24
\inst|temp|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~33_combout\ = (\inst|temp|cnt\(12) & ((GND) # (!\inst|temp|Add0~32\))) # (!\inst|temp|cnt\(12) & (\inst|temp|Add0~32\ $ (GND)))
-- \inst|temp|Add0~34\ = CARRY((\inst|temp|cnt\(12)) # (!\inst|temp|Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(12),
	datad => VCC,
	cin => \inst|temp|Add0~32\,
	combout => \inst|temp|Add0~33_combout\,
	cout => \inst|temp|Add0~34\);

-- Location: LCCOMB_X14_Y13_N16
\inst|temp|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~35_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\)) # (!\inst|temp|Equal0~10_combout\ & ((\inst|temp|Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~33_combout\,
	combout => \inst|temp|Add0~35_combout\);

-- Location: FF_X14_Y13_N17
\inst|temp|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(12));

-- Location: LCCOMB_X13_Y13_N26
\inst|temp|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~36_combout\ = (\inst|temp|cnt\(13) & (\inst|temp|Add0~34\ & VCC)) # (!\inst|temp|cnt\(13) & (!\inst|temp|Add0~34\))
-- \inst|temp|Add0~37\ = CARRY((!\inst|temp|cnt\(13) & !\inst|temp|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(13),
	datad => VCC,
	cin => \inst|temp|Add0~34\,
	combout => \inst|temp|Add0~36_combout\,
	cout => \inst|temp|Add0~37\);

-- Location: LCCOMB_X14_Y13_N2
\inst|temp|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~38_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\)) # (!\inst|temp|Equal0~10_combout\ & ((\inst|temp|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datab => \inst|temp|Equal0~10_combout\,
	datac => \inst|temp|Add0~36_combout\,
	combout => \inst|temp|Add0~38_combout\);

-- Location: FF_X14_Y13_N3
\inst|temp|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(13));

-- Location: LCCOMB_X13_Y13_N28
\inst|temp|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~39_combout\ = (\inst|temp|cnt\(14) & ((GND) # (!\inst|temp|Add0~37\))) # (!\inst|temp|cnt\(14) & (\inst|temp|Add0~37\ $ (GND)))
-- \inst|temp|Add0~40\ = CARRY((\inst|temp|cnt\(14)) # (!\inst|temp|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(14),
	datad => VCC,
	cin => \inst|temp|Add0~37\,
	combout => \inst|temp|Add0~39_combout\,
	cout => \inst|temp|Add0~40\);

-- Location: LCCOMB_X14_Y13_N0
\inst|temp|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~41_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\)) # (!\inst|temp|Equal0~10_combout\ & ((\inst|temp|Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~39_combout\,
	combout => \inst|temp|Add0~41_combout\);

-- Location: FF_X14_Y13_N1
\inst|temp|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(14));

-- Location: LCCOMB_X13_Y13_N30
\inst|temp|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~42_combout\ = (\inst|temp|cnt\(15) & (\inst|temp|Add0~40\ & VCC)) # (!\inst|temp|cnt\(15) & (!\inst|temp|Add0~40\))
-- \inst|temp|Add0~43\ = CARRY((!\inst|temp|cnt\(15) & !\inst|temp|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(15),
	datad => VCC,
	cin => \inst|temp|Add0~40\,
	combout => \inst|temp|Add0~42_combout\,
	cout => \inst|temp|Add0~43\);

-- Location: LCCOMB_X14_Y13_N26
\inst|temp|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|cnt~3_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\ & (!\inst|control|Freq_out\(14)))) # (!\inst|temp|Equal0~10_combout\ & (((\inst|temp|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datab => \inst|temp|Equal0~10_combout\,
	datac => \inst|control|Freq_out\(14),
	datad => \inst|temp|Add0~42_combout\,
	combout => \inst|temp|cnt~3_combout\);

-- Location: FF_X14_Y13_N27
\inst|temp|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(15));

-- Location: LCCOMB_X13_Y12_N0
\inst|temp|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~44_combout\ = (\inst|temp|cnt\(16) & ((GND) # (!\inst|temp|Add0~43\))) # (!\inst|temp|cnt\(16) & (\inst|temp|Add0~43\ $ (GND)))
-- \inst|temp|Add0~45\ = CARRY((\inst|temp|cnt\(16)) # (!\inst|temp|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(16),
	datad => VCC,
	cin => \inst|temp|Add0~43\,
	combout => \inst|temp|Add0~44_combout\,
	cout => \inst|temp|Add0~45\);

-- Location: LCCOMB_X14_Y12_N4
\inst|temp|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|cnt~4_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Freq_out\(14) & ((\inst|control|Disparo~q\)))) # (!\inst|temp|Equal0~10_combout\ & (((\inst|temp|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|Equal0~10_combout\,
	datab => \inst|control|Freq_out\(14),
	datac => \inst|temp|Add0~44_combout\,
	datad => \inst|control|Disparo~q\,
	combout => \inst|temp|cnt~4_combout\);

-- Location: FF_X14_Y12_N5
\inst|temp|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(16));

-- Location: LCCOMB_X13_Y12_N2
\inst|temp|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~46_combout\ = (\inst|temp|cnt\(17) & (\inst|temp|Add0~45\ & VCC)) # (!\inst|temp|cnt\(17) & (!\inst|temp|Add0~45\))
-- \inst|temp|Add0~47\ = CARRY((!\inst|temp|cnt\(17) & !\inst|temp|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(17),
	datad => VCC,
	cin => \inst|temp|Add0~45\,
	combout => \inst|temp|Add0~46_combout\,
	cout => \inst|temp|Add0~47\);

-- Location: LCCOMB_X14_Y12_N2
\inst|temp|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|cnt~5_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\ & (!\inst|control|Freq_out\(14)))) # (!\inst|temp|Equal0~10_combout\ & (((\inst|temp|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datab => \inst|control|Freq_out\(14),
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~46_combout\,
	combout => \inst|temp|cnt~5_combout\);

-- Location: FF_X14_Y12_N3
\inst|temp|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(17));

-- Location: LCCOMB_X13_Y12_N4
\inst|temp|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~48_combout\ = (\inst|temp|cnt\(18) & ((GND) # (!\inst|temp|Add0~47\))) # (!\inst|temp|cnt\(18) & (\inst|temp|Add0~47\ $ (GND)))
-- \inst|temp|Add0~49\ = CARRY((\inst|temp|cnt\(18)) # (!\inst|temp|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(18),
	datad => VCC,
	cin => \inst|temp|Add0~47\,
	combout => \inst|temp|Add0~48_combout\,
	cout => \inst|temp|Add0~49\);

-- Location: LCCOMB_X14_Y12_N16
\inst|temp|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|cnt~6_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Freq_out\(14) & ((\inst|control|Disparo~q\)))) # (!\inst|temp|Equal0~10_combout\ & (((\inst|temp|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|Equal0~10_combout\,
	datab => \inst|control|Freq_out\(14),
	datac => \inst|temp|Add0~48_combout\,
	datad => \inst|control|Disparo~q\,
	combout => \inst|temp|cnt~6_combout\);

-- Location: FF_X14_Y12_N17
\inst|temp|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(18));

-- Location: LCCOMB_X13_Y12_N6
\inst|temp|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~50_combout\ = (\inst|temp|cnt\(19) & (\inst|temp|Add0~49\ & VCC)) # (!\inst|temp|cnt\(19) & (!\inst|temp|Add0~49\))
-- \inst|temp|Add0~51\ = CARRY((!\inst|temp|cnt\(19) & !\inst|temp|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(19),
	datad => VCC,
	cin => \inst|temp|Add0~49\,
	combout => \inst|temp|Add0~50_combout\,
	cout => \inst|temp|Add0~51\);

-- Location: LCCOMB_X14_Y12_N14
\inst|temp|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~52_combout\ = (\inst|temp|Equal0~10_combout\ & ((\inst|control|Disparo~q\))) # (!\inst|temp|Equal0~10_combout\ & (\inst|temp|Add0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|Equal0~10_combout\,
	datac => \inst|temp|Add0~50_combout\,
	datad => \inst|control|Disparo~q\,
	combout => \inst|temp|Add0~52_combout\);

-- Location: FF_X14_Y12_N15
\inst|temp|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(19));

-- Location: LCCOMB_X13_Y12_N8
\inst|temp|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~53_combout\ = (\inst|temp|cnt\(20) & ((GND) # (!\inst|temp|Add0~51\))) # (!\inst|temp|cnt\(20) & (\inst|temp|Add0~51\ $ (GND)))
-- \inst|temp|Add0~54\ = CARRY((\inst|temp|cnt\(20)) # (!\inst|temp|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(20),
	datad => VCC,
	cin => \inst|temp|Add0~51\,
	combout => \inst|temp|Add0~53_combout\,
	cout => \inst|temp|Add0~54\);

-- Location: LCCOMB_X14_Y12_N10
\inst|temp|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~55_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\)) # (!\inst|temp|Equal0~10_combout\ & ((\inst|temp|Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~53_combout\,
	combout => \inst|temp|Add0~55_combout\);

-- Location: FF_X14_Y12_N11
\inst|temp|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(20));

-- Location: LCCOMB_X13_Y12_N10
\inst|temp|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~56_combout\ = (\inst|temp|cnt\(21) & (\inst|temp|Add0~54\ & VCC)) # (!\inst|temp|cnt\(21) & (!\inst|temp|Add0~54\))
-- \inst|temp|Add0~57\ = CARRY((!\inst|temp|cnt\(21) & !\inst|temp|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(21),
	datad => VCC,
	cin => \inst|temp|Add0~54\,
	combout => \inst|temp|Add0~56_combout\,
	cout => \inst|temp|Add0~57\);

-- Location: LCCOMB_X14_Y12_N12
\inst|temp|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~58_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\)) # (!\inst|temp|Equal0~10_combout\ & ((\inst|temp|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~56_combout\,
	combout => \inst|temp|Add0~58_combout\);

-- Location: FF_X14_Y12_N13
\inst|temp|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(21));

-- Location: LCCOMB_X13_Y12_N12
\inst|temp|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~59_combout\ = (\inst|temp|cnt\(22) & ((GND) # (!\inst|temp|Add0~57\))) # (!\inst|temp|cnt\(22) & (\inst|temp|Add0~57\ $ (GND)))
-- \inst|temp|Add0~60\ = CARRY((\inst|temp|cnt\(22)) # (!\inst|temp|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(22),
	datad => VCC,
	cin => \inst|temp|Add0~57\,
	combout => \inst|temp|Add0~59_combout\,
	cout => \inst|temp|Add0~60\);

-- Location: LCCOMB_X14_Y12_N26
\inst|temp|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~61_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\)) # (!\inst|temp|Equal0~10_combout\ & ((\inst|temp|Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~59_combout\,
	combout => \inst|temp|Add0~61_combout\);

-- Location: FF_X14_Y12_N27
\inst|temp|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(22));

-- Location: LCCOMB_X13_Y12_N14
\inst|temp|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~62_combout\ = (\inst|temp|cnt\(23) & (\inst|temp|Add0~60\ & VCC)) # (!\inst|temp|cnt\(23) & (!\inst|temp|Add0~60\))
-- \inst|temp|Add0~63\ = CARRY((!\inst|temp|cnt\(23) & !\inst|temp|Add0~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(23),
	datad => VCC,
	cin => \inst|temp|Add0~60\,
	combout => \inst|temp|Add0~62_combout\,
	cout => \inst|temp|Add0~63\);

-- Location: LCCOMB_X14_Y12_N8
\inst|temp|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|cnt~7_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\ & (!\inst|control|Freq_out\(14)))) # (!\inst|temp|Equal0~10_combout\ & (((\inst|temp|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datab => \inst|control|Freq_out\(14),
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~62_combout\,
	combout => \inst|temp|cnt~7_combout\);

-- Location: FF_X14_Y12_N9
\inst|temp|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(23));

-- Location: LCCOMB_X13_Y12_N16
\inst|temp|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~64_combout\ = (\inst|temp|cnt\(24) & ((GND) # (!\inst|temp|Add0~63\))) # (!\inst|temp|cnt\(24) & (\inst|temp|Add0~63\ $ (GND)))
-- \inst|temp|Add0~65\ = CARRY((\inst|temp|cnt\(24)) # (!\inst|temp|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(24),
	datad => VCC,
	cin => \inst|temp|Add0~63\,
	combout => \inst|temp|Add0~64_combout\,
	cout => \inst|temp|Add0~65\);

-- Location: LCCOMB_X14_Y12_N30
\inst|temp|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|cnt~8_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Freq_out\(14) & ((\inst|control|Disparo~q\)))) # (!\inst|temp|Equal0~10_combout\ & (((\inst|temp|Add0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|Equal0~10_combout\,
	datab => \inst|control|Freq_out\(14),
	datac => \inst|temp|Add0~64_combout\,
	datad => \inst|control|Disparo~q\,
	combout => \inst|temp|cnt~8_combout\);

-- Location: FF_X14_Y12_N31
\inst|temp|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(24));

-- Location: LCCOMB_X13_Y12_N18
\inst|temp|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~66_combout\ = (\inst|temp|cnt\(25) & (\inst|temp|Add0~65\ & VCC)) # (!\inst|temp|cnt\(25) & (!\inst|temp|Add0~65\))
-- \inst|temp|Add0~67\ = CARRY((!\inst|temp|cnt\(25) & !\inst|temp|Add0~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(25),
	datad => VCC,
	cin => \inst|temp|Add0~65\,
	combout => \inst|temp|Add0~66_combout\,
	cout => \inst|temp|Add0~67\);

-- Location: LCCOMB_X14_Y12_N20
\inst|temp|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|cnt~9_combout\ = (\inst|temp|Equal0~10_combout\ & (\inst|control|Disparo~q\ & (!\inst|control|Freq_out\(14)))) # (!\inst|temp|Equal0~10_combout\ & (((\inst|temp|Add0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Disparo~q\,
	datab => \inst|control|Freq_out\(14),
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~66_combout\,
	combout => \inst|temp|cnt~9_combout\);

-- Location: FF_X14_Y12_N21
\inst|temp|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(25));

-- Location: LCCOMB_X13_Y12_N20
\inst|temp|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~68_combout\ = (\inst|temp|cnt\(26) & ((GND) # (!\inst|temp|Add0~67\))) # (!\inst|temp|cnt\(26) & (\inst|temp|Add0~67\ $ (GND)))
-- \inst|temp|Add0~69\ = CARRY((\inst|temp|cnt\(26)) # (!\inst|temp|Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(26),
	datad => VCC,
	cin => \inst|temp|Add0~67\,
	combout => \inst|temp|Add0~68_combout\,
	cout => \inst|temp|Add0~69\);

-- Location: LCCOMB_X14_Y12_N6
\inst|temp|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~70_combout\ = (!\inst|temp|Equal0~10_combout\ & \inst|temp|Add0~68_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~68_combout\,
	combout => \inst|temp|Add0~70_combout\);

-- Location: FF_X14_Y12_N7
\inst|temp|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(26));

-- Location: LCCOMB_X13_Y12_N22
\inst|temp|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~71_combout\ = (\inst|temp|cnt\(27) & (\inst|temp|Add0~69\ & VCC)) # (!\inst|temp|cnt\(27) & (!\inst|temp|Add0~69\))
-- \inst|temp|Add0~72\ = CARRY((!\inst|temp|cnt\(27) & !\inst|temp|Add0~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(27),
	datad => VCC,
	cin => \inst|temp|Add0~69\,
	combout => \inst|temp|Add0~71_combout\,
	cout => \inst|temp|Add0~72\);

-- Location: LCCOMB_X12_Y12_N16
\inst|temp|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~73_combout\ = (!\inst|temp|Equal0~10_combout\ & \inst|temp|Add0~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~71_combout\,
	combout => \inst|temp|Add0~73_combout\);

-- Location: FF_X12_Y12_N17
\inst|temp|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(27));

-- Location: LCCOMB_X13_Y12_N24
\inst|temp|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~74_combout\ = (\inst|temp|cnt\(28) & ((GND) # (!\inst|temp|Add0~72\))) # (!\inst|temp|cnt\(28) & (\inst|temp|Add0~72\ $ (GND)))
-- \inst|temp|Add0~75\ = CARRY((\inst|temp|cnt\(28)) # (!\inst|temp|Add0~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(28),
	datad => VCC,
	cin => \inst|temp|Add0~72\,
	combout => \inst|temp|Add0~74_combout\,
	cout => \inst|temp|Add0~75\);

-- Location: LCCOMB_X12_Y12_N14
\inst|temp|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~76_combout\ = (!\inst|temp|Equal0~10_combout\ & \inst|temp|Add0~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~74_combout\,
	combout => \inst|temp|Add0~76_combout\);

-- Location: FF_X12_Y12_N15
\inst|temp|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(28));

-- Location: LCCOMB_X13_Y12_N26
\inst|temp|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~77_combout\ = (\inst|temp|cnt\(29) & (\inst|temp|Add0~75\ & VCC)) # (!\inst|temp|cnt\(29) & (!\inst|temp|Add0~75\))
-- \inst|temp|Add0~78\ = CARRY((!\inst|temp|cnt\(29) & !\inst|temp|Add0~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(29),
	datad => VCC,
	cin => \inst|temp|Add0~75\,
	combout => \inst|temp|Add0~77_combout\,
	cout => \inst|temp|Add0~78\);

-- Location: LCCOMB_X12_Y12_N12
\inst|temp|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~79_combout\ = (!\inst|temp|Equal0~10_combout\ & \inst|temp|Add0~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~77_combout\,
	combout => \inst|temp|Add0~79_combout\);

-- Location: FF_X12_Y12_N13
\inst|temp|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(29));

-- Location: LCCOMB_X13_Y12_N28
\inst|temp|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~80_combout\ = (\inst|temp|cnt\(30) & ((GND) # (!\inst|temp|Add0~78\))) # (!\inst|temp|cnt\(30) & (\inst|temp|Add0~78\ $ (GND)))
-- \inst|temp|Add0~81\ = CARRY((\inst|temp|cnt\(30)) # (!\inst|temp|Add0~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|cnt\(30),
	datad => VCC,
	cin => \inst|temp|Add0~78\,
	combout => \inst|temp|Add0~80_combout\,
	cout => \inst|temp|Add0~81\);

-- Location: LCCOMB_X12_Y12_N18
\inst|temp|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~82_combout\ = (!\inst|temp|Equal0~10_combout\ & \inst|temp|Add0~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|Equal0~10_combout\,
	datad => \inst|temp|Add0~80_combout\,
	combout => \inst|temp|Add0~82_combout\);

-- Location: FF_X12_Y12_N19
\inst|temp|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(30));

-- Location: LCCOMB_X13_Y12_N30
\inst|temp|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~83_combout\ = \inst|temp|Add0~81\ $ (!\inst|temp|cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|temp|cnt\(31),
	cin => \inst|temp|Add0~81\,
	combout => \inst|temp|Add0~83_combout\);

-- Location: LCCOMB_X12_Y12_N24
\inst|temp|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Add0~85_combout\ = (\inst|temp|Add0~83_combout\ & !\inst|temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|temp|Add0~83_combout\,
	datad => \inst|temp|Equal0~10_combout\,
	combout => \inst|temp|Add0~85_combout\);

-- Location: FF_X12_Y12_N25
\inst|temp|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|temp|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|temp|cnt\(31));

-- Location: LCCOMB_X12_Y12_N30
\inst|temp|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~9_combout\ = (!\inst|temp|cnt\(29) & (!\inst|temp|cnt\(30) & (!\inst|temp|cnt\(28) & !\inst|temp|cnt\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(29),
	datab => \inst|temp|cnt\(30),
	datac => \inst|temp|cnt\(28),
	datad => \inst|temp|cnt\(31),
	combout => \inst|temp|Equal0~9_combout\);

-- Location: LCCOMB_X14_Y12_N0
\inst|temp|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~5_combout\ = (!\inst|temp|cnt\(19) & (!\inst|temp|cnt\(18) & (!\inst|temp|cnt\(16) & !\inst|temp|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(19),
	datab => \inst|temp|cnt\(18),
	datac => \inst|temp|cnt\(16),
	datad => \inst|temp|cnt\(17),
	combout => \inst|temp|Equal0~5_combout\);

-- Location: LCCOMB_X14_Y12_N18
\inst|temp|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~6_combout\ = (!\inst|temp|cnt\(21) & (!\inst|temp|cnt\(23) & (!\inst|temp|cnt\(22) & !\inst|temp|cnt\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(21),
	datab => \inst|temp|cnt\(23),
	datac => \inst|temp|cnt\(22),
	datad => \inst|temp|cnt\(20),
	combout => \inst|temp|Equal0~6_combout\);

-- Location: LCCOMB_X14_Y12_N24
\inst|temp|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~7_combout\ = (\inst|temp|Equal0~5_combout\ & \inst|temp|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|temp|Equal0~5_combout\,
	datad => \inst|temp|Equal0~6_combout\,
	combout => \inst|temp|Equal0~7_combout\);

-- Location: LCCOMB_X14_Y13_N12
\inst|temp|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~1_combout\ = (!\inst|temp|cnt\(5) & (!\inst|temp|cnt\(4) & (!\inst|temp|cnt\(7) & !\inst|temp|cnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(5),
	datab => \inst|temp|cnt\(4),
	datac => \inst|temp|cnt\(7),
	datad => \inst|temp|cnt\(6),
	combout => \inst|temp|Equal0~1_combout\);

-- Location: LCCOMB_X14_Y13_N18
\inst|temp|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~2_combout\ = (!\inst|temp|cnt\(8) & (!\inst|temp|cnt\(9) & (!\inst|temp|cnt\(11) & !\inst|temp|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(8),
	datab => \inst|temp|cnt\(9),
	datac => \inst|temp|cnt\(11),
	datad => \inst|temp|cnt\(10),
	combout => \inst|temp|Equal0~2_combout\);

-- Location: LCCOMB_X12_Y12_N6
\inst|temp|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~0_combout\ = (!\inst|temp|cnt\(2) & (!\inst|temp|cnt\(1) & (!\inst|temp|cnt\(0) & !\inst|temp|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(2),
	datab => \inst|temp|cnt\(1),
	datac => \inst|temp|cnt\(0),
	datad => \inst|temp|cnt\(3),
	combout => \inst|temp|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y13_N24
\inst|temp|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~3_combout\ = (!\inst|temp|cnt\(14) & (!\inst|temp|cnt\(12) & (!\inst|temp|cnt\(15) & !\inst|temp|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(14),
	datab => \inst|temp|cnt\(12),
	datac => \inst|temp|cnt\(15),
	datad => \inst|temp|cnt\(13),
	combout => \inst|temp|Equal0~3_combout\);

-- Location: LCCOMB_X14_Y13_N30
\inst|temp|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~4_combout\ = (\inst|temp|Equal0~1_combout\ & (\inst|temp|Equal0~2_combout\ & (\inst|temp|Equal0~0_combout\ & \inst|temp|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|Equal0~1_combout\,
	datab => \inst|temp|Equal0~2_combout\,
	datac => \inst|temp|Equal0~0_combout\,
	datad => \inst|temp|Equal0~3_combout\,
	combout => \inst|temp|Equal0~4_combout\);

-- Location: LCCOMB_X14_Y12_N28
\inst|temp|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~8_combout\ = (!\inst|temp|cnt\(26) & (!\inst|temp|cnt\(27) & (!\inst|temp|cnt\(24) & !\inst|temp|cnt\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|cnt\(26),
	datab => \inst|temp|cnt\(27),
	datac => \inst|temp|cnt\(24),
	datad => \inst|temp|cnt\(25),
	combout => \inst|temp|Equal0~8_combout\);

-- Location: LCCOMB_X14_Y12_N22
\inst|temp|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|temp|Equal0~10_combout\ = (\inst|temp|Equal0~9_combout\ & (\inst|temp|Equal0~7_combout\ & (\inst|temp|Equal0~4_combout\ & \inst|temp|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|temp|Equal0~9_combout\,
	datab => \inst|temp|Equal0~7_combout\,
	datac => \inst|temp|Equal0~4_combout\,
	datad => \inst|temp|Equal0~8_combout\,
	combout => \inst|temp|Equal0~10_combout\);

-- Location: LCCOMB_X12_Y12_N26
\inst|control|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|control|Selector0~0_combout\ = (\key[1]~input_o\ & (\inst|control|estado_atual.s1~q\ $ (((!\key[2]~input_o\ & \inst|temp|Equal0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key[2]~input_o\,
	datab => \key[1]~input_o\,
	datac => \inst|control|estado_atual.s1~q\,
	datad => \inst|temp|Equal0~10_combout\,
	combout => \inst|control|Selector0~0_combout\);

-- Location: FF_X12_Y12_N27
\inst|control|estado_atual.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|control|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|control|estado_atual.s1~q\);

-- Location: FF_X16_Y10_N21
\inst|control|Freq_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|control|estado_atual.s1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|control|Freq_out\(15));

-- Location: FF_X12_Y12_N9
\inst|control|estado_atual.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \key[1]~input_o\,
	sload => VCC,
	ena => \inst|control|proximo_estado.s0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|control|estado_atual.s0~q\);

-- Location: LCCOMB_X16_Y10_N22
\inst|control|Freq_out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|control|Freq_out[13]~feeder_combout\ = \inst|control|estado_atual.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|control|estado_atual.s0~q\,
	combout => \inst|control|Freq_out[13]~feeder_combout\);

-- Location: FF_X16_Y10_N23
\inst|control|Freq_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|control|Freq_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|control|Freq_out\(13));

-- Location: LCCOMB_X16_Y10_N0
\inst|div_clock|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~13_combout\ = (\inst|control|Freq_out\(13) & ((\inst|control|Freq_out\(14)) # ((!\inst|div_clock|cnt\(14) & !\inst|div_clock|cnt\(13))))) # (!\inst|control|Freq_out\(13) & (\inst|control|Freq_out\(14) & 
-- ((!\inst|div_clock|cnt\(13)) # (!\inst|div_clock|cnt\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Freq_out\(13),
	datab => \inst|div_clock|cnt\(14),
	datac => \inst|control|Freq_out\(14),
	datad => \inst|div_clock|cnt\(13),
	combout => \inst|div_clock|LessThan0~13_combout\);

-- Location: LCCOMB_X16_Y10_N18
\inst|div_clock|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~14_combout\ = (\inst|control|Freq_out\(13) & (\inst|div_clock|cnt\(14) & ((\inst|div_clock|cnt\(13)) # (!\inst|control|Freq_out\(14))))) # (!\inst|control|Freq_out\(13) & ((\inst|div_clock|cnt\(14)) # 
-- ((!\inst|control|Freq_out\(14) & \inst|div_clock|cnt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Freq_out\(13),
	datab => \inst|div_clock|cnt\(14),
	datac => \inst|control|Freq_out\(14),
	datad => \inst|div_clock|cnt\(13),
	combout => \inst|div_clock|LessThan0~14_combout\);

-- Location: LCCOMB_X16_Y10_N28
\inst|div_clock|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~15_combout\ = (\inst|div_clock|cnt\(12) & (((\inst|div_clock|cnt\(11) & \inst|div_clock|LessThan0~14_combout\)) # (!\inst|div_clock|LessThan0~13_combout\))) # (!\inst|div_clock|cnt\(12) & (!\inst|div_clock|LessThan0~13_combout\ & 
-- ((\inst|div_clock|cnt\(11)) # (\inst|div_clock|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(12),
	datab => \inst|div_clock|cnt\(11),
	datac => \inst|div_clock|LessThan0~13_combout\,
	datad => \inst|div_clock|LessThan0~14_combout\,
	combout => \inst|div_clock|LessThan0~15_combout\);

-- Location: LCCOMB_X16_Y10_N6
\inst|div_clock|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~16_combout\ = (\inst|control|Freq_out\(15) & ((\inst|div_clock|cnt\(10) & ((\inst|div_clock|LessThan0~15_combout\) # (!\inst|div_clock|LessThan0~13_combout\))) # (!\inst|div_clock|cnt\(10) & 
-- (!\inst|div_clock|LessThan0~13_combout\ & \inst|div_clock|LessThan0~15_combout\)))) # (!\inst|control|Freq_out\(15) & (((\inst|div_clock|LessThan0~13_combout\ & !\inst|div_clock|LessThan0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(10),
	datab => \inst|control|Freq_out\(15),
	datac => \inst|div_clock|LessThan0~13_combout\,
	datad => \inst|div_clock|LessThan0~15_combout\,
	combout => \inst|div_clock|LessThan0~16_combout\);

-- Location: LCCOMB_X16_Y10_N8
\inst|div_clock|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~17_combout\ = (\inst|div_clock|LessThan0~16_combout\ & ((!\inst|div_clock|cnt\(15)))) # (!\inst|div_clock|LessThan0~16_combout\ & (\inst|control|Freq_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|control|Freq_out\(15),
	datac => \inst|div_clock|cnt\(15),
	datad => \inst|div_clock|LessThan0~16_combout\,
	combout => \inst|div_clock|LessThan0~17_combout\);

-- Location: LCCOMB_X16_Y10_N30
\inst|div_clock|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~5_combout\ = (\inst|div_clock|cnt\(10) & ((!\inst|control|Freq_out\(15)) # (!\inst|div_clock|cnt\(15)))) # (!\inst|div_clock|cnt\(10) & ((\inst|div_clock|cnt\(15)) # (\inst|control|Freq_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(10),
	datab => \inst|div_clock|cnt\(15),
	datad => \inst|control|Freq_out\(15),
	combout => \inst|div_clock|LessThan0~5_combout\);

-- Location: LCCOMB_X16_Y10_N16
\inst|div_clock|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~6_combout\ = (\inst|control|Freq_out\(14) & (((!\inst|div_clock|cnt\(11)) # (!\inst|div_clock|cnt\(12))) # (!\inst|div_clock|cnt\(14)))) # (!\inst|control|Freq_out\(14) & ((\inst|div_clock|cnt\(14)) # ((\inst|div_clock|cnt\(12)) 
-- # (\inst|div_clock|cnt\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Freq_out\(14),
	datab => \inst|div_clock|cnt\(14),
	datac => \inst|div_clock|cnt\(12),
	datad => \inst|div_clock|cnt\(11),
	combout => \inst|div_clock|LessThan0~6_combout\);

-- Location: LCCOMB_X16_Y10_N14
\inst|div_clock|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~7_combout\ = (!\inst|div_clock|LessThan0~5_combout\ & (!\inst|div_clock|LessThan0~6_combout\ & (\inst|control|Freq_out\(13) $ (!\inst|div_clock|cnt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|LessThan0~5_combout\,
	datab => \inst|div_clock|LessThan0~6_combout\,
	datac => \inst|control|Freq_out\(13),
	datad => \inst|div_clock|cnt\(13),
	combout => \inst|div_clock|LessThan0~7_combout\);

-- Location: LCCOMB_X16_Y10_N4
\inst|div_clock|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~9_combout\ = (\inst|control|Freq_out\(13) & (\inst|div_clock|cnt\(5) & (\inst|div_clock|cnt\(4) & \inst|div_clock|cnt\(3)))) # (!\inst|control|Freq_out\(13) & ((\inst|div_clock|cnt\(5)) # ((\inst|div_clock|cnt\(4)) # 
-- (\inst|div_clock|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Freq_out\(13),
	datab => \inst|div_clock|cnt\(5),
	datac => \inst|div_clock|cnt\(4),
	datad => \inst|div_clock|cnt\(3),
	combout => \inst|div_clock|LessThan0~9_combout\);

-- Location: LCCOMB_X16_Y10_N20
\inst|div_clock|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~8_combout\ = (\inst|control|Freq_out\(14) & (((!\inst|div_clock|cnt\(0) & \inst|control|Freq_out\(15))) # (!\inst|div_clock|cnt\(1)))) # (!\inst|control|Freq_out\(14) & (!\inst|div_clock|cnt\(0) & (\inst|control|Freq_out\(15) & 
-- !\inst|div_clock|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Freq_out\(14),
	datab => \inst|div_clock|cnt\(0),
	datac => \inst|control|Freq_out\(15),
	datad => \inst|div_clock|cnt\(1),
	combout => \inst|div_clock|LessThan0~8_combout\);

-- Location: LCCOMB_X16_Y10_N2
\inst|div_clock|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~10_combout\ = (\inst|div_clock|LessThan0~9_combout\ & (!\inst|div_clock|cnt\(2) & (\inst|control|Freq_out\(13) & \inst|div_clock|LessThan0~8_combout\))) # (!\inst|div_clock|LessThan0~9_combout\ & ((\inst|control|Freq_out\(13)) # 
-- ((!\inst|div_clock|cnt\(2) & \inst|div_clock|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(2),
	datab => \inst|div_clock|LessThan0~9_combout\,
	datac => \inst|control|Freq_out\(13),
	datad => \inst|div_clock|LessThan0~8_combout\,
	combout => \inst|div_clock|LessThan0~10_combout\);

-- Location: LCCOMB_X16_Y10_N12
\inst|div_clock|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~11_combout\ = (!\inst|div_clock|cnt\(8) & (!\inst|div_clock|cnt\(7) & (!\inst|div_clock|cnt\(6) & \inst|div_clock|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(8),
	datab => \inst|div_clock|cnt\(7),
	datac => \inst|div_clock|cnt\(6),
	datad => \inst|div_clock|LessThan0~10_combout\,
	combout => \inst|div_clock|LessThan0~11_combout\);

-- Location: LCCOMB_X16_Y10_N10
\inst|div_clock|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~12_combout\ = (\inst|div_clock|LessThan0~7_combout\ & ((\inst|control|Freq_out\(13) & ((\inst|div_clock|LessThan0~11_combout\) # (!\inst|div_clock|cnt\(9)))) # (!\inst|control|Freq_out\(13) & (!\inst|div_clock|cnt\(9) & 
-- \inst|div_clock|LessThan0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|control|Freq_out\(13),
	datab => \inst|div_clock|cnt\(9),
	datac => \inst|div_clock|LessThan0~7_combout\,
	datad => \inst|div_clock|LessThan0~11_combout\,
	combout => \inst|div_clock|LessThan0~12_combout\);

-- Location: LCCOMB_X16_Y10_N26
\inst|div_clock|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|LessThan0~18_combout\ = (!\inst|div_clock|cnt\(31) & (((!\inst|div_clock|LessThan0~17_combout\ & !\inst|div_clock|LessThan0~12_combout\)) # (!\inst|div_clock|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|div_clock|cnt\(31),
	datab => \inst|div_clock|LessThan0~4_combout\,
	datac => \inst|div_clock|LessThan0~17_combout\,
	datad => \inst|div_clock|LessThan0~12_combout\,
	combout => \inst|div_clock|LessThan0~18_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst|div_clock|toggle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|div_clock|toggle~0_combout\ = \inst|div_clock|toggle~q\ $ (\inst|div_clock|LessThan0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|div_clock|toggle~q\,
	datad => \inst|div_clock|LessThan0~18_combout\,
	combout => \inst|div_clock|toggle~0_combout\);

-- Location: FF_X17_Y11_N5
\inst|div_clock|toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|div_clock|toggle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|div_clock|toggle~q\);

ww_buzzer <= \buzzer~output_o\;
END structure;


