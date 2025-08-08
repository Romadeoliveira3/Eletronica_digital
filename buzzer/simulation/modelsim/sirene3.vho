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

-- DATE "02/08/2022 16:31:44"

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

ENTITY 	sirene_estrutural IS
    PORT (
	clock : IN std_logic;
	buzzer : BUFFER std_logic
	);
END sirene_estrutural;

-- Design Ports Information
-- buzzer	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sirene_estrutural IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_buzzer : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \buzzer~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_clock|cnt[0]~32_combout\ : std_logic;
SIGNAL \div_clock|cnt[0]~33\ : std_logic;
SIGNAL \div_clock|cnt[1]~34_combout\ : std_logic;
SIGNAL \div_clock|cnt[1]~35\ : std_logic;
SIGNAL \div_clock|cnt[2]~36_combout\ : std_logic;
SIGNAL \div_clock|cnt[2]~37\ : std_logic;
SIGNAL \div_clock|cnt[3]~38_combout\ : std_logic;
SIGNAL \div_clock|cnt[3]~39\ : std_logic;
SIGNAL \div_clock|cnt[4]~40_combout\ : std_logic;
SIGNAL \div_clock|cnt[4]~41\ : std_logic;
SIGNAL \div_clock|cnt[5]~42_combout\ : std_logic;
SIGNAL \div_clock|cnt[5]~43\ : std_logic;
SIGNAL \div_clock|cnt[6]~44_combout\ : std_logic;
SIGNAL \div_clock|cnt[6]~45\ : std_logic;
SIGNAL \div_clock|cnt[7]~46_combout\ : std_logic;
SIGNAL \div_clock|cnt[7]~47\ : std_logic;
SIGNAL \div_clock|cnt[8]~48_combout\ : std_logic;
SIGNAL \div_clock|cnt[8]~49\ : std_logic;
SIGNAL \div_clock|cnt[9]~50_combout\ : std_logic;
SIGNAL \div_clock|cnt[9]~51\ : std_logic;
SIGNAL \div_clock|cnt[10]~52_combout\ : std_logic;
SIGNAL \div_clock|cnt[10]~53\ : std_logic;
SIGNAL \div_clock|cnt[11]~54_combout\ : std_logic;
SIGNAL \div_clock|cnt[11]~55\ : std_logic;
SIGNAL \div_clock|cnt[12]~56_combout\ : std_logic;
SIGNAL \div_clock|cnt[12]~57\ : std_logic;
SIGNAL \div_clock|cnt[13]~58_combout\ : std_logic;
SIGNAL \div_clock|cnt[13]~59\ : std_logic;
SIGNAL \div_clock|cnt[14]~60_combout\ : std_logic;
SIGNAL \div_clock|cnt[14]~61\ : std_logic;
SIGNAL \div_clock|cnt[15]~62_combout\ : std_logic;
SIGNAL \div_clock|cnt[15]~63\ : std_logic;
SIGNAL \div_clock|cnt[16]~64_combout\ : std_logic;
SIGNAL \div_clock|cnt[16]~65\ : std_logic;
SIGNAL \div_clock|cnt[17]~66_combout\ : std_logic;
SIGNAL \div_clock|cnt[17]~67\ : std_logic;
SIGNAL \div_clock|cnt[18]~68_combout\ : std_logic;
SIGNAL \div_clock|cnt[18]~69\ : std_logic;
SIGNAL \div_clock|cnt[19]~70_combout\ : std_logic;
SIGNAL \div_clock|cnt[19]~71\ : std_logic;
SIGNAL \div_clock|cnt[20]~72_combout\ : std_logic;
SIGNAL \div_clock|cnt[20]~73\ : std_logic;
SIGNAL \div_clock|cnt[21]~74_combout\ : std_logic;
SIGNAL \div_clock|cnt[21]~75\ : std_logic;
SIGNAL \div_clock|cnt[22]~76_combout\ : std_logic;
SIGNAL \div_clock|cnt[22]~77\ : std_logic;
SIGNAL \div_clock|cnt[23]~78_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~1_combout\ : std_logic;
SIGNAL \div_clock|cnt[23]~79\ : std_logic;
SIGNAL \div_clock|cnt[24]~80_combout\ : std_logic;
SIGNAL \div_clock|cnt[24]~81\ : std_logic;
SIGNAL \div_clock|cnt[25]~82_combout\ : std_logic;
SIGNAL \div_clock|cnt[25]~83\ : std_logic;
SIGNAL \div_clock|cnt[26]~84_combout\ : std_logic;
SIGNAL \div_clock|cnt[26]~85\ : std_logic;
SIGNAL \div_clock|cnt[27]~86_combout\ : std_logic;
SIGNAL \div_clock|cnt[27]~87\ : std_logic;
SIGNAL \div_clock|cnt[28]~88_combout\ : std_logic;
SIGNAL \div_clock|cnt[28]~89\ : std_logic;
SIGNAL \div_clock|cnt[29]~90_combout\ : std_logic;
SIGNAL \div_clock|cnt[29]~91\ : std_logic;
SIGNAL \div_clock|cnt[30]~92_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~3_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~2_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~0_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~4_combout\ : std_logic;
SIGNAL \div_clock|cnt[30]~93\ : std_logic;
SIGNAL \div_clock|cnt[31]~94_combout\ : std_logic;
SIGNAL \control|estado_atual.s0~feeder_combout\ : std_logic;
SIGNAL \control|Selector0~0_combout\ : std_logic;
SIGNAL \control|estado_atual.s1~q\ : std_logic;
SIGNAL \control|estado_atual.s2~feeder_combout\ : std_logic;
SIGNAL \control|estado_atual.s2~q\ : std_logic;
SIGNAL \control|Disparo~feeder_combout\ : std_logic;
SIGNAL \control|Disparo~q\ : std_logic;
SIGNAL \temp|Add0~0_combout\ : std_logic;
SIGNAL \temp|Add0~5_combout\ : std_logic;
SIGNAL \temp|Add0~1\ : std_logic;
SIGNAL \temp|Add0~2_combout\ : std_logic;
SIGNAL \temp|Add0~4_combout\ : std_logic;
SIGNAL \temp|Add0~3\ : std_logic;
SIGNAL \temp|Add0~6_combout\ : std_logic;
SIGNAL \temp|Add0~8_combout\ : std_logic;
SIGNAL \temp|Add0~7\ : std_logic;
SIGNAL \temp|Add0~9_combout\ : std_logic;
SIGNAL \temp|Add0~11_combout\ : std_logic;
SIGNAL \temp|Add0~10\ : std_logic;
SIGNAL \temp|Add0~12_combout\ : std_logic;
SIGNAL \temp|Add0~14_combout\ : std_logic;
SIGNAL \temp|Add0~13\ : std_logic;
SIGNAL \temp|Add0~15_combout\ : std_logic;
SIGNAL \temp|Add0~17_combout\ : std_logic;
SIGNAL \temp|Add0~16\ : std_logic;
SIGNAL \temp|Add0~18_combout\ : std_logic;
SIGNAL \temp|cnt~0_combout\ : std_logic;
SIGNAL \temp|Add0~19\ : std_logic;
SIGNAL \temp|Add0~20_combout\ : std_logic;
SIGNAL \temp|cnt~1_combout\ : std_logic;
SIGNAL \temp|Add0~21\ : std_logic;
SIGNAL \temp|Add0~22_combout\ : std_logic;
SIGNAL \temp|Add0~24_combout\ : std_logic;
SIGNAL \temp|Add0~23\ : std_logic;
SIGNAL \temp|Add0~25_combout\ : std_logic;
SIGNAL \temp|Add0~27_combout\ : std_logic;
SIGNAL \temp|Add0~26\ : std_logic;
SIGNAL \temp|Add0~28_combout\ : std_logic;
SIGNAL \temp|Add0~30_combout\ : std_logic;
SIGNAL \temp|Add0~29\ : std_logic;
SIGNAL \temp|Add0~31_combout\ : std_logic;
SIGNAL \temp|cnt~2_combout\ : std_logic;
SIGNAL \temp|Equal0~2_combout\ : std_logic;
SIGNAL \temp|Equal0~1_combout\ : std_logic;
SIGNAL \temp|Equal0~0_combout\ : std_logic;
SIGNAL \temp|Add0~32\ : std_logic;
SIGNAL \temp|Add0~33_combout\ : std_logic;
SIGNAL \temp|Add0~35_combout\ : std_logic;
SIGNAL \temp|Add0~34\ : std_logic;
SIGNAL \temp|Add0~36_combout\ : std_logic;
SIGNAL \temp|Add0~38_combout\ : std_logic;
SIGNAL \temp|Add0~37\ : std_logic;
SIGNAL \temp|Add0~39_combout\ : std_logic;
SIGNAL \temp|Add0~41_combout\ : std_logic;
SIGNAL \temp|Add0~40\ : std_logic;
SIGNAL \temp|Add0~42_combout\ : std_logic;
SIGNAL \temp|cnt~3_combout\ : std_logic;
SIGNAL \temp|Equal0~3_combout\ : std_logic;
SIGNAL \temp|Equal0~4_combout\ : std_logic;
SIGNAL \temp|Add0~43\ : std_logic;
SIGNAL \temp|Add0~44_combout\ : std_logic;
SIGNAL \temp|cnt~4_combout\ : std_logic;
SIGNAL \temp|Add0~45\ : std_logic;
SIGNAL \temp|Add0~46_combout\ : std_logic;
SIGNAL \temp|cnt~5_combout\ : std_logic;
SIGNAL \temp|Add0~47\ : std_logic;
SIGNAL \temp|Add0~48_combout\ : std_logic;
SIGNAL \temp|cnt~6_combout\ : std_logic;
SIGNAL \temp|Add0~49\ : std_logic;
SIGNAL \temp|Add0~50_combout\ : std_logic;
SIGNAL \temp|Add0~52_combout\ : std_logic;
SIGNAL \temp|Equal0~5_combout\ : std_logic;
SIGNAL \temp|Add0~51\ : std_logic;
SIGNAL \temp|Add0~53_combout\ : std_logic;
SIGNAL \temp|Add0~55_combout\ : std_logic;
SIGNAL \temp|Add0~54\ : std_logic;
SIGNAL \temp|Add0~56_combout\ : std_logic;
SIGNAL \temp|Add0~58_combout\ : std_logic;
SIGNAL \temp|Add0~57\ : std_logic;
SIGNAL \temp|Add0~59_combout\ : std_logic;
SIGNAL \temp|Add0~61_combout\ : std_logic;
SIGNAL \temp|Add0~60\ : std_logic;
SIGNAL \temp|Add0~62_combout\ : std_logic;
SIGNAL \temp|cnt~7_combout\ : std_logic;
SIGNAL \temp|Equal0~6_combout\ : std_logic;
SIGNAL \temp|Equal0~7_combout\ : std_logic;
SIGNAL \temp|Add0~63\ : std_logic;
SIGNAL \temp|Add0~64_combout\ : std_logic;
SIGNAL \temp|cnt~8_combout\ : std_logic;
SIGNAL \temp|Add0~65\ : std_logic;
SIGNAL \temp|Add0~66_combout\ : std_logic;
SIGNAL \temp|cnt~9_combout\ : std_logic;
SIGNAL \temp|Add0~67\ : std_logic;
SIGNAL \temp|Add0~68_combout\ : std_logic;
SIGNAL \temp|Add0~70_combout\ : std_logic;
SIGNAL \temp|Add0~69\ : std_logic;
SIGNAL \temp|Add0~71_combout\ : std_logic;
SIGNAL \temp|Add0~73_combout\ : std_logic;
SIGNAL \temp|Add0~72\ : std_logic;
SIGNAL \temp|Add0~74_combout\ : std_logic;
SIGNAL \temp|Add0~76_combout\ : std_logic;
SIGNAL \temp|Add0~75\ : std_logic;
SIGNAL \temp|Add0~77_combout\ : std_logic;
SIGNAL \temp|Add0~79_combout\ : std_logic;
SIGNAL \temp|Add0~78\ : std_logic;
SIGNAL \temp|Add0~80_combout\ : std_logic;
SIGNAL \temp|Add0~82_combout\ : std_logic;
SIGNAL \temp|Add0~81\ : std_logic;
SIGNAL \temp|Add0~83_combout\ : std_logic;
SIGNAL \temp|Add0~85_combout\ : std_logic;
SIGNAL \temp|Equal0~9_combout\ : std_logic;
SIGNAL \temp|Equal0~8_combout\ : std_logic;
SIGNAL \temp|Equal0~10_combout\ : std_logic;
SIGNAL \control|estado_atual.s0~q\ : std_logic;
SIGNAL \control|Freq_out[13]~feeder_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~5_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~6_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~7_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~9_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~8_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~10_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~11_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~12_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~13_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~14_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~15_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~16_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~17_combout\ : std_logic;
SIGNAL \div_clock|LessThan0~18_combout\ : std_logic;
SIGNAL \div_clock|toggle~0_combout\ : std_logic;
SIGNAL \div_clock|toggle~q\ : std_logic;
SIGNAL \div_clock|cnt\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \control|Freq_out\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \temp|cnt\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
buzzer <= ww_buzzer;
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
	i => \div_clock|toggle~q\,
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

-- Location: LCCOMB_X17_Y14_N0
\div_clock|cnt[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[0]~32_combout\ = \div_clock|cnt\(0) $ (VCC)
-- \div_clock|cnt[0]~33\ = CARRY(\div_clock|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(0),
	datad => VCC,
	combout => \div_clock|cnt[0]~32_combout\,
	cout => \div_clock|cnt[0]~33\);

-- Location: FF_X17_Y14_N1
\div_clock|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[0]~32_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(0));

-- Location: LCCOMB_X17_Y14_N2
\div_clock|cnt[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[1]~34_combout\ = (\div_clock|cnt\(1) & (!\div_clock|cnt[0]~33\)) # (!\div_clock|cnt\(1) & ((\div_clock|cnt[0]~33\) # (GND)))
-- \div_clock|cnt[1]~35\ = CARRY((!\div_clock|cnt[0]~33\) # (!\div_clock|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(1),
	datad => VCC,
	cin => \div_clock|cnt[0]~33\,
	combout => \div_clock|cnt[1]~34_combout\,
	cout => \div_clock|cnt[1]~35\);

-- Location: FF_X17_Y14_N3
\div_clock|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[1]~34_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(1));

-- Location: LCCOMB_X17_Y14_N4
\div_clock|cnt[2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[2]~36_combout\ = (\div_clock|cnt\(2) & (\div_clock|cnt[1]~35\ $ (GND))) # (!\div_clock|cnt\(2) & (!\div_clock|cnt[1]~35\ & VCC))
-- \div_clock|cnt[2]~37\ = CARRY((\div_clock|cnt\(2) & !\div_clock|cnt[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(2),
	datad => VCC,
	cin => \div_clock|cnt[1]~35\,
	combout => \div_clock|cnt[2]~36_combout\,
	cout => \div_clock|cnt[2]~37\);

-- Location: FF_X17_Y14_N5
\div_clock|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[2]~36_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(2));

-- Location: LCCOMB_X17_Y14_N6
\div_clock|cnt[3]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[3]~38_combout\ = (\div_clock|cnt\(3) & (!\div_clock|cnt[2]~37\)) # (!\div_clock|cnt\(3) & ((\div_clock|cnt[2]~37\) # (GND)))
-- \div_clock|cnt[3]~39\ = CARRY((!\div_clock|cnt[2]~37\) # (!\div_clock|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(3),
	datad => VCC,
	cin => \div_clock|cnt[2]~37\,
	combout => \div_clock|cnt[3]~38_combout\,
	cout => \div_clock|cnt[3]~39\);

-- Location: FF_X17_Y14_N7
\div_clock|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[3]~38_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(3));

-- Location: LCCOMB_X17_Y14_N8
\div_clock|cnt[4]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[4]~40_combout\ = (\div_clock|cnt\(4) & (\div_clock|cnt[3]~39\ $ (GND))) # (!\div_clock|cnt\(4) & (!\div_clock|cnt[3]~39\ & VCC))
-- \div_clock|cnt[4]~41\ = CARRY((\div_clock|cnt\(4) & !\div_clock|cnt[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(4),
	datad => VCC,
	cin => \div_clock|cnt[3]~39\,
	combout => \div_clock|cnt[4]~40_combout\,
	cout => \div_clock|cnt[4]~41\);

-- Location: FF_X17_Y14_N9
\div_clock|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[4]~40_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(4));

-- Location: LCCOMB_X17_Y14_N10
\div_clock|cnt[5]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[5]~42_combout\ = (\div_clock|cnt\(5) & (!\div_clock|cnt[4]~41\)) # (!\div_clock|cnt\(5) & ((\div_clock|cnt[4]~41\) # (GND)))
-- \div_clock|cnt[5]~43\ = CARRY((!\div_clock|cnt[4]~41\) # (!\div_clock|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(5),
	datad => VCC,
	cin => \div_clock|cnt[4]~41\,
	combout => \div_clock|cnt[5]~42_combout\,
	cout => \div_clock|cnt[5]~43\);

-- Location: FF_X17_Y14_N11
\div_clock|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[5]~42_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(5));

-- Location: LCCOMB_X17_Y14_N12
\div_clock|cnt[6]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[6]~44_combout\ = (\div_clock|cnt\(6) & (\div_clock|cnt[5]~43\ $ (GND))) # (!\div_clock|cnt\(6) & (!\div_clock|cnt[5]~43\ & VCC))
-- \div_clock|cnt[6]~45\ = CARRY((\div_clock|cnt\(6) & !\div_clock|cnt[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(6),
	datad => VCC,
	cin => \div_clock|cnt[5]~43\,
	combout => \div_clock|cnt[6]~44_combout\,
	cout => \div_clock|cnt[6]~45\);

-- Location: FF_X17_Y14_N13
\div_clock|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[6]~44_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(6));

-- Location: LCCOMB_X17_Y14_N14
\div_clock|cnt[7]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[7]~46_combout\ = (\div_clock|cnt\(7) & (!\div_clock|cnt[6]~45\)) # (!\div_clock|cnt\(7) & ((\div_clock|cnt[6]~45\) # (GND)))
-- \div_clock|cnt[7]~47\ = CARRY((!\div_clock|cnt[6]~45\) # (!\div_clock|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(7),
	datad => VCC,
	cin => \div_clock|cnt[6]~45\,
	combout => \div_clock|cnt[7]~46_combout\,
	cout => \div_clock|cnt[7]~47\);

-- Location: FF_X17_Y14_N15
\div_clock|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[7]~46_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(7));

-- Location: LCCOMB_X17_Y14_N16
\div_clock|cnt[8]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[8]~48_combout\ = (\div_clock|cnt\(8) & (\div_clock|cnt[7]~47\ $ (GND))) # (!\div_clock|cnt\(8) & (!\div_clock|cnt[7]~47\ & VCC))
-- \div_clock|cnt[8]~49\ = CARRY((\div_clock|cnt\(8) & !\div_clock|cnt[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(8),
	datad => VCC,
	cin => \div_clock|cnt[7]~47\,
	combout => \div_clock|cnt[8]~48_combout\,
	cout => \div_clock|cnt[8]~49\);

-- Location: FF_X17_Y14_N17
\div_clock|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[8]~48_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(8));

-- Location: LCCOMB_X17_Y14_N18
\div_clock|cnt[9]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[9]~50_combout\ = (\div_clock|cnt\(9) & (!\div_clock|cnt[8]~49\)) # (!\div_clock|cnt\(9) & ((\div_clock|cnt[8]~49\) # (GND)))
-- \div_clock|cnt[9]~51\ = CARRY((!\div_clock|cnt[8]~49\) # (!\div_clock|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(9),
	datad => VCC,
	cin => \div_clock|cnt[8]~49\,
	combout => \div_clock|cnt[9]~50_combout\,
	cout => \div_clock|cnt[9]~51\);

-- Location: FF_X17_Y14_N19
\div_clock|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[9]~50_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(9));

-- Location: LCCOMB_X17_Y14_N20
\div_clock|cnt[10]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[10]~52_combout\ = (\div_clock|cnt\(10) & (\div_clock|cnt[9]~51\ $ (GND))) # (!\div_clock|cnt\(10) & (!\div_clock|cnt[9]~51\ & VCC))
-- \div_clock|cnt[10]~53\ = CARRY((\div_clock|cnt\(10) & !\div_clock|cnt[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(10),
	datad => VCC,
	cin => \div_clock|cnt[9]~51\,
	combout => \div_clock|cnt[10]~52_combout\,
	cout => \div_clock|cnt[10]~53\);

-- Location: FF_X17_Y14_N21
\div_clock|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[10]~52_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(10));

-- Location: LCCOMB_X17_Y14_N22
\div_clock|cnt[11]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[11]~54_combout\ = (\div_clock|cnt\(11) & (!\div_clock|cnt[10]~53\)) # (!\div_clock|cnt\(11) & ((\div_clock|cnt[10]~53\) # (GND)))
-- \div_clock|cnt[11]~55\ = CARRY((!\div_clock|cnt[10]~53\) # (!\div_clock|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(11),
	datad => VCC,
	cin => \div_clock|cnt[10]~53\,
	combout => \div_clock|cnt[11]~54_combout\,
	cout => \div_clock|cnt[11]~55\);

-- Location: FF_X17_Y14_N23
\div_clock|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[11]~54_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(11));

-- Location: LCCOMB_X17_Y14_N24
\div_clock|cnt[12]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[12]~56_combout\ = (\div_clock|cnt\(12) & (\div_clock|cnt[11]~55\ $ (GND))) # (!\div_clock|cnt\(12) & (!\div_clock|cnt[11]~55\ & VCC))
-- \div_clock|cnt[12]~57\ = CARRY((\div_clock|cnt\(12) & !\div_clock|cnt[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(12),
	datad => VCC,
	cin => \div_clock|cnt[11]~55\,
	combout => \div_clock|cnt[12]~56_combout\,
	cout => \div_clock|cnt[12]~57\);

-- Location: FF_X17_Y14_N25
\div_clock|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[12]~56_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(12));

-- Location: LCCOMB_X17_Y14_N26
\div_clock|cnt[13]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[13]~58_combout\ = (\div_clock|cnt\(13) & (!\div_clock|cnt[12]~57\)) # (!\div_clock|cnt\(13) & ((\div_clock|cnt[12]~57\) # (GND)))
-- \div_clock|cnt[13]~59\ = CARRY((!\div_clock|cnt[12]~57\) # (!\div_clock|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(13),
	datad => VCC,
	cin => \div_clock|cnt[12]~57\,
	combout => \div_clock|cnt[13]~58_combout\,
	cout => \div_clock|cnt[13]~59\);

-- Location: FF_X17_Y14_N27
\div_clock|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[13]~58_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(13));

-- Location: LCCOMB_X17_Y14_N28
\div_clock|cnt[14]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[14]~60_combout\ = (\div_clock|cnt\(14) & (\div_clock|cnt[13]~59\ $ (GND))) # (!\div_clock|cnt\(14) & (!\div_clock|cnt[13]~59\ & VCC))
-- \div_clock|cnt[14]~61\ = CARRY((\div_clock|cnt\(14) & !\div_clock|cnt[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(14),
	datad => VCC,
	cin => \div_clock|cnt[13]~59\,
	combout => \div_clock|cnt[14]~60_combout\,
	cout => \div_clock|cnt[14]~61\);

-- Location: FF_X17_Y14_N29
\div_clock|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[14]~60_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(14));

-- Location: LCCOMB_X17_Y14_N30
\div_clock|cnt[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[15]~62_combout\ = (\div_clock|cnt\(15) & (!\div_clock|cnt[14]~61\)) # (!\div_clock|cnt\(15) & ((\div_clock|cnt[14]~61\) # (GND)))
-- \div_clock|cnt[15]~63\ = CARRY((!\div_clock|cnt[14]~61\) # (!\div_clock|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(15),
	datad => VCC,
	cin => \div_clock|cnt[14]~61\,
	combout => \div_clock|cnt[15]~62_combout\,
	cout => \div_clock|cnt[15]~63\);

-- Location: FF_X17_Y14_N31
\div_clock|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[15]~62_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(15));

-- Location: LCCOMB_X17_Y13_N0
\div_clock|cnt[16]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[16]~64_combout\ = (\div_clock|cnt\(16) & (\div_clock|cnt[15]~63\ $ (GND))) # (!\div_clock|cnt\(16) & (!\div_clock|cnt[15]~63\ & VCC))
-- \div_clock|cnt[16]~65\ = CARRY((\div_clock|cnt\(16) & !\div_clock|cnt[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(16),
	datad => VCC,
	cin => \div_clock|cnt[15]~63\,
	combout => \div_clock|cnt[16]~64_combout\,
	cout => \div_clock|cnt[16]~65\);

-- Location: FF_X17_Y13_N1
\div_clock|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[16]~64_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(16));

-- Location: LCCOMB_X17_Y13_N2
\div_clock|cnt[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[17]~66_combout\ = (\div_clock|cnt\(17) & (!\div_clock|cnt[16]~65\)) # (!\div_clock|cnt\(17) & ((\div_clock|cnt[16]~65\) # (GND)))
-- \div_clock|cnt[17]~67\ = CARRY((!\div_clock|cnt[16]~65\) # (!\div_clock|cnt\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(17),
	datad => VCC,
	cin => \div_clock|cnt[16]~65\,
	combout => \div_clock|cnt[17]~66_combout\,
	cout => \div_clock|cnt[17]~67\);

-- Location: FF_X17_Y13_N3
\div_clock|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[17]~66_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(17));

-- Location: LCCOMB_X17_Y13_N4
\div_clock|cnt[18]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[18]~68_combout\ = (\div_clock|cnt\(18) & (\div_clock|cnt[17]~67\ $ (GND))) # (!\div_clock|cnt\(18) & (!\div_clock|cnt[17]~67\ & VCC))
-- \div_clock|cnt[18]~69\ = CARRY((\div_clock|cnt\(18) & !\div_clock|cnt[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(18),
	datad => VCC,
	cin => \div_clock|cnt[17]~67\,
	combout => \div_clock|cnt[18]~68_combout\,
	cout => \div_clock|cnt[18]~69\);

-- Location: FF_X17_Y13_N5
\div_clock|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[18]~68_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(18));

-- Location: LCCOMB_X17_Y13_N6
\div_clock|cnt[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[19]~70_combout\ = (\div_clock|cnt\(19) & (!\div_clock|cnt[18]~69\)) # (!\div_clock|cnt\(19) & ((\div_clock|cnt[18]~69\) # (GND)))
-- \div_clock|cnt[19]~71\ = CARRY((!\div_clock|cnt[18]~69\) # (!\div_clock|cnt\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(19),
	datad => VCC,
	cin => \div_clock|cnt[18]~69\,
	combout => \div_clock|cnt[19]~70_combout\,
	cout => \div_clock|cnt[19]~71\);

-- Location: FF_X17_Y13_N7
\div_clock|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[19]~70_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(19));

-- Location: LCCOMB_X17_Y13_N8
\div_clock|cnt[20]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[20]~72_combout\ = (\div_clock|cnt\(20) & (\div_clock|cnt[19]~71\ $ (GND))) # (!\div_clock|cnt\(20) & (!\div_clock|cnt[19]~71\ & VCC))
-- \div_clock|cnt[20]~73\ = CARRY((\div_clock|cnt\(20) & !\div_clock|cnt[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(20),
	datad => VCC,
	cin => \div_clock|cnt[19]~71\,
	combout => \div_clock|cnt[20]~72_combout\,
	cout => \div_clock|cnt[20]~73\);

-- Location: FF_X17_Y13_N9
\div_clock|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[20]~72_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(20));

-- Location: LCCOMB_X17_Y13_N10
\div_clock|cnt[21]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[21]~74_combout\ = (\div_clock|cnt\(21) & (!\div_clock|cnt[20]~73\)) # (!\div_clock|cnt\(21) & ((\div_clock|cnt[20]~73\) # (GND)))
-- \div_clock|cnt[21]~75\ = CARRY((!\div_clock|cnt[20]~73\) # (!\div_clock|cnt\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(21),
	datad => VCC,
	cin => \div_clock|cnt[20]~73\,
	combout => \div_clock|cnt[21]~74_combout\,
	cout => \div_clock|cnt[21]~75\);

-- Location: FF_X17_Y13_N11
\div_clock|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[21]~74_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(21));

-- Location: LCCOMB_X17_Y13_N12
\div_clock|cnt[22]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[22]~76_combout\ = (\div_clock|cnt\(22) & (\div_clock|cnt[21]~75\ $ (GND))) # (!\div_clock|cnt\(22) & (!\div_clock|cnt[21]~75\ & VCC))
-- \div_clock|cnt[22]~77\ = CARRY((\div_clock|cnt\(22) & !\div_clock|cnt[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(22),
	datad => VCC,
	cin => \div_clock|cnt[21]~75\,
	combout => \div_clock|cnt[22]~76_combout\,
	cout => \div_clock|cnt[22]~77\);

-- Location: FF_X17_Y13_N13
\div_clock|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[22]~76_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(22));

-- Location: LCCOMB_X17_Y13_N14
\div_clock|cnt[23]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[23]~78_combout\ = (\div_clock|cnt\(23) & (!\div_clock|cnt[22]~77\)) # (!\div_clock|cnt\(23) & ((\div_clock|cnt[22]~77\) # (GND)))
-- \div_clock|cnt[23]~79\ = CARRY((!\div_clock|cnt[22]~77\) # (!\div_clock|cnt\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(23),
	datad => VCC,
	cin => \div_clock|cnt[22]~77\,
	combout => \div_clock|cnt[23]~78_combout\,
	cout => \div_clock|cnt[23]~79\);

-- Location: FF_X17_Y13_N15
\div_clock|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[23]~78_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(23));

-- Location: LCCOMB_X16_Y13_N2
\div_clock|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~1_combout\ = (!\div_clock|cnt\(22) & (!\div_clock|cnt\(23) & (!\div_clock|cnt\(20) & !\div_clock|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(22),
	datab => \div_clock|cnt\(23),
	datac => \div_clock|cnt\(20),
	datad => \div_clock|cnt\(21),
	combout => \div_clock|LessThan0~1_combout\);

-- Location: LCCOMB_X17_Y13_N16
\div_clock|cnt[24]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[24]~80_combout\ = (\div_clock|cnt\(24) & (\div_clock|cnt[23]~79\ $ (GND))) # (!\div_clock|cnt\(24) & (!\div_clock|cnt[23]~79\ & VCC))
-- \div_clock|cnt[24]~81\ = CARRY((\div_clock|cnt\(24) & !\div_clock|cnt[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(24),
	datad => VCC,
	cin => \div_clock|cnt[23]~79\,
	combout => \div_clock|cnt[24]~80_combout\,
	cout => \div_clock|cnt[24]~81\);

-- Location: FF_X17_Y13_N17
\div_clock|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[24]~80_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(24));

-- Location: LCCOMB_X17_Y13_N18
\div_clock|cnt[25]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[25]~82_combout\ = (\div_clock|cnt\(25) & (!\div_clock|cnt[24]~81\)) # (!\div_clock|cnt\(25) & ((\div_clock|cnt[24]~81\) # (GND)))
-- \div_clock|cnt[25]~83\ = CARRY((!\div_clock|cnt[24]~81\) # (!\div_clock|cnt\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(25),
	datad => VCC,
	cin => \div_clock|cnt[24]~81\,
	combout => \div_clock|cnt[25]~82_combout\,
	cout => \div_clock|cnt[25]~83\);

-- Location: FF_X17_Y13_N19
\div_clock|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[25]~82_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(25));

-- Location: LCCOMB_X17_Y13_N20
\div_clock|cnt[26]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[26]~84_combout\ = (\div_clock|cnt\(26) & (\div_clock|cnt[25]~83\ $ (GND))) # (!\div_clock|cnt\(26) & (!\div_clock|cnt[25]~83\ & VCC))
-- \div_clock|cnt[26]~85\ = CARRY((\div_clock|cnt\(26) & !\div_clock|cnt[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(26),
	datad => VCC,
	cin => \div_clock|cnt[25]~83\,
	combout => \div_clock|cnt[26]~84_combout\,
	cout => \div_clock|cnt[26]~85\);

-- Location: FF_X17_Y13_N21
\div_clock|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[26]~84_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(26));

-- Location: LCCOMB_X17_Y13_N22
\div_clock|cnt[27]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[27]~86_combout\ = (\div_clock|cnt\(27) & (!\div_clock|cnt[26]~85\)) # (!\div_clock|cnt\(27) & ((\div_clock|cnt[26]~85\) # (GND)))
-- \div_clock|cnt[27]~87\ = CARRY((!\div_clock|cnt[26]~85\) # (!\div_clock|cnt\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(27),
	datad => VCC,
	cin => \div_clock|cnt[26]~85\,
	combout => \div_clock|cnt[27]~86_combout\,
	cout => \div_clock|cnt[27]~87\);

-- Location: FF_X17_Y13_N23
\div_clock|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[27]~86_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(27));

-- Location: LCCOMB_X17_Y13_N24
\div_clock|cnt[28]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[28]~88_combout\ = (\div_clock|cnt\(28) & (\div_clock|cnt[27]~87\ $ (GND))) # (!\div_clock|cnt\(28) & (!\div_clock|cnt[27]~87\ & VCC))
-- \div_clock|cnt[28]~89\ = CARRY((\div_clock|cnt\(28) & !\div_clock|cnt[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(28),
	datad => VCC,
	cin => \div_clock|cnt[27]~87\,
	combout => \div_clock|cnt[28]~88_combout\,
	cout => \div_clock|cnt[28]~89\);

-- Location: FF_X17_Y13_N25
\div_clock|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[28]~88_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(28));

-- Location: LCCOMB_X17_Y13_N26
\div_clock|cnt[29]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[29]~90_combout\ = (\div_clock|cnt\(29) & (!\div_clock|cnt[28]~89\)) # (!\div_clock|cnt\(29) & ((\div_clock|cnt[28]~89\) # (GND)))
-- \div_clock|cnt[29]~91\ = CARRY((!\div_clock|cnt[28]~89\) # (!\div_clock|cnt\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(29),
	datad => VCC,
	cin => \div_clock|cnt[28]~89\,
	combout => \div_clock|cnt[29]~90_combout\,
	cout => \div_clock|cnt[29]~91\);

-- Location: FF_X17_Y13_N27
\div_clock|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[29]~90_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(29));

-- Location: LCCOMB_X17_Y13_N28
\div_clock|cnt[30]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[30]~92_combout\ = (\div_clock|cnt\(30) & (\div_clock|cnt[29]~91\ $ (GND))) # (!\div_clock|cnt\(30) & (!\div_clock|cnt[29]~91\ & VCC))
-- \div_clock|cnt[30]~93\ = CARRY((\div_clock|cnt\(30) & !\div_clock|cnt[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(30),
	datad => VCC,
	cin => \div_clock|cnt[29]~91\,
	combout => \div_clock|cnt[30]~92_combout\,
	cout => \div_clock|cnt[30]~93\);

-- Location: FF_X17_Y13_N29
\div_clock|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[30]~92_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(30));

-- Location: LCCOMB_X16_Y13_N10
\div_clock|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~3_combout\ = (!\div_clock|cnt\(30) & (!\div_clock|cnt\(29) & !\div_clock|cnt\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_clock|cnt\(30),
	datac => \div_clock|cnt\(29),
	datad => \div_clock|cnt\(28),
	combout => \div_clock|LessThan0~3_combout\);

-- Location: LCCOMB_X16_Y13_N12
\div_clock|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~2_combout\ = (!\div_clock|cnt\(26) & (!\div_clock|cnt\(25) & (!\div_clock|cnt\(27) & !\div_clock|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(26),
	datab => \div_clock|cnt\(25),
	datac => \div_clock|cnt\(27),
	datad => \div_clock|cnt\(24),
	combout => \div_clock|LessThan0~2_combout\);

-- Location: LCCOMB_X16_Y13_N0
\div_clock|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~0_combout\ = (!\div_clock|cnt\(18) & (!\div_clock|cnt\(19) & (!\div_clock|cnt\(16) & !\div_clock|cnt\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(18),
	datab => \div_clock|cnt\(19),
	datac => \div_clock|cnt\(16),
	datad => \div_clock|cnt\(17),
	combout => \div_clock|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y14_N12
\div_clock|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~4_combout\ = (\div_clock|LessThan0~1_combout\ & (\div_clock|LessThan0~3_combout\ & (\div_clock|LessThan0~2_combout\ & \div_clock|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|LessThan0~1_combout\,
	datab => \div_clock|LessThan0~3_combout\,
	datac => \div_clock|LessThan0~2_combout\,
	datad => \div_clock|LessThan0~0_combout\,
	combout => \div_clock|LessThan0~4_combout\);

-- Location: LCCOMB_X17_Y13_N30
\div_clock|cnt[31]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|cnt[31]~94_combout\ = \div_clock|cnt\(31) $ (\div_clock|cnt[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(31),
	cin => \div_clock|cnt[30]~93\,
	combout => \div_clock|cnt[31]~94_combout\);

-- Location: FF_X17_Y13_N31
\div_clock|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|cnt[31]~94_combout\,
	sclr => \div_clock|LessThan0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|cnt\(31));

-- Location: LCCOMB_X6_Y9_N0
\control|estado_atual.s0~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|estado_atual.s0~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \control|estado_atual.s0~feeder_combout\);

-- Location: LCCOMB_X9_Y9_N0
\control|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Selector0~0_combout\ = \control|estado_atual.s1~q\ $ (\temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \control|estado_atual.s1~q\,
	datad => \temp|Equal0~10_combout\,
	combout => \control|Selector0~0_combout\);

-- Location: FF_X9_Y9_N1
\control|estado_atual.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.s1~q\);

-- Location: LCCOMB_X9_Y9_N2
\control|estado_atual.s2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|estado_atual.s2~feeder_combout\ = \control|estado_atual.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control|estado_atual.s1~q\,
	combout => \control|estado_atual.s2~feeder_combout\);

-- Location: FF_X9_Y9_N3
\control|estado_atual.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control|estado_atual.s2~feeder_combout\,
	ena => \temp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.s2~q\);

-- Location: FF_X16_Y14_N15
\control|Freq_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \control|estado_atual.s2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|Freq_out\(14));

-- Location: LCCOMB_X9_Y10_N0
\control|Disparo~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Disparo~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \control|Disparo~feeder_combout\);

-- Location: FF_X9_Y10_N1
\control|Disparo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control|Disparo~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|Disparo~q\);

-- Location: LCCOMB_X8_Y10_N0
\temp|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~0_combout\ = \temp|cnt\(0) $ (VCC)
-- \temp|Add0~1\ = CARRY(\temp|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(0),
	datad => VCC,
	combout => \temp|Add0~0_combout\,
	cout => \temp|Add0~1\);

-- Location: LCCOMB_X9_Y10_N6
\temp|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~5_combout\ = (\temp|Add0~0_combout\ & !\temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp|Add0~0_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|Add0~5_combout\);

-- Location: FF_X9_Y10_N7
\temp|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(0));

-- Location: LCCOMB_X8_Y10_N2
\temp|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~2_combout\ = (\temp|cnt\(1) & (\temp|Add0~1\ & VCC)) # (!\temp|cnt\(1) & (!\temp|Add0~1\))
-- \temp|Add0~3\ = CARRY((!\temp|cnt\(1) & !\temp|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(1),
	datad => VCC,
	cin => \temp|Add0~1\,
	combout => \temp|Add0~2_combout\,
	cout => \temp|Add0~3\);

-- Location: LCCOMB_X9_Y10_N20
\temp|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~4_combout\ = (\temp|Add0~2_combout\ & !\temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|Add0~2_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|Add0~4_combout\);

-- Location: FF_X9_Y10_N21
\temp|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(1));

-- Location: LCCOMB_X8_Y10_N4
\temp|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~6_combout\ = (\temp|cnt\(2) & ((GND) # (!\temp|Add0~3\))) # (!\temp|cnt\(2) & (\temp|Add0~3\ $ (GND)))
-- \temp|Add0~7\ = CARRY((\temp|cnt\(2)) # (!\temp|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(2),
	datad => VCC,
	cin => \temp|Add0~3\,
	combout => \temp|Add0~6_combout\,
	cout => \temp|Add0~7\);

-- Location: LCCOMB_X9_Y10_N4
\temp|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~8_combout\ = (\temp|Add0~6_combout\ & !\temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp|Add0~6_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|Add0~8_combout\);

-- Location: FF_X9_Y10_N5
\temp|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(2));

-- Location: LCCOMB_X8_Y10_N6
\temp|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~9_combout\ = (\temp|cnt\(3) & (\temp|Add0~7\ & VCC)) # (!\temp|cnt\(3) & (!\temp|Add0~7\))
-- \temp|Add0~10\ = CARRY((!\temp|cnt\(3) & !\temp|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(3),
	datad => VCC,
	cin => \temp|Add0~7\,
	combout => \temp|Add0~9_combout\,
	cout => \temp|Add0~10\);

-- Location: LCCOMB_X9_Y10_N2
\temp|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~11_combout\ = (\temp|Add0~9_combout\ & !\temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp|Add0~9_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|Add0~11_combout\);

-- Location: FF_X9_Y10_N3
\temp|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(3));

-- Location: LCCOMB_X8_Y10_N8
\temp|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~12_combout\ = (\temp|cnt\(4) & ((GND) # (!\temp|Add0~10\))) # (!\temp|cnt\(4) & (\temp|Add0~10\ $ (GND)))
-- \temp|Add0~13\ = CARRY((\temp|cnt\(4)) # (!\temp|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(4),
	datad => VCC,
	cin => \temp|Add0~10\,
	combout => \temp|Add0~12_combout\,
	cout => \temp|Add0~13\);

-- Location: LCCOMB_X7_Y10_N0
\temp|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~14_combout\ = (!\temp|Equal0~10_combout\ & \temp|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp|Equal0~10_combout\,
	datac => \temp|Add0~12_combout\,
	combout => \temp|Add0~14_combout\);

-- Location: FF_X7_Y10_N1
\temp|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(4));

-- Location: LCCOMB_X8_Y10_N10
\temp|Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~15_combout\ = (\temp|cnt\(5) & (\temp|Add0~13\ & VCC)) # (!\temp|cnt\(5) & (!\temp|Add0~13\))
-- \temp|Add0~16\ = CARRY((!\temp|cnt\(5) & !\temp|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(5),
	datad => VCC,
	cin => \temp|Add0~13\,
	combout => \temp|Add0~15_combout\,
	cout => \temp|Add0~16\);

-- Location: LCCOMB_X7_Y10_N14
\temp|Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~17_combout\ = (!\temp|Equal0~10_combout\ & \temp|Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp|Equal0~10_combout\,
	datac => \temp|Add0~15_combout\,
	combout => \temp|Add0~17_combout\);

-- Location: FF_X7_Y10_N15
\temp|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(5));

-- Location: LCCOMB_X8_Y10_N12
\temp|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~18_combout\ = (\temp|cnt\(6) & ((GND) # (!\temp|Add0~16\))) # (!\temp|cnt\(6) & (\temp|Add0~16\ $ (GND)))
-- \temp|Add0~19\ = CARRY((\temp|cnt\(6)) # (!\temp|Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(6),
	datad => VCC,
	cin => \temp|Add0~16\,
	combout => \temp|Add0~18_combout\,
	cout => \temp|Add0~19\);

-- Location: LCCOMB_X7_Y10_N8
\temp|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|cnt~0_combout\ = (\temp|Equal0~10_combout\ & (!\control|Freq_out\(14) & (\control|Disparo~q\))) # (!\temp|Equal0~10_combout\ & (((\temp|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(14),
	datab => \control|Disparo~q\,
	datac => \temp|Add0~18_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|cnt~0_combout\);

-- Location: FF_X7_Y10_N9
\temp|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|cnt~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(6));

-- Location: LCCOMB_X8_Y10_N14
\temp|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~20_combout\ = (\temp|cnt\(7) & (\temp|Add0~19\ & VCC)) # (!\temp|cnt\(7) & (!\temp|Add0~19\))
-- \temp|Add0~21\ = CARRY((!\temp|cnt\(7) & !\temp|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(7),
	datad => VCC,
	cin => \temp|Add0~19\,
	combout => \temp|Add0~20_combout\,
	cout => \temp|Add0~21\);

-- Location: LCCOMB_X7_Y10_N10
\temp|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|cnt~1_combout\ = (\temp|Equal0~10_combout\ & (\control|Freq_out\(14) & (\control|Disparo~q\))) # (!\temp|Equal0~10_combout\ & (((\temp|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(14),
	datab => \control|Disparo~q\,
	datac => \temp|Add0~20_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|cnt~1_combout\);

-- Location: FF_X7_Y10_N11
\temp|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|cnt~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(7));

-- Location: LCCOMB_X8_Y10_N16
\temp|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~22_combout\ = (\temp|cnt\(8) & ((GND) # (!\temp|Add0~21\))) # (!\temp|cnt\(8) & (\temp|Add0~21\ $ (GND)))
-- \temp|Add0~23\ = CARRY((\temp|cnt\(8)) # (!\temp|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(8),
	datad => VCC,
	cin => \temp|Add0~21\,
	combout => \temp|Add0~22_combout\,
	cout => \temp|Add0~23\);

-- Location: LCCOMB_X7_Y10_N2
\temp|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~24_combout\ = (!\temp|Equal0~10_combout\ & \temp|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp|Equal0~10_combout\,
	datad => \temp|Add0~22_combout\,
	combout => \temp|Add0~24_combout\);

-- Location: FF_X7_Y10_N3
\temp|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(8));

-- Location: LCCOMB_X8_Y10_N18
\temp|Add0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~25_combout\ = (\temp|cnt\(9) & (\temp|Add0~23\ & VCC)) # (!\temp|cnt\(9) & (!\temp|Add0~23\))
-- \temp|Add0~26\ = CARRY((!\temp|cnt\(9) & !\temp|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(9),
	datad => VCC,
	cin => \temp|Add0~23\,
	combout => \temp|Add0~25_combout\,
	cout => \temp|Add0~26\);

-- Location: LCCOMB_X7_Y10_N12
\temp|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~27_combout\ = (!\temp|Equal0~10_combout\ & \temp|Add0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp|Equal0~10_combout\,
	datad => \temp|Add0~25_combout\,
	combout => \temp|Add0~27_combout\);

-- Location: FF_X7_Y10_N13
\temp|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(9));

-- Location: LCCOMB_X8_Y10_N20
\temp|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~28_combout\ = (\temp|cnt\(10) & ((GND) # (!\temp|Add0~26\))) # (!\temp|cnt\(10) & (\temp|Add0~26\ $ (GND)))
-- \temp|Add0~29\ = CARRY((\temp|cnt\(10)) # (!\temp|Add0~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(10),
	datad => VCC,
	cin => \temp|Add0~26\,
	combout => \temp|Add0~28_combout\,
	cout => \temp|Add0~29\);

-- Location: LCCOMB_X7_Y10_N26
\temp|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~30_combout\ = (!\temp|Equal0~10_combout\ & \temp|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp|Equal0~10_combout\,
	datac => \temp|Add0~28_combout\,
	combout => \temp|Add0~30_combout\);

-- Location: FF_X7_Y10_N27
\temp|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(10));

-- Location: LCCOMB_X8_Y10_N22
\temp|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~31_combout\ = (\temp|cnt\(11) & (\temp|Add0~29\ & VCC)) # (!\temp|cnt\(11) & (!\temp|Add0~29\))
-- \temp|Add0~32\ = CARRY((!\temp|cnt\(11) & !\temp|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(11),
	datad => VCC,
	cin => \temp|Add0~29\,
	combout => \temp|Add0~31_combout\,
	cout => \temp|Add0~32\);

-- Location: LCCOMB_X7_Y10_N28
\temp|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|cnt~2_combout\ = (\temp|Equal0~10_combout\ & (!\control|Freq_out\(14) & (\control|Disparo~q\))) # (!\temp|Equal0~10_combout\ & (((\temp|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(14),
	datab => \control|Disparo~q\,
	datac => \temp|Equal0~10_combout\,
	datad => \temp|Add0~31_combout\,
	combout => \temp|cnt~2_combout\);

-- Location: FF_X7_Y10_N29
\temp|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|cnt~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(11));

-- Location: LCCOMB_X7_Y10_N22
\temp|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~2_combout\ = (\temp|cnt\(9)) # ((\temp|cnt\(11)) # ((\temp|cnt\(10)) # (\temp|cnt\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(9),
	datab => \temp|cnt\(11),
	datac => \temp|cnt\(10),
	datad => \temp|cnt\(8),
	combout => \temp|Equal0~2_combout\);

-- Location: LCCOMB_X7_Y10_N24
\temp|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~1_combout\ = (\temp|cnt\(7)) # ((\temp|cnt\(6)) # ((\temp|cnt\(5)) # (\temp|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(7),
	datab => \temp|cnt\(6),
	datac => \temp|cnt\(5),
	datad => \temp|cnt\(4),
	combout => \temp|Equal0~1_combout\);

-- Location: LCCOMB_X9_Y10_N28
\temp|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~0_combout\ = (\temp|cnt\(0)) # ((\temp|cnt\(1)) # ((\temp|cnt\(2)) # (\temp|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(0),
	datab => \temp|cnt\(1),
	datac => \temp|cnt\(2),
	datad => \temp|cnt\(3),
	combout => \temp|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y10_N24
\temp|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~33_combout\ = (\temp|cnt\(12) & ((GND) # (!\temp|Add0~32\))) # (!\temp|cnt\(12) & (\temp|Add0~32\ $ (GND)))
-- \temp|Add0~34\ = CARRY((\temp|cnt\(12)) # (!\temp|Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(12),
	datad => VCC,
	cin => \temp|Add0~32\,
	combout => \temp|Add0~33_combout\,
	cout => \temp|Add0~34\);

-- Location: LCCOMB_X7_Y10_N4
\temp|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~35_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\)) # (!\temp|Equal0~10_combout\ & ((\temp|Add0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Disparo~q\,
	datac => \temp|Equal0~10_combout\,
	datad => \temp|Add0~33_combout\,
	combout => \temp|Add0~35_combout\);

-- Location: FF_X7_Y10_N5
\temp|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(12));

-- Location: LCCOMB_X8_Y10_N26
\temp|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~36_combout\ = (\temp|cnt\(13) & (\temp|Add0~34\ & VCC)) # (!\temp|cnt\(13) & (!\temp|Add0~34\))
-- \temp|Add0~37\ = CARRY((!\temp|cnt\(13) & !\temp|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(13),
	datad => VCC,
	cin => \temp|Add0~34\,
	combout => \temp|Add0~36_combout\,
	cout => \temp|Add0~37\);

-- Location: LCCOMB_X7_Y10_N18
\temp|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~38_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\)) # (!\temp|Equal0~10_combout\ & ((\temp|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Disparo~q\,
	datac => \temp|Equal0~10_combout\,
	datad => \temp|Add0~36_combout\,
	combout => \temp|Add0~38_combout\);

-- Location: FF_X7_Y10_N19
\temp|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(13));

-- Location: LCCOMB_X8_Y10_N28
\temp|Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~39_combout\ = (\temp|cnt\(14) & ((GND) # (!\temp|Add0~37\))) # (!\temp|cnt\(14) & (\temp|Add0~37\ $ (GND)))
-- \temp|Add0~40\ = CARRY((\temp|cnt\(14)) # (!\temp|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(14),
	datad => VCC,
	cin => \temp|Add0~37\,
	combout => \temp|Add0~39_combout\,
	cout => \temp|Add0~40\);

-- Location: LCCOMB_X7_Y10_N16
\temp|Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~41_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\)) # (!\temp|Equal0~10_combout\ & ((\temp|Add0~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Disparo~q\,
	datac => \temp|Equal0~10_combout\,
	datad => \temp|Add0~39_combout\,
	combout => \temp|Add0~41_combout\);

-- Location: FF_X7_Y10_N17
\temp|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(14));

-- Location: LCCOMB_X8_Y10_N30
\temp|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~42_combout\ = (\temp|cnt\(15) & (\temp|Add0~40\ & VCC)) # (!\temp|cnt\(15) & (!\temp|Add0~40\))
-- \temp|Add0~43\ = CARRY((!\temp|cnt\(15) & !\temp|Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(15),
	datad => VCC,
	cin => \temp|Add0~40\,
	combout => \temp|Add0~42_combout\,
	cout => \temp|Add0~43\);

-- Location: LCCOMB_X7_Y10_N6
\temp|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|cnt~3_combout\ = (\temp|Equal0~10_combout\ & (\control|Freq_out\(14) & (\control|Disparo~q\))) # (!\temp|Equal0~10_combout\ & (((\temp|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(14),
	datab => \control|Disparo~q\,
	datac => \temp|Add0~42_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|cnt~3_combout\);

-- Location: FF_X7_Y10_N7
\temp|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|cnt~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(15));

-- Location: LCCOMB_X7_Y10_N20
\temp|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~3_combout\ = (\temp|cnt\(15)) # ((\temp|cnt\(14)) # ((\temp|cnt\(12)) # (\temp|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(15),
	datab => \temp|cnt\(14),
	datac => \temp|cnt\(12),
	datad => \temp|cnt\(13),
	combout => \temp|Equal0~3_combout\);

-- Location: LCCOMB_X7_Y10_N30
\temp|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~4_combout\ = (\temp|Equal0~2_combout\) # ((\temp|Equal0~1_combout\) # ((\temp|Equal0~0_combout\) # (\temp|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|Equal0~2_combout\,
	datab => \temp|Equal0~1_combout\,
	datac => \temp|Equal0~0_combout\,
	datad => \temp|Equal0~3_combout\,
	combout => \temp|Equal0~4_combout\);

-- Location: LCCOMB_X8_Y9_N0
\temp|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~44_combout\ = (\temp|cnt\(16) & ((GND) # (!\temp|Add0~43\))) # (!\temp|cnt\(16) & (\temp|Add0~43\ $ (GND)))
-- \temp|Add0~45\ = CARRY((\temp|cnt\(16)) # (!\temp|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(16),
	datad => VCC,
	cin => \temp|Add0~43\,
	combout => \temp|Add0~44_combout\,
	cout => \temp|Add0~45\);

-- Location: LCCOMB_X7_Y9_N4
\temp|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|cnt~4_combout\ = (\temp|Equal0~10_combout\ & (!\control|Freq_out\(14) & ((\control|Disparo~q\)))) # (!\temp|Equal0~10_combout\ & (((\temp|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(14),
	datab => \temp|Equal0~10_combout\,
	datac => \temp|Add0~44_combout\,
	datad => \control|Disparo~q\,
	combout => \temp|cnt~4_combout\);

-- Location: FF_X7_Y9_N5
\temp|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|cnt~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(16));

-- Location: LCCOMB_X8_Y9_N2
\temp|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~46_combout\ = (\temp|cnt\(17) & (\temp|Add0~45\ & VCC)) # (!\temp|cnt\(17) & (!\temp|Add0~45\))
-- \temp|Add0~47\ = CARRY((!\temp|cnt\(17) & !\temp|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(17),
	datad => VCC,
	cin => \temp|Add0~45\,
	combout => \temp|Add0~46_combout\,
	cout => \temp|Add0~47\);

-- Location: LCCOMB_X7_Y9_N6
\temp|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|cnt~5_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\ & (\control|Freq_out\(14)))) # (!\temp|Equal0~10_combout\ & (((\temp|Add0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Disparo~q\,
	datab => \temp|Equal0~10_combout\,
	datac => \control|Freq_out\(14),
	datad => \temp|Add0~46_combout\,
	combout => \temp|cnt~5_combout\);

-- Location: FF_X7_Y9_N7
\temp|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|cnt~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(17));

-- Location: LCCOMB_X8_Y9_N4
\temp|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~48_combout\ = (\temp|cnt\(18) & ((GND) # (!\temp|Add0~47\))) # (!\temp|cnt\(18) & (\temp|Add0~47\ $ (GND)))
-- \temp|Add0~49\ = CARRY((\temp|cnt\(18)) # (!\temp|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(18),
	datad => VCC,
	cin => \temp|Add0~47\,
	combout => \temp|Add0~48_combout\,
	cout => \temp|Add0~49\);

-- Location: LCCOMB_X7_Y9_N16
\temp|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|cnt~6_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\ & (!\control|Freq_out\(14)))) # (!\temp|Equal0~10_combout\ & (((\temp|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Disparo~q\,
	datab => \temp|Equal0~10_combout\,
	datac => \control|Freq_out\(14),
	datad => \temp|Add0~48_combout\,
	combout => \temp|cnt~6_combout\);

-- Location: FF_X7_Y9_N17
\temp|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|cnt~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(18));

-- Location: LCCOMB_X8_Y9_N6
\temp|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~50_combout\ = (\temp|cnt\(19) & (\temp|Add0~49\ & VCC)) # (!\temp|cnt\(19) & (!\temp|Add0~49\))
-- \temp|Add0~51\ = CARRY((!\temp|cnt\(19) & !\temp|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(19),
	datad => VCC,
	cin => \temp|Add0~49\,
	combout => \temp|Add0~50_combout\,
	cout => \temp|Add0~51\);

-- Location: LCCOMB_X7_Y9_N14
\temp|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~52_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\)) # (!\temp|Equal0~10_combout\ & ((\temp|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp|Equal0~10_combout\,
	datac => \control|Disparo~q\,
	datad => \temp|Add0~50_combout\,
	combout => \temp|Add0~52_combout\);

-- Location: FF_X7_Y9_N15
\temp|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(19));

-- Location: LCCOMB_X7_Y9_N20
\temp|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~5_combout\ = (\temp|cnt\(17)) # ((\temp|cnt\(19)) # ((\temp|cnt\(16)) # (\temp|cnt\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(17),
	datab => \temp|cnt\(19),
	datac => \temp|cnt\(16),
	datad => \temp|cnt\(18),
	combout => \temp|Equal0~5_combout\);

-- Location: LCCOMB_X8_Y9_N8
\temp|Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~53_combout\ = (\temp|cnt\(20) & ((GND) # (!\temp|Add0~51\))) # (!\temp|cnt\(20) & (\temp|Add0~51\ $ (GND)))
-- \temp|Add0~54\ = CARRY((\temp|cnt\(20)) # (!\temp|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(20),
	datad => VCC,
	cin => \temp|Add0~51\,
	combout => \temp|Add0~53_combout\,
	cout => \temp|Add0~54\);

-- Location: LCCOMB_X7_Y9_N30
\temp|Add0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~55_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\)) # (!\temp|Equal0~10_combout\ & ((\temp|Add0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Disparo~q\,
	datac => \temp|Add0~53_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|Add0~55_combout\);

-- Location: FF_X7_Y9_N31
\temp|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(20));

-- Location: LCCOMB_X8_Y9_N10
\temp|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~56_combout\ = (\temp|cnt\(21) & (\temp|Add0~54\ & VCC)) # (!\temp|cnt\(21) & (!\temp|Add0~54\))
-- \temp|Add0~57\ = CARRY((!\temp|cnt\(21) & !\temp|Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(21),
	datad => VCC,
	cin => \temp|Add0~54\,
	combout => \temp|Add0~56_combout\,
	cout => \temp|Add0~57\);

-- Location: LCCOMB_X7_Y9_N28
\temp|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~58_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\)) # (!\temp|Equal0~10_combout\ & ((\temp|Add0~56_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Disparo~q\,
	datac => \temp|Add0~56_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|Add0~58_combout\);

-- Location: FF_X7_Y9_N29
\temp|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(21));

-- Location: LCCOMB_X8_Y9_N12
\temp|Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~59_combout\ = (\temp|cnt\(22) & ((GND) # (!\temp|Add0~57\))) # (!\temp|cnt\(22) & (\temp|Add0~57\ $ (GND)))
-- \temp|Add0~60\ = CARRY((\temp|cnt\(22)) # (!\temp|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(22),
	datad => VCC,
	cin => \temp|Add0~57\,
	combout => \temp|Add0~59_combout\,
	cout => \temp|Add0~60\);

-- Location: LCCOMB_X7_Y9_N22
\temp|Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~61_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\)) # (!\temp|Equal0~10_combout\ & ((\temp|Add0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Disparo~q\,
	datac => \temp|Add0~59_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|Add0~61_combout\);

-- Location: FF_X7_Y9_N23
\temp|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(22));

-- Location: LCCOMB_X8_Y9_N14
\temp|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~62_combout\ = (\temp|cnt\(23) & (\temp|Add0~60\ & VCC)) # (!\temp|cnt\(23) & (!\temp|Add0~60\))
-- \temp|Add0~63\ = CARRY((!\temp|cnt\(23) & !\temp|Add0~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(23),
	datad => VCC,
	cin => \temp|Add0~60\,
	combout => \temp|Add0~62_combout\,
	cout => \temp|Add0~63\);

-- Location: LCCOMB_X7_Y9_N8
\temp|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|cnt~7_combout\ = (\temp|Equal0~10_combout\ & (\control|Freq_out\(14) & ((\control|Disparo~q\)))) # (!\temp|Equal0~10_combout\ & (((\temp|Add0~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(14),
	datab => \temp|Equal0~10_combout\,
	datac => \temp|Add0~62_combout\,
	datad => \control|Disparo~q\,
	combout => \temp|cnt~7_combout\);

-- Location: FF_X7_Y9_N9
\temp|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|cnt~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(23));

-- Location: LCCOMB_X7_Y9_N18
\temp|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~6_combout\ = (\temp|cnt\(20)) # ((\temp|cnt\(23)) # ((\temp|cnt\(22)) # (\temp|cnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(20),
	datab => \temp|cnt\(23),
	datac => \temp|cnt\(22),
	datad => \temp|cnt\(21),
	combout => \temp|Equal0~6_combout\);

-- Location: LCCOMB_X7_Y9_N24
\temp|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~7_combout\ = (\temp|Equal0~5_combout\) # (\temp|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \temp|Equal0~5_combout\,
	datad => \temp|Equal0~6_combout\,
	combout => \temp|Equal0~7_combout\);

-- Location: LCCOMB_X8_Y9_N16
\temp|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~64_combout\ = (\temp|cnt\(24) & ((GND) # (!\temp|Add0~63\))) # (!\temp|cnt\(24) & (\temp|Add0~63\ $ (GND)))
-- \temp|Add0~65\ = CARRY((\temp|cnt\(24)) # (!\temp|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(24),
	datad => VCC,
	cin => \temp|Add0~63\,
	combout => \temp|Add0~64_combout\,
	cout => \temp|Add0~65\);

-- Location: LCCOMB_X7_Y9_N26
\temp|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|cnt~8_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\ & (!\control|Freq_out\(14)))) # (!\temp|Equal0~10_combout\ & (((\temp|Add0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Disparo~q\,
	datab => \temp|Equal0~10_combout\,
	datac => \control|Freq_out\(14),
	datad => \temp|Add0~64_combout\,
	combout => \temp|cnt~8_combout\);

-- Location: FF_X7_Y9_N27
\temp|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|cnt~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(24));

-- Location: LCCOMB_X8_Y9_N18
\temp|Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~66_combout\ = (\temp|cnt\(25) & (\temp|Add0~65\ & VCC)) # (!\temp|cnt\(25) & (!\temp|Add0~65\))
-- \temp|Add0~67\ = CARRY((!\temp|cnt\(25) & !\temp|Add0~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(25),
	datad => VCC,
	cin => \temp|Add0~65\,
	combout => \temp|Add0~66_combout\,
	cout => \temp|Add0~67\);

-- Location: LCCOMB_X7_Y9_N0
\temp|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|cnt~9_combout\ = (\temp|Equal0~10_combout\ & (\control|Disparo~q\ & (\control|Freq_out\(14)))) # (!\temp|Equal0~10_combout\ & (((\temp|Add0~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Disparo~q\,
	datab => \temp|Equal0~10_combout\,
	datac => \control|Freq_out\(14),
	datad => \temp|Add0~66_combout\,
	combout => \temp|cnt~9_combout\);

-- Location: FF_X7_Y9_N1
\temp|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|cnt~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(25));

-- Location: LCCOMB_X8_Y9_N20
\temp|Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~68_combout\ = (\temp|cnt\(26) & ((GND) # (!\temp|Add0~67\))) # (!\temp|cnt\(26) & (\temp|Add0~67\ $ (GND)))
-- \temp|Add0~69\ = CARRY((\temp|cnt\(26)) # (!\temp|Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(26),
	datad => VCC,
	cin => \temp|Add0~67\,
	combout => \temp|Add0~68_combout\,
	cout => \temp|Add0~69\);

-- Location: LCCOMB_X7_Y9_N10
\temp|Add0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~70_combout\ = (\temp|Add0~68_combout\ & !\temp|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp|Add0~68_combout\,
	datad => \temp|Equal0~10_combout\,
	combout => \temp|Add0~70_combout\);

-- Location: FF_X7_Y9_N11
\temp|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(26));

-- Location: LCCOMB_X8_Y9_N22
\temp|Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~71_combout\ = (\temp|cnt\(27) & (\temp|Add0~69\ & VCC)) # (!\temp|cnt\(27) & (!\temp|Add0~69\))
-- \temp|Add0~72\ = CARRY((!\temp|cnt\(27) & !\temp|Add0~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(27),
	datad => VCC,
	cin => \temp|Add0~69\,
	combout => \temp|Add0~71_combout\,
	cout => \temp|Add0~72\);

-- Location: LCCOMB_X9_Y9_N8
\temp|Add0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~73_combout\ = (!\temp|Equal0~10_combout\ & \temp|Add0~71_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|Equal0~10_combout\,
	datad => \temp|Add0~71_combout\,
	combout => \temp|Add0~73_combout\);

-- Location: FF_X9_Y9_N9
\temp|cnt[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(27));

-- Location: LCCOMB_X8_Y9_N24
\temp|Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~74_combout\ = (\temp|cnt\(28) & ((GND) # (!\temp|Add0~72\))) # (!\temp|cnt\(28) & (\temp|Add0~72\ $ (GND)))
-- \temp|Add0~75\ = CARRY((\temp|cnt\(28)) # (!\temp|Add0~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \temp|cnt\(28),
	datad => VCC,
	cin => \temp|Add0~72\,
	combout => \temp|Add0~74_combout\,
	cout => \temp|Add0~75\);

-- Location: LCCOMB_X9_Y10_N26
\temp|Add0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~76_combout\ = (!\temp|Equal0~10_combout\ & \temp|Add0~74_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp|Equal0~10_combout\,
	datad => \temp|Add0~74_combout\,
	combout => \temp|Add0~76_combout\);

-- Location: FF_X9_Y10_N27
\temp|cnt[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(28));

-- Location: LCCOMB_X8_Y9_N26
\temp|Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~77_combout\ = (\temp|cnt\(29) & (\temp|Add0~75\ & VCC)) # (!\temp|cnt\(29) & (!\temp|Add0~75\))
-- \temp|Add0~78\ = CARRY((!\temp|cnt\(29) & !\temp|Add0~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(29),
	datad => VCC,
	cin => \temp|Add0~75\,
	combout => \temp|Add0~77_combout\,
	cout => \temp|Add0~78\);

-- Location: LCCOMB_X9_Y10_N24
\temp|Add0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~79_combout\ = (!\temp|Equal0~10_combout\ & \temp|Add0~77_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp|Equal0~10_combout\,
	datad => \temp|Add0~77_combout\,
	combout => \temp|Add0~79_combout\);

-- Location: FF_X9_Y10_N25
\temp|cnt[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~79_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(29));

-- Location: LCCOMB_X8_Y9_N28
\temp|Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~80_combout\ = (\temp|cnt\(30) & ((GND) # (!\temp|Add0~78\))) # (!\temp|cnt\(30) & (\temp|Add0~78\ $ (GND)))
-- \temp|Add0~81\ = CARRY((\temp|cnt\(30)) # (!\temp|Add0~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(30),
	datad => VCC,
	cin => \temp|Add0~78\,
	combout => \temp|Add0~80_combout\,
	cout => \temp|Add0~81\);

-- Location: LCCOMB_X9_Y10_N10
\temp|Add0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~82_combout\ = (!\temp|Equal0~10_combout\ & \temp|Add0~80_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp|Equal0~10_combout\,
	datad => \temp|Add0~80_combout\,
	combout => \temp|Add0~82_combout\);

-- Location: FF_X9_Y10_N11
\temp|cnt[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(30));

-- Location: LCCOMB_X8_Y9_N30
\temp|Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~83_combout\ = \temp|Add0~81\ $ (!\temp|cnt\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \temp|cnt\(31),
	cin => \temp|Add0~81\,
	combout => \temp|Add0~83_combout\);

-- Location: LCCOMB_X9_Y10_N8
\temp|Add0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Add0~85_combout\ = (!\temp|Equal0~10_combout\ & \temp|Add0~83_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \temp|Equal0~10_combout\,
	datad => \temp|Add0~83_combout\,
	combout => \temp|Add0~85_combout\);

-- Location: FF_X9_Y10_N9
\temp|cnt[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp|Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp|cnt\(31));

-- Location: LCCOMB_X9_Y10_N30
\temp|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~9_combout\ = (\temp|cnt\(30)) # ((\temp|cnt\(31)) # ((\temp|cnt\(28)) # (\temp|cnt\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(30),
	datab => \temp|cnt\(31),
	datac => \temp|cnt\(28),
	datad => \temp|cnt\(29),
	combout => \temp|Equal0~9_combout\);

-- Location: LCCOMB_X7_Y9_N12
\temp|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~8_combout\ = (\temp|cnt\(26)) # ((\temp|cnt\(25)) # ((\temp|cnt\(24)) # (\temp|cnt\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|cnt\(26),
	datab => \temp|cnt\(25),
	datac => \temp|cnt\(24),
	datad => \temp|cnt\(27),
	combout => \temp|Equal0~8_combout\);

-- Location: LCCOMB_X7_Y9_N2
\temp|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \temp|Equal0~10_combout\ = (!\temp|Equal0~4_combout\ & (!\temp|Equal0~7_combout\ & (!\temp|Equal0~9_combout\ & !\temp|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp|Equal0~4_combout\,
	datab => \temp|Equal0~7_combout\,
	datac => \temp|Equal0~9_combout\,
	datad => \temp|Equal0~8_combout\,
	combout => \temp|Equal0~10_combout\);

-- Location: FF_X6_Y9_N1
\control|estado_atual.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control|estado_atual.s0~feeder_combout\,
	ena => \temp|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|estado_atual.s0~q\);

-- Location: LCCOMB_X16_Y14_N26
\control|Freq_out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \control|Freq_out[13]~feeder_combout\ = \control|estado_atual.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \control|estado_atual.s0~q\,
	combout => \control|Freq_out[13]~feeder_combout\);

-- Location: FF_X16_Y14_N27
\control|Freq_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \control|Freq_out[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|Freq_out\(13));

-- Location: FF_X16_Y14_N29
\control|Freq_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \control|estado_atual.s1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \control|Freq_out\(15));

-- Location: LCCOMB_X16_Y14_N14
\div_clock|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~5_combout\ = (\div_clock|cnt\(10) & ((!\div_clock|cnt\(15)) # (!\control|Freq_out\(15)))) # (!\div_clock|cnt\(10) & ((\control|Freq_out\(15)) # (\div_clock|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(10),
	datab => \control|Freq_out\(15),
	datad => \div_clock|cnt\(15),
	combout => \div_clock|LessThan0~5_combout\);

-- Location: LCCOMB_X16_Y14_N24
\div_clock|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~6_combout\ = (\control|Freq_out\(14) & (((!\div_clock|cnt\(11)) # (!\div_clock|cnt\(12))) # (!\div_clock|cnt\(14)))) # (!\control|Freq_out\(14) & ((\div_clock|cnt\(14)) # ((\div_clock|cnt\(12)) # (\div_clock|cnt\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(14),
	datab => \div_clock|cnt\(14),
	datac => \div_clock|cnt\(12),
	datad => \div_clock|cnt\(11),
	combout => \div_clock|LessThan0~6_combout\);

-- Location: LCCOMB_X16_Y14_N2
\div_clock|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~7_combout\ = (!\div_clock|LessThan0~5_combout\ & (!\div_clock|LessThan0~6_combout\ & (\control|Freq_out\(13) $ (!\div_clock|cnt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(13),
	datab => \div_clock|cnt\(13),
	datac => \div_clock|LessThan0~5_combout\,
	datad => \div_clock|LessThan0~6_combout\,
	combout => \div_clock|LessThan0~7_combout\);

-- Location: LCCOMB_X16_Y14_N4
\div_clock|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~9_combout\ = (\control|Freq_out\(13) & (\div_clock|cnt\(5) & (\div_clock|cnt\(4) & \div_clock|cnt\(3)))) # (!\control|Freq_out\(13) & ((\div_clock|cnt\(5)) # ((\div_clock|cnt\(4)) # (\div_clock|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(13),
	datab => \div_clock|cnt\(5),
	datac => \div_clock|cnt\(4),
	datad => \div_clock|cnt\(3),
	combout => \div_clock|LessThan0~9_combout\);

-- Location: LCCOMB_X16_Y14_N28
\div_clock|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~8_combout\ = (\control|Freq_out\(14) & (((!\div_clock|cnt\(0) & \control|Freq_out\(15))) # (!\div_clock|cnt\(1)))) # (!\control|Freq_out\(14) & (!\div_clock|cnt\(0) & (\control|Freq_out\(15) & !\div_clock|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(14),
	datab => \div_clock|cnt\(0),
	datac => \control|Freq_out\(15),
	datad => \div_clock|cnt\(1),
	combout => \div_clock|LessThan0~8_combout\);

-- Location: LCCOMB_X16_Y14_N10
\div_clock|LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~10_combout\ = (\div_clock|LessThan0~9_combout\ & (!\div_clock|cnt\(2) & (\control|Freq_out\(13) & \div_clock|LessThan0~8_combout\))) # (!\div_clock|LessThan0~9_combout\ & ((\control|Freq_out\(13)) # ((!\div_clock|cnt\(2) & 
-- \div_clock|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(2),
	datab => \div_clock|LessThan0~9_combout\,
	datac => \control|Freq_out\(13),
	datad => \div_clock|LessThan0~8_combout\,
	combout => \div_clock|LessThan0~10_combout\);

-- Location: LCCOMB_X16_Y14_N8
\div_clock|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~11_combout\ = (!\div_clock|cnt\(8) & (!\div_clock|cnt\(7) & (!\div_clock|cnt\(6) & \div_clock|LessThan0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(8),
	datab => \div_clock|cnt\(7),
	datac => \div_clock|cnt\(6),
	datad => \div_clock|LessThan0~10_combout\,
	combout => \div_clock|LessThan0~11_combout\);

-- Location: LCCOMB_X16_Y14_N22
\div_clock|LessThan0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~12_combout\ = (\div_clock|LessThan0~7_combout\ & ((\control|Freq_out\(13) & ((\div_clock|LessThan0~11_combout\) # (!\div_clock|cnt\(9)))) # (!\control|Freq_out\(13) & (\div_clock|LessThan0~11_combout\ & !\div_clock|cnt\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(13),
	datab => \div_clock|LessThan0~7_combout\,
	datac => \div_clock|LessThan0~11_combout\,
	datad => \div_clock|cnt\(9),
	combout => \div_clock|LessThan0~12_combout\);

-- Location: LCCOMB_X16_Y14_N0
\div_clock|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~13_combout\ = (\control|Freq_out\(14) & (((\control|Freq_out\(13)) # (!\div_clock|cnt\(13))) # (!\div_clock|cnt\(14)))) # (!\control|Freq_out\(14) & (!\div_clock|cnt\(14) & (\control|Freq_out\(13) & !\div_clock|cnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(14),
	datab => \div_clock|cnt\(14),
	datac => \control|Freq_out\(13),
	datad => \div_clock|cnt\(13),
	combout => \div_clock|LessThan0~13_combout\);

-- Location: LCCOMB_X16_Y14_N18
\div_clock|LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~14_combout\ = (\control|Freq_out\(14) & (\div_clock|cnt\(14) & ((\div_clock|cnt\(13)) # (!\control|Freq_out\(13))))) # (!\control|Freq_out\(14) & ((\div_clock|cnt\(14)) # ((!\control|Freq_out\(13) & \div_clock|cnt\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \control|Freq_out\(14),
	datab => \div_clock|cnt\(14),
	datac => \control|Freq_out\(13),
	datad => \div_clock|cnt\(13),
	combout => \div_clock|LessThan0~14_combout\);

-- Location: LCCOMB_X16_Y14_N16
\div_clock|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~15_combout\ = (\div_clock|cnt\(12) & (((\div_clock|cnt\(11) & \div_clock|LessThan0~14_combout\)) # (!\div_clock|LessThan0~13_combout\))) # (!\div_clock|cnt\(12) & (!\div_clock|LessThan0~13_combout\ & ((\div_clock|cnt\(11)) # 
-- (\div_clock|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(12),
	datab => \div_clock|cnt\(11),
	datac => \div_clock|LessThan0~13_combout\,
	datad => \div_clock|LessThan0~14_combout\,
	combout => \div_clock|LessThan0~15_combout\);

-- Location: LCCOMB_X16_Y14_N6
\div_clock|LessThan0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~16_combout\ = (\control|Freq_out\(15) & ((\div_clock|cnt\(10) & ((\div_clock|LessThan0~15_combout\) # (!\div_clock|LessThan0~13_combout\))) # (!\div_clock|cnt\(10) & (!\div_clock|LessThan0~13_combout\ & 
-- \div_clock|LessThan0~15_combout\)))) # (!\control|Freq_out\(15) & (((\div_clock|LessThan0~13_combout\ & !\div_clock|LessThan0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|cnt\(10),
	datab => \control|Freq_out\(15),
	datac => \div_clock|LessThan0~13_combout\,
	datad => \div_clock|LessThan0~15_combout\,
	combout => \div_clock|LessThan0~16_combout\);

-- Location: LCCOMB_X16_Y14_N20
\div_clock|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~17_combout\ = (\div_clock|LessThan0~16_combout\ & ((!\div_clock|cnt\(15)))) # (!\div_clock|LessThan0~16_combout\ & (\control|Freq_out\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \control|Freq_out\(15),
	datac => \div_clock|cnt\(15),
	datad => \div_clock|LessThan0~16_combout\,
	combout => \div_clock|LessThan0~17_combout\);

-- Location: LCCOMB_X16_Y14_N30
\div_clock|LessThan0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|LessThan0~18_combout\ = (!\div_clock|cnt\(31) & (((!\div_clock|LessThan0~12_combout\ & !\div_clock|LessThan0~17_combout\)) # (!\div_clock|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|LessThan0~4_combout\,
	datab => \div_clock|cnt\(31),
	datac => \div_clock|LessThan0~12_combout\,
	datad => \div_clock|LessThan0~17_combout\,
	combout => \div_clock|LessThan0~18_combout\);

-- Location: LCCOMB_X17_Y15_N4
\div_clock|toggle~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_clock|toggle~0_combout\ = \div_clock|LessThan0~18_combout\ $ (\div_clock|toggle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_clock|LessThan0~18_combout\,
	datac => \div_clock|toggle~q\,
	combout => \div_clock|toggle~0_combout\);

-- Location: FF_X17_Y15_N5
\div_clock|toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_clock|toggle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_clock|toggle~q\);

ww_buzzer <= \buzzer~output_o\;
END structure;


