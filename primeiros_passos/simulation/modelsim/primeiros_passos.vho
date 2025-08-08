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

-- DATE "03/29/2022 17:54:28"

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

ENTITY 	leds_botoes2 IS
    PORT (
	clock : IN std_logic;
	key : IN std_logic_vector(4 DOWNTO 1);
	led : OUT std_logic_vector(4 DOWNTO 1)
	);
END leds_botoes2;

-- Design Ports Information
-- key[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[4]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF leds_botoes2 IS
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
SIGNAL ww_key : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_led : std_logic_vector(4 DOWNTO 1);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[2]~input_o\ : std_logic;
SIGNAL \key[3]~input_o\ : std_logic;
SIGNAL \key[4]~input_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \led[4]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \estado_atual.s2~feeder_combout\ : std_logic;
SIGNAL \key[1]~input_o\ : std_logic;
SIGNAL \gp|q1~feeder_combout\ : std_logic;
SIGNAL \gp|q1~q\ : std_logic;
SIGNAL \gp|q2~q\ : std_logic;
SIGNAL \gp|pulso~0_combout\ : std_logic;
SIGNAL \estado_atual.s2~q\ : std_logic;
SIGNAL \estado_atual.s3~feeder_combout\ : std_logic;
SIGNAL \estado_atual.s3~q\ : std_logic;
SIGNAL \estado_atual.s0~0_combout\ : std_logic;
SIGNAL \estado_atual.s0~q\ : std_logic;
SIGNAL \estado_atual.s1~0_combout\ : std_logic;
SIGNAL \estado_atual.s1~q\ : std_logic;
SIGNAL \led[1]~reg0feeder_combout\ : std_logic;
SIGNAL \led[1]~reg0_q\ : std_logic;
SIGNAL \led[2]~reg0feeder_combout\ : std_logic;
SIGNAL \led[2]~reg0_q\ : std_logic;
SIGNAL \led[3]~0_combout\ : std_logic;
SIGNAL \led[3]~reg0_q\ : std_logic;
SIGNAL \led[4]~reg0feeder_combout\ : std_logic;
SIGNAL \led[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led[4]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_led[1]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_key <= key;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_led[4]~reg0_q\ <= NOT \led[4]~reg0_q\;
\ALT_INV_led[3]~reg0_q\ <= NOT \led[3]~reg0_q\;
\ALT_INV_led[2]~reg0_q\ <= NOT \led[2]~reg0_q\;
\ALT_INV_led[1]~reg0_q\ <= NOT \led[1]~reg0_q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y10_N9
\led[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led[1]~reg0_q\,
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\led[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led[2]~reg0_q\,
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\led[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led[3]~reg0_q\,
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\led[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_led[4]~reg0_q\,
	devoe => ww_devoe,
	o => \led[4]~output_o\);

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

-- Location: LCCOMB_X33_Y9_N26
\estado_atual.s2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_atual.s2~feeder_combout\ = \estado_atual.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_atual.s1~q\,
	combout => \estado_atual.s2~feeder_combout\);

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

-- Location: LCCOMB_X33_Y9_N6
\gp|q1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \gp|q1~feeder_combout\ = \key[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key[1]~input_o\,
	combout => \gp|q1~feeder_combout\);

-- Location: FF_X33_Y9_N7
\gp|q1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \gp|q1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gp|q1~q\);

-- Location: FF_X33_Y9_N29
\gp|q2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \gp|q1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gp|q2~q\);

-- Location: LCCOMB_X33_Y9_N28
\gp|pulso~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gp|pulso~0_combout\ = (!\gp|q2~q\ & \gp|q1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gp|q2~q\,
	datad => \gp|q1~q\,
	combout => \gp|pulso~0_combout\);

-- Location: FF_X33_Y9_N27
\estado_atual.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \estado_atual.s2~feeder_combout\,
	ena => \gp|pulso~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.s2~q\);

-- Location: LCCOMB_X33_Y9_N30
\estado_atual.s3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_atual.s3~feeder_combout\ = \estado_atual.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.s2~q\,
	combout => \estado_atual.s3~feeder_combout\);

-- Location: FF_X33_Y9_N31
\estado_atual.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \estado_atual.s3~feeder_combout\,
	ena => \gp|pulso~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.s3~q\);

-- Location: LCCOMB_X33_Y9_N4
\estado_atual.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_atual.s0~0_combout\ = !\estado_atual.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.s3~q\,
	combout => \estado_atual.s0~0_combout\);

-- Location: FF_X33_Y9_N5
\estado_atual.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \estado_atual.s0~0_combout\,
	ena => \gp|pulso~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.s0~q\);

-- Location: LCCOMB_X33_Y9_N20
\estado_atual.s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado_atual.s1~0_combout\ = !\estado_atual.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.s0~q\,
	combout => \estado_atual.s1~0_combout\);

-- Location: FF_X33_Y9_N21
\estado_atual.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \estado_atual.s1~0_combout\,
	ena => \gp|pulso~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado_atual.s1~q\);

-- Location: LCCOMB_X33_Y9_N24
\led[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[1]~reg0feeder_combout\ = \estado_atual.s1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \estado_atual.s1~q\,
	combout => \led[1]~reg0feeder_combout\);

-- Location: FF_X33_Y9_N25
\led[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \led[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[1]~reg0_q\);

-- Location: LCCOMB_X33_Y9_N18
\led[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[2]~reg0feeder_combout\ = \estado_atual.s2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.s2~q\,
	combout => \led[2]~reg0feeder_combout\);

-- Location: FF_X33_Y9_N19
\led[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \led[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[2]~reg0_q\);

-- Location: LCCOMB_X33_Y9_N16
\led[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[3]~0_combout\ = !\estado_atual.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.s0~q\,
	combout => \led[3]~0_combout\);

-- Location: FF_X33_Y9_N17
\led[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \led[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[3]~reg0_q\);

-- Location: LCCOMB_X33_Y9_N10
\led[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led[4]~reg0feeder_combout\ = \estado_atual.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado_atual.s3~q\,
	combout => \led[4]~reg0feeder_combout\);

-- Location: FF_X33_Y9_N11
\led[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \led[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \led[4]~reg0_q\);

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

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;

ww_led(4) <= \led[4]~output_o\;
END structure;


