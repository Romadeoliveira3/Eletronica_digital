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

-- DATE "06/13/2025 15:13:48"

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

ENTITY 	ED_aula1 IS
    PORT (
	DIG : OUT std_logic_vector(4 DOWNTO 1);
	Clock : IN std_logic;
	SEG : OUT std_logic_vector(6 DOWNTO 0)
	);
END ED_aula1;

-- Design Ports Information
-- DIG[4]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[3]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[2]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIG[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEG[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ED_aula1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DIG : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_Clock : std_logic;
SIGNAL ww_SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst17|inst150~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DIG[4]~output_o\ : std_logic;
SIGNAL \DIG[3]~output_o\ : std_logic;
SIGNAL \DIG[2]~output_o\ : std_logic;
SIGNAL \DIG[1]~output_o\ : std_logic;
SIGNAL \SEG[6]~output_o\ : std_logic;
SIGNAL \SEG[5]~output_o\ : std_logic;
SIGNAL \SEG[4]~output_o\ : std_logic;
SIGNAL \SEG[3]~output_o\ : std_logic;
SIGNAL \SEG[2]~output_o\ : std_logic;
SIGNAL \SEG[1]~output_o\ : std_logic;
SIGNAL \SEG[0]~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst5|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita14~0_combout\ : std_logic;
SIGNAL \inst5|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ : std_logic;
SIGNAL \inst5|auto_generated|cout_actual~combout\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst5|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst5|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ : std_logic;
SIGNAL \inst5|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ : std_logic;
SIGNAL \inst5|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \inst6~feeder_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst1|inst~0_combout\ : std_logic;
SIGNAL \inst1|inst~feeder_combout\ : std_logic;
SIGNAL \inst1|inst~q\ : std_logic;
SIGNAL \inst1|inst15~0_combout\ : std_logic;
SIGNAL \inst1|inst15~q\ : std_logic;
SIGNAL \inst1|inst5~combout\ : std_logic;
SIGNAL \inst1|inst3~0_combout\ : std_logic;
SIGNAL \inst1|inst3~1_combout\ : std_logic;
SIGNAL \inst1|inst3~2_combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita8~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita9~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita10~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita11~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita11~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita12~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita12~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita13~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita13~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita14~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita14~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita15~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita15~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita16~combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita16~COUT\ : std_logic;
SIGNAL \inst4|auto_generated|counter_comb_bita16~0_combout\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst17|inst1~0_combout\ : std_logic;
SIGNAL \inst17|inst1~feeder_combout\ : std_logic;
SIGNAL \inst17|inst1~q\ : std_logic;
SIGNAL \inst17|inst11~0_combout\ : std_logic;
SIGNAL \inst17|inst11~q\ : std_logic;
SIGNAL \inst17|inst15~0_combout\ : std_logic;
SIGNAL \inst17|inst15~q\ : std_logic;
SIGNAL \inst17|inst19~0_combout\ : std_logic;
SIGNAL \inst17|inst19~q\ : std_logic;
SIGNAL \inst17|inst33~combout\ : std_logic;
SIGNAL \inst17|inst2~0_combout\ : std_logic;
SIGNAL \inst17|inst2~q\ : std_logic;
SIGNAL \inst17|inst13~0_combout\ : std_logic;
SIGNAL \inst17|inst13~q\ : std_logic;
SIGNAL \inst17|inst46~0_combout\ : std_logic;
SIGNAL \inst17|inst46~q\ : std_logic;
SIGNAL \inst17|inst21~0_combout\ : std_logic;
SIGNAL \inst17|inst21~q\ : std_logic;
SIGNAL \inst17|inst36~combout\ : std_logic;
SIGNAL \inst17|inst3~0_combout\ : std_logic;
SIGNAL \inst17|inst260~0_combout\ : std_logic;
SIGNAL \inst17|inst260~q\ : std_logic;
SIGNAL \inst17|inst51~0_combout\ : std_logic;
SIGNAL \inst17|inst51~q\ : std_logic;
SIGNAL \inst17|inst23~0_combout\ : std_logic;
SIGNAL \inst17|inst23~q\ : std_logic;
SIGNAL \inst17|inst150~combout\ : std_logic;
SIGNAL \inst17|inst150~clkctrl_outclk\ : std_logic;
SIGNAL \inst17|inst3~q\ : std_logic;
SIGNAL \inst15|inst43~1_combout\ : std_logic;
SIGNAL \inst15|inst43~0_combout\ : std_logic;
SIGNAL \inst15|inst43~2_combout\ : std_logic;
SIGNAL \inst17|inst4~0_combout\ : std_logic;
SIGNAL \inst17|inst25~0_combout\ : std_logic;
SIGNAL \inst17|inst25~q\ : std_logic;
SIGNAL \inst17|inst159~0_combout\ : std_logic;
SIGNAL \inst17|inst4~q\ : std_logic;
SIGNAL \inst17|inst60~0_combout\ : std_logic;
SIGNAL \inst17|inst60~q\ : std_logic;
SIGNAL \inst17|inst251~0_combout\ : std_logic;
SIGNAL \inst17|inst251~q\ : std_logic;
SIGNAL \inst15|inst43~4_combout\ : std_logic;
SIGNAL \inst15|inst43~3_combout\ : std_logic;
SIGNAL \inst15|inst43~5_combout\ : std_logic;
SIGNAL \inst15|inst43~6_combout\ : std_logic;
SIGNAL \inst15|inst37~4_combout\ : std_logic;
SIGNAL \inst15|inst37~3_combout\ : std_logic;
SIGNAL \inst15|inst37~5_combout\ : std_logic;
SIGNAL \inst15|inst37~0_combout\ : std_logic;
SIGNAL \inst15|inst37~1_combout\ : std_logic;
SIGNAL \inst15|inst37~2_combout\ : std_logic;
SIGNAL \inst15|inst37~6_combout\ : std_logic;
SIGNAL \inst15|inst31~4_combout\ : std_logic;
SIGNAL \inst15|inst31~6_combout\ : std_logic;
SIGNAL \inst15|inst9~0_combout\ : std_logic;
SIGNAL \inst15|inst31~8_combout\ : std_logic;
SIGNAL \inst15|inst31~5_combout\ : std_logic;
SIGNAL \inst15|inst31~7_combout\ : std_logic;
SIGNAL \inst15|inst25~1_combout\ : std_logic;
SIGNAL \inst15|inst25~2_combout\ : std_logic;
SIGNAL \inst15|inst25~0_combout\ : std_logic;
SIGNAL \inst15|inst25~3_combout\ : std_logic;
SIGNAL \inst15|inst25~4_combout\ : std_logic;
SIGNAL \inst15|inst19~5_combout\ : std_logic;
SIGNAL \inst15|inst19~1_combout\ : std_logic;
SIGNAL \inst15|inst19~0_combout\ : std_logic;
SIGNAL \inst15|inst19~2_combout\ : std_logic;
SIGNAL \inst15|inst19~3_combout\ : std_logic;
SIGNAL \inst15|inst19~4_combout\ : std_logic;
SIGNAL \inst15|inst19~6_combout\ : std_logic;
SIGNAL \inst15|inst13~5_combout\ : std_logic;
SIGNAL \inst15|inst13~4_combout\ : std_logic;
SIGNAL \inst15|inst13~2_combout\ : std_logic;
SIGNAL \inst15|inst13~3_combout\ : std_logic;
SIGNAL \inst15|inst13~6_combout\ : std_logic;
SIGNAL \inst15|inst13~9_combout\ : std_logic;
SIGNAL \inst15|inst11~0_combout\ : std_logic;
SIGNAL \inst15|inst13~7_combout\ : std_logic;
SIGNAL \inst15|inst13~8_combout\ : std_logic;
SIGNAL \inst15|inst7~2_combout\ : std_logic;
SIGNAL \inst15|inst7~3_combout\ : std_logic;
SIGNAL \inst15|inst7~4_combout\ : std_logic;
SIGNAL \inst15|inst7~0_combout\ : std_logic;
SIGNAL \inst15|inst7~1_combout\ : std_logic;
SIGNAL \inst15|inst7~5_combout\ : std_logic;
SIGNAL \inst15|inst7~6_combout\ : std_logic;
SIGNAL \inst4|auto_generated|counter_reg_bit\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst5|auto_generated|counter_reg_bit\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \inst1|ALT_INV_inst3~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst3~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst17|ALT_INV_inst150~clkctrl_outclk\ : std_logic;
SIGNAL \inst17|ALT_INV_inst36~combout\ : std_logic;
SIGNAL \inst17|ALT_INV_inst33~combout\ : std_logic;
SIGNAL \inst17|ALT_INV_inst159~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

DIG <= ww_DIG;
ww_Clock <= Clock;
SEG <= ww_SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst17|inst150~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst17|inst150~combout\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\inst1|ALT_INV_inst3~2_combout\ <= NOT \inst1|inst3~2_combout\;
\inst1|ALT_INV_inst3~1_combout\ <= NOT \inst1|inst3~1_combout\;
\inst1|ALT_INV_inst3~0_combout\ <= NOT \inst1|inst3~0_combout\;
\inst17|ALT_INV_inst150~clkctrl_outclk\ <= NOT \inst17|inst150~clkctrl_outclk\;
\inst17|ALT_INV_inst36~combout\ <= NOT \inst17|inst36~combout\;
\inst17|ALT_INV_inst33~combout\ <= NOT \inst17|inst33~combout\;
\inst17|ALT_INV_inst159~0_combout\ <= NOT \inst17|inst159~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X7_Y24_N2
\DIG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst5~combout\,
	devoe => ww_devoe,
	o => \DIG[4]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\DIG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst3~0_combout\,
	devoe => ww_devoe,
	o => \DIG[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\DIG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst3~1_combout\,
	devoe => ww_devoe,
	o => \DIG[2]~output_o\);

-- Location: IOOBUF_X13_Y24_N23
\DIG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst3~2_combout\,
	devoe => ww_devoe,
	o => \DIG[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\SEG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst43~6_combout\,
	devoe => ww_devoe,
	o => \SEG[6]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\SEG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst37~6_combout\,
	devoe => ww_devoe,
	o => \SEG[5]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\SEG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst31~7_combout\,
	devoe => ww_devoe,
	o => \SEG[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\SEG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst25~4_combout\,
	devoe => ww_devoe,
	o => \SEG[3]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\SEG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst19~6_combout\,
	devoe => ww_devoe,
	o => \SEG[2]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\SEG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst13~8_combout\,
	devoe => ww_devoe,
	o => \SEG[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\SEG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15|inst7~6_combout\,
	devoe => ww_devoe,
	o => \SEG[0]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y13_N0
\inst5|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita0~combout\ = \inst5|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst5|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst5|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst5|auto_generated|counter_comb_bita0~combout\,
	cout => \inst5|auto_generated|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X25_Y13_N0
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

-- Location: LCCOMB_X24_Y13_N2
\inst5|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita1~combout\ = (\inst5|auto_generated|counter_reg_bit\(1) & (!\inst5|auto_generated|counter_comb_bita0~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(1) & ((\inst5|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst5|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita0~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita1~combout\,
	cout => \inst5|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X24_Y13_N4
\inst5|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita2~combout\ = (\inst5|auto_generated|counter_reg_bit\(2) & (\inst5|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(2) & (!\inst5|auto_generated|counter_comb_bita1~COUT\ & 
-- VCC))
-- \inst5|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(2) & !\inst5|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita2~combout\,
	cout => \inst5|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X24_Y13_N5
\inst5|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X24_Y13_N6
\inst5|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita3~combout\ = (\inst5|auto_generated|counter_reg_bit\(3) & (!\inst5|auto_generated|counter_comb_bita2~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(3) & ((\inst5|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst5|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita2~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita3~combout\,
	cout => \inst5|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X24_Y13_N7
\inst5|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X24_Y13_N8
\inst5|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita4~combout\ = (\inst5|auto_generated|counter_reg_bit\(4) & (\inst5|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(4) & (!\inst5|auto_generated|counter_comb_bita3~COUT\ & 
-- VCC))
-- \inst5|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(4) & !\inst5|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita4~combout\,
	cout => \inst5|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X24_Y13_N9
\inst5|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X24_Y13_N10
\inst5|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita5~combout\ = (\inst5|auto_generated|counter_reg_bit\(5) & (!\inst5|auto_generated|counter_comb_bita4~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(5) & ((\inst5|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst5|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita4~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita5~combout\,
	cout => \inst5|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X24_Y13_N11
\inst5|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X24_Y13_N12
\inst5|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita6~combout\ = (\inst5|auto_generated|counter_reg_bit\(6) & (\inst5|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(6) & (!\inst5|auto_generated|counter_comb_bita5~COUT\ & 
-- VCC))
-- \inst5|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(6) & !\inst5|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita6~combout\,
	cout => \inst5|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X24_Y13_N13
\inst5|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X24_Y13_N14
\inst5|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita7~combout\ = (\inst5|auto_generated|counter_reg_bit\(7) & (!\inst5|auto_generated|counter_comb_bita6~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(7) & ((\inst5|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst5|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita6~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita7~combout\,
	cout => \inst5|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X24_Y13_N15
\inst5|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita7~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X24_Y13_N16
\inst5|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita8~combout\ = (\inst5|auto_generated|counter_reg_bit\(8) & (\inst5|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(8) & (!\inst5|auto_generated|counter_comb_bita7~COUT\ & 
-- VCC))
-- \inst5|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(8) & !\inst5|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita8~combout\,
	cout => \inst5|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X24_Y13_N17
\inst5|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita8~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X24_Y13_N18
\inst5|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita9~combout\ = (\inst5|auto_generated|counter_reg_bit\(9) & (!\inst5|auto_generated|counter_comb_bita8~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(9) & ((\inst5|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst5|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita8~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita9~combout\,
	cout => \inst5|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X24_Y13_N19
\inst5|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita9~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X24_Y13_N20
\inst5|auto_generated|counter_comb_bita10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita10~combout\ = (\inst5|auto_generated|counter_reg_bit\(10) & (\inst5|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(10) & (!\inst5|auto_generated|counter_comb_bita9~COUT\ 
-- & VCC))
-- \inst5|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(10) & !\inst5|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita10~combout\,
	cout => \inst5|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X24_Y13_N21
\inst5|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita10~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X24_Y13_N22
\inst5|auto_generated|counter_comb_bita11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita11~combout\ = (\inst5|auto_generated|counter_reg_bit\(11) & (!\inst5|auto_generated|counter_comb_bita10~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(11) & ((\inst5|auto_generated|counter_comb_bita10~COUT\) # 
-- (GND)))
-- \inst5|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita10~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita11~combout\,
	cout => \inst5|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X24_Y13_N23
\inst5|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita11~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X24_Y13_N24
\inst5|auto_generated|counter_comb_bita12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita12~combout\ = (\inst5|auto_generated|counter_reg_bit\(12) & (\inst5|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(12) & 
-- (!\inst5|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst5|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(12) & !\inst5|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita12~combout\,
	cout => \inst5|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X24_Y13_N25
\inst5|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita12~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X24_Y13_N26
\inst5|auto_generated|counter_comb_bita13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita13~combout\ = (\inst5|auto_generated|counter_reg_bit\(13) & (!\inst5|auto_generated|counter_comb_bita12~COUT\)) # (!\inst5|auto_generated|counter_reg_bit\(13) & ((\inst5|auto_generated|counter_comb_bita12~COUT\) # 
-- (GND)))
-- \inst5|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst5|auto_generated|counter_comb_bita12~COUT\) # (!\inst5|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita13~combout\,
	cout => \inst5|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X24_Y13_N27
\inst5|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita13~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X24_Y13_N28
\inst5|auto_generated|counter_comb_bita14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita14~combout\ = (\inst5|auto_generated|counter_reg_bit\(14) & (\inst5|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\inst5|auto_generated|counter_reg_bit\(14) & 
-- (!\inst5|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst5|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst5|auto_generated|counter_reg_bit\(14) & !\inst5|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst5|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita14~combout\,
	cout => \inst5|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X24_Y13_N29
\inst5|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita14~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X23_Y13_N22
\inst5|auto_generated|cmpr1|aneb_result_wire[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ = (!\inst5|auto_generated|counter_reg_bit\(11) & (\inst5|auto_generated|counter_reg_bit\(14) & (!\inst5|auto_generated|counter_reg_bit\(12) & \inst5|auto_generated|counter_reg_bit\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(11),
	datab => \inst5|auto_generated|counter_reg_bit\(14),
	datac => \inst5|auto_generated|counter_reg_bit\(12),
	datad => \inst5|auto_generated|counter_reg_bit\(13),
	combout => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\);

-- Location: LCCOMB_X24_Y13_N30
\inst5|auto_generated|counter_comb_bita14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|counter_comb_bita14~0_combout\ = \inst5|auto_generated|counter_comb_bita14~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst5|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst5|auto_generated|counter_comb_bita14~0_combout\);

-- Location: LCCOMB_X23_Y13_N24
\inst5|auto_generated|cmpr1|aneb_result_wire[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\ = (!\inst5|auto_generated|counter_reg_bit\(10) & (\inst5|auto_generated|counter_reg_bit\(8) & (\inst5|auto_generated|counter_reg_bit\(7) & !\inst5|auto_generated|counter_reg_bit\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(10),
	datab => \inst5|auto_generated|counter_reg_bit\(8),
	datac => \inst5|auto_generated|counter_reg_bit\(7),
	datad => \inst5|auto_generated|counter_reg_bit\(9),
	combout => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\);

-- Location: LCCOMB_X23_Y13_N6
\inst5|auto_generated|cout_actual\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|cout_actual~combout\ = (\inst5|auto_generated|counter_comb_bita14~0_combout\) # ((\inst5|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & (\inst5|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ & 
-- \inst5|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datab => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\,
	datac => \inst5|auto_generated|counter_comb_bita14~0_combout\,
	datad => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	combout => \inst5|auto_generated|cout_actual~combout\);

-- Location: FF_X24_Y13_N1
\inst5|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(0));

-- Location: FF_X24_Y13_N3
\inst5|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst5|auto_generated|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \inst5|auto_generated|cout_actual~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X23_Y13_N20
\inst5|auto_generated|cmpr1|aneb_result_wire[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ = (!\inst5|auto_generated|counter_reg_bit\(4) & (!\inst5|auto_generated|counter_reg_bit\(6) & (\inst5|auto_generated|counter_reg_bit\(5) & !\inst5|auto_generated|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(4),
	datab => \inst5|auto_generated|counter_reg_bit\(6),
	datac => \inst5|auto_generated|counter_reg_bit\(5),
	datad => \inst5|auto_generated|counter_reg_bit\(3),
	combout => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\);

-- Location: LCCOMB_X23_Y13_N16
\inst5|auto_generated|cmpr1|aneb_result_wire[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ = (\inst5|auto_generated|counter_reg_bit\(1) & (\inst5|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\ & (\inst5|auto_generated|counter_reg_bit\(0) & 
-- \inst5|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|auto_generated|counter_reg_bit\(1),
	datab => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~3_combout\,
	datac => \inst5|auto_generated|counter_reg_bit\(0),
	datad => \inst5|auto_generated|counter_reg_bit\(2),
	combout => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\);

-- Location: LCCOMB_X23_Y13_N18
\inst5|auto_generated|cmpr1|aneb_result_wire[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\ = (\inst5|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\ & \inst5|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~0_combout\,
	datad => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~1_combout\,
	combout => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\);

-- Location: LCCOMB_X23_Y13_N26
\inst6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = \inst6~q\ $ (((\inst5|auto_generated|counter_comb_bita14~0_combout\) # ((\inst5|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\ & \inst5|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~q\,
	datab => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~4_combout\,
	datac => \inst5|auto_generated|counter_comb_bita14~0_combout\,
	datad => \inst5|auto_generated|cmpr1|aneb_result_wire[0]~2_combout\,
	combout => \inst6~0_combout\);

-- Location: LCCOMB_X23_Y13_N28
\inst6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst6~feeder_combout\ = \inst6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6~0_combout\,
	combout => \inst6~feeder_combout\);

-- Location: FF_X23_Y13_N29
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X23_Y13_N30
\inst1|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst~0_combout\ = !\inst1|inst~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst~q\,
	combout => \inst1|inst~0_combout\);

-- Location: LCCOMB_X23_Y13_N10
\inst1|inst~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst~feeder_combout\ = \inst1|inst~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst~0_combout\,
	combout => \inst1|inst~feeder_combout\);

-- Location: FF_X23_Y13_N11
\inst1|inst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst6~q\,
	d => \inst1|inst~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst~q\);

-- Location: LCCOMB_X22_Y13_N24
\inst1|inst15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst15~0_combout\ = !\inst1|inst15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst15~q\,
	combout => \inst1|inst15~0_combout\);

-- Location: FF_X22_Y13_N25
\inst1|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst~q\,
	d => \inst1|inst15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst15~q\);

-- Location: LCCOMB_X22_Y12_N12
\inst1|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst5~combout\ = (\inst1|inst~q\) # (\inst1|inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst~q\,
	datad => \inst1|inst15~q\,
	combout => \inst1|inst5~combout\);

-- Location: LCCOMB_X19_Y13_N0
\inst1|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst3~0_combout\ = (\inst1|inst~q\ & \inst1|inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst~q\,
	datad => \inst1|inst15~q\,
	combout => \inst1|inst3~0_combout\);

-- Location: LCCOMB_X21_Y13_N8
\inst1|inst3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst3~1_combout\ = (!\inst1|inst~q\ & \inst1|inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datad => \inst1|inst15~q\,
	combout => \inst1|inst3~1_combout\);

-- Location: LCCOMB_X19_Y13_N2
\inst1|inst3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|inst3~2_combout\ = (\inst1|inst~q\ & !\inst1|inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|inst~q\,
	datad => \inst1|inst15~q\,
	combout => \inst1|inst3~2_combout\);

-- Location: LCCOMB_X18_Y14_N14
\inst4|auto_generated|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita0~combout\ = \inst4|auto_generated|counter_reg_bit\(0) $ (VCC)
-- \inst4|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst4|auto_generated|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(0),
	datad => VCC,
	combout => \inst4|auto_generated|counter_comb_bita0~combout\,
	cout => \inst4|auto_generated|counter_comb_bita0~COUT\);

-- Location: FF_X18_Y14_N15
\inst4|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X18_Y14_N16
\inst4|auto_generated|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita1~combout\ = (\inst4|auto_generated|counter_reg_bit\(1) & (!\inst4|auto_generated|counter_comb_bita0~COUT\)) # (!\inst4|auto_generated|counter_reg_bit\(1) & ((\inst4|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst4|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst4|auto_generated|counter_comb_bita0~COUT\) # (!\inst4|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(1),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita1~combout\,
	cout => \inst4|auto_generated|counter_comb_bita1~COUT\);

-- Location: FF_X18_Y14_N17
\inst4|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X18_Y14_N18
\inst4|auto_generated|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita2~combout\ = (\inst4|auto_generated|counter_reg_bit\(2) & (\inst4|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # (!\inst4|auto_generated|counter_reg_bit\(2) & (!\inst4|auto_generated|counter_comb_bita1~COUT\ & 
-- VCC))
-- \inst4|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst4|auto_generated|counter_reg_bit\(2) & !\inst4|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(2),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita2~combout\,
	cout => \inst4|auto_generated|counter_comb_bita2~COUT\);

-- Location: FF_X18_Y14_N19
\inst4|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X18_Y14_N20
\inst4|auto_generated|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita3~combout\ = (\inst4|auto_generated|counter_reg_bit\(3) & (!\inst4|auto_generated|counter_comb_bita2~COUT\)) # (!\inst4|auto_generated|counter_reg_bit\(3) & ((\inst4|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst4|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst4|auto_generated|counter_comb_bita2~COUT\) # (!\inst4|auto_generated|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(3),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita3~combout\,
	cout => \inst4|auto_generated|counter_comb_bita3~COUT\);

-- Location: FF_X18_Y14_N21
\inst4|auto_generated|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(3));

-- Location: LCCOMB_X18_Y14_N22
\inst4|auto_generated|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita4~combout\ = (\inst4|auto_generated|counter_reg_bit\(4) & (\inst4|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # (!\inst4|auto_generated|counter_reg_bit\(4) & (!\inst4|auto_generated|counter_comb_bita3~COUT\ & 
-- VCC))
-- \inst4|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst4|auto_generated|counter_reg_bit\(4) & !\inst4|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|counter_reg_bit\(4),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita4~combout\,
	cout => \inst4|auto_generated|counter_comb_bita4~COUT\);

-- Location: FF_X18_Y14_N23
\inst4|auto_generated|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita4~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(4));

-- Location: LCCOMB_X18_Y14_N24
\inst4|auto_generated|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita5~combout\ = (\inst4|auto_generated|counter_reg_bit\(5) & (!\inst4|auto_generated|counter_comb_bita4~COUT\)) # (!\inst4|auto_generated|counter_reg_bit\(5) & ((\inst4|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst4|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst4|auto_generated|counter_comb_bita4~COUT\) # (!\inst4|auto_generated|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(5),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita5~combout\,
	cout => \inst4|auto_generated|counter_comb_bita5~COUT\);

-- Location: FF_X18_Y14_N25
\inst4|auto_generated|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(5));

-- Location: LCCOMB_X18_Y14_N26
\inst4|auto_generated|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita6~combout\ = (\inst4|auto_generated|counter_reg_bit\(6) & (\inst4|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # (!\inst4|auto_generated|counter_reg_bit\(6) & (!\inst4|auto_generated|counter_comb_bita5~COUT\ & 
-- VCC))
-- \inst4|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst4|auto_generated|counter_reg_bit\(6) & !\inst4|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|counter_reg_bit\(6),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita6~combout\,
	cout => \inst4|auto_generated|counter_comb_bita6~COUT\);

-- Location: FF_X18_Y14_N27
\inst4|auto_generated|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(6));

-- Location: LCCOMB_X18_Y14_N28
\inst4|auto_generated|counter_comb_bita7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita7~combout\ = (\inst4|auto_generated|counter_reg_bit\(7) & (!\inst4|auto_generated|counter_comb_bita6~COUT\)) # (!\inst4|auto_generated|counter_reg_bit\(7) & ((\inst4|auto_generated|counter_comb_bita6~COUT\) # (GND)))
-- \inst4|auto_generated|counter_comb_bita7~COUT\ = CARRY((!\inst4|auto_generated|counter_comb_bita6~COUT\) # (!\inst4|auto_generated|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(7),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita7~combout\,
	cout => \inst4|auto_generated|counter_comb_bita7~COUT\);

-- Location: FF_X18_Y14_N29
\inst4|auto_generated|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita7~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(7));

-- Location: LCCOMB_X18_Y14_N30
\inst4|auto_generated|counter_comb_bita8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita8~combout\ = (\inst4|auto_generated|counter_reg_bit\(8) & (\inst4|auto_generated|counter_comb_bita7~COUT\ $ (GND))) # (!\inst4|auto_generated|counter_reg_bit\(8) & (!\inst4|auto_generated|counter_comb_bita7~COUT\ & 
-- VCC))
-- \inst4|auto_generated|counter_comb_bita8~COUT\ = CARRY((\inst4|auto_generated|counter_reg_bit\(8) & !\inst4|auto_generated|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|counter_reg_bit\(8),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita7~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita8~combout\,
	cout => \inst4|auto_generated|counter_comb_bita8~COUT\);

-- Location: FF_X18_Y14_N31
\inst4|auto_generated|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita8~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(8));

-- Location: LCCOMB_X18_Y13_N0
\inst4|auto_generated|counter_comb_bita9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita9~combout\ = (\inst4|auto_generated|counter_reg_bit\(9) & (!\inst4|auto_generated|counter_comb_bita8~COUT\)) # (!\inst4|auto_generated|counter_reg_bit\(9) & ((\inst4|auto_generated|counter_comb_bita8~COUT\) # (GND)))
-- \inst4|auto_generated|counter_comb_bita9~COUT\ = CARRY((!\inst4|auto_generated|counter_comb_bita8~COUT\) # (!\inst4|auto_generated|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(9),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita8~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita9~combout\,
	cout => \inst4|auto_generated|counter_comb_bita9~COUT\);

-- Location: FF_X18_Y13_N1
\inst4|auto_generated|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita9~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(9));

-- Location: LCCOMB_X18_Y13_N2
\inst4|auto_generated|counter_comb_bita10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita10~combout\ = (\inst4|auto_generated|counter_reg_bit\(10) & (\inst4|auto_generated|counter_comb_bita9~COUT\ $ (GND))) # (!\inst4|auto_generated|counter_reg_bit\(10) & (!\inst4|auto_generated|counter_comb_bita9~COUT\ 
-- & VCC))
-- \inst4|auto_generated|counter_comb_bita10~COUT\ = CARRY((\inst4|auto_generated|counter_reg_bit\(10) & !\inst4|auto_generated|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(10),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita9~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita10~combout\,
	cout => \inst4|auto_generated|counter_comb_bita10~COUT\);

-- Location: FF_X18_Y13_N3
\inst4|auto_generated|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita10~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(10));

-- Location: LCCOMB_X18_Y13_N4
\inst4|auto_generated|counter_comb_bita11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita11~combout\ = (\inst4|auto_generated|counter_reg_bit\(11) & (!\inst4|auto_generated|counter_comb_bita10~COUT\)) # (!\inst4|auto_generated|counter_reg_bit\(11) & ((\inst4|auto_generated|counter_comb_bita10~COUT\) # 
-- (GND)))
-- \inst4|auto_generated|counter_comb_bita11~COUT\ = CARRY((!\inst4|auto_generated|counter_comb_bita10~COUT\) # (!\inst4|auto_generated|counter_reg_bit\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(11),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita10~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita11~combout\,
	cout => \inst4|auto_generated|counter_comb_bita11~COUT\);

-- Location: FF_X18_Y13_N5
\inst4|auto_generated|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita11~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(11));

-- Location: LCCOMB_X18_Y13_N6
\inst4|auto_generated|counter_comb_bita12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita12~combout\ = (\inst4|auto_generated|counter_reg_bit\(12) & (\inst4|auto_generated|counter_comb_bita11~COUT\ $ (GND))) # (!\inst4|auto_generated|counter_reg_bit\(12) & 
-- (!\inst4|auto_generated|counter_comb_bita11~COUT\ & VCC))
-- \inst4|auto_generated|counter_comb_bita12~COUT\ = CARRY((\inst4|auto_generated|counter_reg_bit\(12) & !\inst4|auto_generated|counter_comb_bita11~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|counter_reg_bit\(12),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita11~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita12~combout\,
	cout => \inst4|auto_generated|counter_comb_bita12~COUT\);

-- Location: FF_X18_Y13_N7
\inst4|auto_generated|counter_reg_bit[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita12~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(12));

-- Location: LCCOMB_X18_Y13_N8
\inst4|auto_generated|counter_comb_bita13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita13~combout\ = (\inst4|auto_generated|counter_reg_bit\(13) & (!\inst4|auto_generated|counter_comb_bita12~COUT\)) # (!\inst4|auto_generated|counter_reg_bit\(13) & ((\inst4|auto_generated|counter_comb_bita12~COUT\) # 
-- (GND)))
-- \inst4|auto_generated|counter_comb_bita13~COUT\ = CARRY((!\inst4|auto_generated|counter_comb_bita12~COUT\) # (!\inst4|auto_generated|counter_reg_bit\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(13),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita12~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita13~combout\,
	cout => \inst4|auto_generated|counter_comb_bita13~COUT\);

-- Location: FF_X18_Y13_N9
\inst4|auto_generated|counter_reg_bit[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita13~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(13));

-- Location: LCCOMB_X18_Y13_N10
\inst4|auto_generated|counter_comb_bita14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita14~combout\ = (\inst4|auto_generated|counter_reg_bit\(14) & (\inst4|auto_generated|counter_comb_bita13~COUT\ $ (GND))) # (!\inst4|auto_generated|counter_reg_bit\(14) & 
-- (!\inst4|auto_generated|counter_comb_bita13~COUT\ & VCC))
-- \inst4|auto_generated|counter_comb_bita14~COUT\ = CARRY((\inst4|auto_generated|counter_reg_bit\(14) & !\inst4|auto_generated|counter_comb_bita13~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|counter_reg_bit\(14),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita13~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita14~combout\,
	cout => \inst4|auto_generated|counter_comb_bita14~COUT\);

-- Location: FF_X18_Y13_N11
\inst4|auto_generated|counter_reg_bit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita14~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(14));

-- Location: LCCOMB_X18_Y13_N12
\inst4|auto_generated|counter_comb_bita15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita15~combout\ = (\inst4|auto_generated|counter_reg_bit\(15) & (!\inst4|auto_generated|counter_comb_bita14~COUT\)) # (!\inst4|auto_generated|counter_reg_bit\(15) & ((\inst4|auto_generated|counter_comb_bita14~COUT\) # 
-- (GND)))
-- \inst4|auto_generated|counter_comb_bita15~COUT\ = CARRY((!\inst4|auto_generated|counter_comb_bita14~COUT\) # (!\inst4|auto_generated|counter_reg_bit\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|auto_generated|counter_reg_bit\(15),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita14~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita15~combout\,
	cout => \inst4|auto_generated|counter_comb_bita15~COUT\);

-- Location: FF_X18_Y13_N13
\inst4|auto_generated|counter_reg_bit[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(15));

-- Location: LCCOMB_X18_Y13_N14
\inst4|auto_generated|counter_comb_bita16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita16~combout\ = (\inst4|auto_generated|counter_reg_bit\(16) & (\inst4|auto_generated|counter_comb_bita15~COUT\ $ (GND))) # (!\inst4|auto_generated|counter_reg_bit\(16) & 
-- (!\inst4|auto_generated|counter_comb_bita15~COUT\ & VCC))
-- \inst4|auto_generated|counter_comb_bita16~COUT\ = CARRY((\inst4|auto_generated|counter_reg_bit\(16) & !\inst4|auto_generated|counter_comb_bita15~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|auto_generated|counter_reg_bit\(16),
	datad => VCC,
	cin => \inst4|auto_generated|counter_comb_bita15~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita16~combout\,
	cout => \inst4|auto_generated|counter_comb_bita16~COUT\);

-- Location: FF_X18_Y13_N15
\inst4|auto_generated|counter_reg_bit[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \inst4|auto_generated|counter_comb_bita16~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|auto_generated|counter_reg_bit\(16));

-- Location: LCCOMB_X18_Y13_N16
\inst4|auto_generated|counter_comb_bita16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|auto_generated|counter_comb_bita16~0_combout\ = \inst4|auto_generated|counter_comb_bita16~COUT\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst4|auto_generated|counter_comb_bita16~COUT\,
	combout => \inst4|auto_generated|counter_comb_bita16~0_combout\);

-- Location: LCCOMB_X18_Y13_N28
\inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = \inst~q\ $ (\inst4|auto_generated|counter_comb_bita16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst~q\,
	datad => \inst4|auto_generated|counter_comb_bita16~0_combout\,
	combout => \inst~0_combout\);

-- Location: FF_X18_Y13_N23
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \inst~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X18_Y13_N22
\inst17|inst1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst1~0_combout\ = !\inst17|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst17|inst1~q\,
	combout => \inst17|inst1~0_combout\);

-- Location: LCCOMB_X18_Y13_N24
\inst17|inst1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst1~feeder_combout\ = \inst17|inst1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|inst1~0_combout\,
	combout => \inst17|inst1~feeder_combout\);

-- Location: FF_X18_Y13_N25
\inst17|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst~q\,
	d => \inst17|inst1~feeder_combout\,
	clrn => \inst17|ALT_INV_inst33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst1~q\);

-- Location: LCCOMB_X18_Y13_N18
\inst17|inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst11~0_combout\ = \inst17|inst11~q\ $ (\inst17|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|inst11~q\,
	datad => \inst17|inst1~q\,
	combout => \inst17|inst11~0_combout\);

-- Location: FF_X18_Y13_N31
\inst17|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst~q\,
	asdata => \inst17|inst11~0_combout\,
	clrn => \inst17|ALT_INV_inst33~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst11~q\);

-- Location: LCCOMB_X18_Y13_N26
\inst17|inst15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst15~0_combout\ = \inst17|inst15~q\ $ (((\inst17|inst11~q\ & \inst17|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst11~q\,
	datab => \inst17|inst1~q\,
	datac => \inst17|inst15~q\,
	combout => \inst17|inst15~0_combout\);

-- Location: FF_X18_Y13_N27
\inst17|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst~q\,
	d => \inst17|inst15~0_combout\,
	clrn => \inst17|ALT_INV_inst33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst15~q\);

-- Location: LCCOMB_X18_Y13_N20
\inst17|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst19~0_combout\ = \inst17|inst19~q\ $ (((\inst17|inst11~q\ & (\inst17|inst1~q\ & \inst17|inst15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst11~q\,
	datab => \inst17|inst1~q\,
	datac => \inst17|inst19~q\,
	datad => \inst17|inst15~q\,
	combout => \inst17|inst19~0_combout\);

-- Location: FF_X18_Y13_N21
\inst17|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst~q\,
	d => \inst17|inst19~0_combout\,
	clrn => \inst17|ALT_INV_inst33~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst19~q\);

-- Location: LCCOMB_X18_Y13_N30
\inst17|inst33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst33~combout\ = LCELL((!\inst17|inst15~q\ & (\inst17|inst19~q\ & (\inst17|inst11~q\ & !\inst17|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst15~q\,
	datab => \inst17|inst19~q\,
	datac => \inst17|inst11~q\,
	datad => \inst17|inst1~q\,
	combout => \inst17|inst33~combout\);

-- Location: LCCOMB_X21_Y12_N28
\inst17|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst2~0_combout\ = !\inst17|inst2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|inst2~q\,
	combout => \inst17|inst2~0_combout\);

-- Location: FF_X21_Y12_N29
\inst17|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst33~combout\,
	d => \inst17|inst2~0_combout\,
	clrn => \inst17|ALT_INV_inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst2~q\);

-- Location: LCCOMB_X21_Y12_N18
\inst17|inst13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst13~0_combout\ = \inst17|inst13~q\ $ (\inst17|inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|inst13~q\,
	datad => \inst17|inst2~q\,
	combout => \inst17|inst13~0_combout\);

-- Location: FF_X21_Y12_N5
\inst17|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst33~combout\,
	asdata => \inst17|inst13~0_combout\,
	clrn => \inst17|ALT_INV_inst36~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst13~q\);

-- Location: LCCOMB_X21_Y12_N30
\inst17|inst46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst46~0_combout\ = \inst17|inst46~q\ $ (((\inst17|inst2~q\ & \inst17|inst13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|inst2~q\,
	datac => \inst17|inst46~q\,
	datad => \inst17|inst13~q\,
	combout => \inst17|inst46~0_combout\);

-- Location: FF_X21_Y12_N31
\inst17|inst46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst33~combout\,
	d => \inst17|inst46~0_combout\,
	clrn => \inst17|ALT_INV_inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst46~q\);

-- Location: LCCOMB_X21_Y12_N8
\inst17|inst21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst21~0_combout\ = \inst17|inst21~q\ $ (((\inst17|inst46~q\ & (\inst17|inst2~q\ & \inst17|inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst46~q\,
	datab => \inst17|inst2~q\,
	datac => \inst17|inst21~q\,
	datad => \inst17|inst13~q\,
	combout => \inst17|inst21~0_combout\);

-- Location: FF_X21_Y12_N9
\inst17|inst21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst33~combout\,
	d => \inst17|inst21~0_combout\,
	clrn => \inst17|ALT_INV_inst36~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst21~q\);

-- Location: LCCOMB_X21_Y12_N6
\inst17|inst36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst36~combout\ = LCELL((!\inst17|inst46~q\ & (\inst17|inst21~q\ & (\inst17|inst13~q\ & !\inst17|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst46~q\,
	datab => \inst17|inst21~q\,
	datac => \inst17|inst13~q\,
	datad => \inst17|inst2~q\,
	combout => \inst17|inst36~combout\);

-- Location: LCCOMB_X33_Y12_N10
\inst17|inst3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst3~0_combout\ = !\inst17|inst3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|inst3~q\,
	combout => \inst17|inst3~0_combout\);

-- Location: LCCOMB_X33_Y12_N30
\inst17|inst260~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst260~0_combout\ = \inst17|inst3~q\ $ (\inst17|inst260~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|inst3~q\,
	datac => \inst17|inst260~q\,
	combout => \inst17|inst260~0_combout\);

-- Location: FF_X33_Y12_N31
\inst17|inst260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst36~combout\,
	d => \inst17|inst260~0_combout\,
	clrn => \inst17|ALT_INV_inst150~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst260~q\);

-- Location: LCCOMB_X33_Y12_N26
\inst17|inst51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst51~0_combout\ = \inst17|inst51~q\ $ (((\inst17|inst260~q\ & \inst17|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst260~q\,
	datab => \inst17|inst3~q\,
	datac => \inst17|inst51~q\,
	combout => \inst17|inst51~0_combout\);

-- Location: FF_X33_Y12_N27
\inst17|inst51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst36~combout\,
	d => \inst17|inst51~0_combout\,
	clrn => \inst17|ALT_INV_inst150~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst51~q\);

-- Location: LCCOMB_X33_Y12_N24
\inst17|inst23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst23~0_combout\ = \inst17|inst23~q\ $ (((\inst17|inst260~q\ & (\inst17|inst51~q\ & \inst17|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst260~q\,
	datab => \inst17|inst23~q\,
	datac => \inst17|inst51~q\,
	datad => \inst17|inst3~q\,
	combout => \inst17|inst23~0_combout\);

-- Location: FF_X33_Y12_N13
\inst17|inst23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst36~combout\,
	asdata => \inst17|inst23~0_combout\,
	clrn => \inst17|ALT_INV_inst150~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst23~q\);

-- Location: LCCOMB_X33_Y12_N14
\inst17|inst150\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst150~combout\ = LCELL((!\inst17|inst3~q\ & (\inst17|inst260~q\ & (!\inst17|inst51~q\ & \inst17|inst23~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst3~q\,
	datab => \inst17|inst260~q\,
	datac => \inst17|inst51~q\,
	datad => \inst17|inst23~q\,
	combout => \inst17|inst150~combout\);

-- Location: CLKCTRL_G5
\inst17|inst150~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|inst150~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|inst150~clkctrl_outclk\);

-- Location: FF_X33_Y12_N11
\inst17|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|inst36~combout\,
	d => \inst17|inst3~0_combout\,
	clrn => \inst17|ALT_INV_inst150~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst3~q\);

-- Location: LCCOMB_X33_Y12_N12
\inst15|inst43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst43~1_combout\ = (\inst17|inst260~q\ & (\inst17|inst3~q\ & ((\inst17|inst51~q\)))) # (!\inst17|inst260~q\ & (((!\inst17|inst23~q\ & !\inst17|inst51~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst3~q\,
	datab => \inst17|inst260~q\,
	datac => \inst17|inst23~q\,
	datad => \inst17|inst51~q\,
	combout => \inst15|inst43~1_combout\);

-- Location: LCCOMB_X19_Y13_N4
\inst15|inst43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst43~0_combout\ = (\inst17|inst15~q\ & (((\inst17|inst1~q\ & \inst17|inst11~q\)))) # (!\inst17|inst15~q\ & (!\inst17|inst19~q\ & ((!\inst17|inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst15~q\,
	datab => \inst17|inst19~q\,
	datac => \inst17|inst1~q\,
	datad => \inst17|inst11~q\,
	combout => \inst15|inst43~0_combout\);

-- Location: LCCOMB_X19_Y13_N22
\inst15|inst43~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst43~2_combout\ = (\inst15|inst43~1_combout\ & ((\inst1|inst3~0_combout\) # ((\inst1|inst3~2_combout\ & \inst15|inst43~0_combout\)))) # (!\inst15|inst43~1_combout\ & (\inst1|inst3~2_combout\ & (\inst15|inst43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst43~1_combout\,
	datab => \inst1|inst3~2_combout\,
	datac => \inst15|inst43~0_combout\,
	datad => \inst1|inst3~0_combout\,
	combout => \inst15|inst43~2_combout\);

-- Location: LCCOMB_X22_Y12_N14
\inst17|inst4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst4~0_combout\ = !\inst17|inst4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|inst4~q\,
	combout => \inst17|inst4~0_combout\);

-- Location: LCCOMB_X22_Y12_N4
\inst17|inst25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst25~0_combout\ = \inst17|inst25~q\ $ (((\inst17|inst251~q\ & (\inst17|inst60~q\ & \inst17|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst251~q\,
	datab => \inst17|inst60~q\,
	datac => \inst17|inst25~q\,
	datad => \inst17|inst4~q\,
	combout => \inst17|inst25~0_combout\);

-- Location: FF_X22_Y12_N5
\inst17|inst25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|ALT_INV_inst150~clkctrl_outclk\,
	d => \inst17|inst25~0_combout\,
	clrn => \inst17|ALT_INV_inst159~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst25~q\);

-- Location: LCCOMB_X22_Y12_N16
\inst17|inst159~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst159~0_combout\ = (!\inst17|inst4~q\ & (\inst17|inst25~q\ & (\inst17|inst60~q\ & !\inst17|inst251~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst4~q\,
	datab => \inst17|inst25~q\,
	datac => \inst17|inst60~q\,
	datad => \inst17|inst251~q\,
	combout => \inst17|inst159~0_combout\);

-- Location: FF_X22_Y12_N15
\inst17|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|ALT_INV_inst150~clkctrl_outclk\,
	d => \inst17|inst4~0_combout\,
	clrn => \inst17|ALT_INV_inst159~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst4~q\);

-- Location: LCCOMB_X22_Y12_N8
\inst17|inst60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst60~0_combout\ = \inst17|inst60~q\ $ (\inst17|inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|inst60~q\,
	datad => \inst17|inst4~q\,
	combout => \inst17|inst60~0_combout\);

-- Location: FF_X22_Y12_N9
\inst17|inst60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|ALT_INV_inst150~clkctrl_outclk\,
	d => \inst17|inst60~0_combout\,
	clrn => \inst17|ALT_INV_inst159~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst60~q\);

-- Location: LCCOMB_X22_Y12_N6
\inst17|inst251~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|inst251~0_combout\ = \inst17|inst251~q\ $ (((\inst17|inst60~q\ & \inst17|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|inst60~q\,
	datac => \inst17|inst251~q\,
	datad => \inst17|inst4~q\,
	combout => \inst17|inst251~0_combout\);

-- Location: FF_X22_Y12_N7
\inst17|inst251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|ALT_INV_inst150~clkctrl_outclk\,
	d => \inst17|inst251~0_combout\,
	clrn => \inst17|ALT_INV_inst159~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst251~q\);

-- Location: LCCOMB_X21_Y12_N0
\inst15|inst43~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst43~4_combout\ = (\inst17|inst251~q\ & (\inst17|inst4~q\ & (\inst17|inst60~q\))) # (!\inst17|inst251~q\ & (((!\inst17|inst60~q\ & !\inst17|inst25~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst251~q\,
	datab => \inst17|inst4~q\,
	datac => \inst17|inst60~q\,
	datad => \inst17|inst25~q\,
	combout => \inst15|inst43~4_combout\);

-- Location: LCCOMB_X21_Y12_N4
\inst15|inst43~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst43~3_combout\ = (\inst17|inst46~q\ & (((\inst17|inst13~q\ & \inst17|inst2~q\)))) # (!\inst17|inst46~q\ & (!\inst17|inst21~q\ & (!\inst17|inst13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst21~q\,
	datab => \inst17|inst46~q\,
	datac => \inst17|inst13~q\,
	datad => \inst17|inst2~q\,
	combout => \inst15|inst43~3_combout\);

-- Location: LCCOMB_X21_Y13_N6
\inst15|inst43~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst43~5_combout\ = (\inst1|inst3~1_combout\ & ((\inst15|inst43~3_combout\) # ((\inst15|inst43~4_combout\ & !\inst1|inst5~combout\)))) # (!\inst1|inst3~1_combout\ & (\inst15|inst43~4_combout\ & ((!\inst1|inst5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~1_combout\,
	datab => \inst15|inst43~4_combout\,
	datac => \inst15|inst43~3_combout\,
	datad => \inst1|inst5~combout\,
	combout => \inst15|inst43~5_combout\);

-- Location: LCCOMB_X19_Y13_N12
\inst15|inst43~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst43~6_combout\ = (\inst15|inst43~2_combout\) # (\inst15|inst43~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst43~2_combout\,
	datad => \inst15|inst43~5_combout\,
	combout => \inst15|inst43~6_combout\);

-- Location: LCCOMB_X21_Y12_N22
\inst15|inst37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst37~4_combout\ = (\inst17|inst13~q\ & (((\inst17|inst2~q\) # (!\inst17|inst46~q\)))) # (!\inst17|inst13~q\ & (!\inst17|inst21~q\ & (!\inst17|inst46~q\ & \inst17|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst21~q\,
	datab => \inst17|inst13~q\,
	datac => \inst17|inst46~q\,
	datad => \inst17|inst2~q\,
	combout => \inst15|inst37~4_combout\);

-- Location: LCCOMB_X19_Y13_N14
\inst15|inst37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst37~3_combout\ = (\inst17|inst15~q\ & (((\inst17|inst1~q\ & \inst17|inst11~q\)))) # (!\inst17|inst15~q\ & ((\inst17|inst11~q\) # ((!\inst17|inst19~q\ & \inst17|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst15~q\,
	datab => \inst17|inst19~q\,
	datac => \inst17|inst1~q\,
	datad => \inst17|inst11~q\,
	combout => \inst15|inst37~3_combout\);

-- Location: LCCOMB_X21_Y13_N18
\inst15|inst37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst37~5_combout\ = (\inst15|inst37~4_combout\ & ((\inst1|inst3~1_combout\) # ((\inst1|inst3~2_combout\ & \inst15|inst37~3_combout\)))) # (!\inst15|inst37~4_combout\ & (\inst1|inst3~2_combout\ & (\inst15|inst37~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst37~4_combout\,
	datab => \inst1|inst3~2_combout\,
	datac => \inst15|inst37~3_combout\,
	datad => \inst1|inst3~1_combout\,
	combout => \inst15|inst37~5_combout\);

-- Location: LCCOMB_X33_Y12_N22
\inst15|inst37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst37~0_combout\ = (\inst17|inst260~q\ & (((\inst17|inst3~q\) # (!\inst17|inst51~q\)))) # (!\inst17|inst260~q\ & (!\inst17|inst23~q\ & (\inst17|inst3~q\ & !\inst17|inst51~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst23~q\,
	datab => \inst17|inst260~q\,
	datac => \inst17|inst3~q\,
	datad => \inst17|inst51~q\,
	combout => \inst15|inst37~0_combout\);

-- Location: LCCOMB_X22_Y12_N18
\inst15|inst37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst37~1_combout\ = (\inst17|inst60~q\ & ((\inst17|inst4~q\) # ((!\inst17|inst251~q\)))) # (!\inst17|inst60~q\ & (\inst17|inst4~q\ & (!\inst17|inst251~q\ & !\inst17|inst25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst60~q\,
	datab => \inst17|inst4~q\,
	datac => \inst17|inst251~q\,
	datad => \inst17|inst25~q\,
	combout => \inst15|inst37~1_combout\);

-- Location: LCCOMB_X21_Y13_N28
\inst15|inst37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst37~2_combout\ = (\inst15|inst37~0_combout\ & ((\inst1|inst3~0_combout\) # ((\inst15|inst37~1_combout\ & !\inst1|inst5~combout\)))) # (!\inst15|inst37~0_combout\ & (((\inst15|inst37~1_combout\ & !\inst1|inst5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst37~0_combout\,
	datab => \inst1|inst3~0_combout\,
	datac => \inst15|inst37~1_combout\,
	datad => \inst1|inst5~combout\,
	combout => \inst15|inst37~2_combout\);

-- Location: LCCOMB_X21_Y13_N0
\inst15|inst37~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst37~6_combout\ = (\inst15|inst37~5_combout\) # (\inst15|inst37~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst37~5_combout\,
	datad => \inst15|inst37~2_combout\,
	combout => \inst15|inst37~6_combout\);

-- Location: LCCOMB_X33_Y12_N16
\inst15|inst31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst31~4_combout\ = (\inst1|inst3~0_combout\ & ((\inst17|inst3~q\) # ((!\inst17|inst260~q\ & \inst17|inst51~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst3~q\,
	datab => \inst1|inst3~0_combout\,
	datac => \inst17|inst260~q\,
	datad => \inst17|inst51~q\,
	combout => \inst15|inst31~4_combout\);

-- Location: LCCOMB_X21_Y12_N2
\inst15|inst31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst31~6_combout\ = (\inst1|inst3~1_combout\ & ((\inst17|inst2~q\) # ((!\inst17|inst13~q\ & \inst17|inst46~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~1_combout\,
	datab => \inst17|inst13~q\,
	datac => \inst17|inst46~q\,
	datad => \inst17|inst2~q\,
	combout => \inst15|inst31~6_combout\);

-- Location: LCCOMB_X19_Y13_N24
\inst15|inst9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst9~0_combout\ = (\inst17|inst15~q\ & !\inst17|inst11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|inst15~q\,
	datad => \inst17|inst11~q\,
	combout => \inst15|inst9~0_combout\);

-- Location: LCCOMB_X19_Y13_N20
\inst15|inst31~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst31~8_combout\ = (\inst1|inst~q\ & (!\inst1|inst15~q\ & ((\inst17|inst1~q\) # (\inst15|inst9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst1~q\,
	datab => \inst15|inst9~0_combout\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst15~q\,
	combout => \inst15|inst31~8_combout\);

-- Location: LCCOMB_X22_Y12_N20
\inst15|inst31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst31~5_combout\ = (!\inst1|inst5~combout\ & ((\inst17|inst4~q\) # ((!\inst17|inst60~q\ & \inst17|inst251~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst60~q\,
	datab => \inst17|inst4~q\,
	datac => \inst17|inst251~q\,
	datad => \inst1|inst5~combout\,
	combout => \inst15|inst31~5_combout\);

-- Location: LCCOMB_X23_Y12_N24
\inst15|inst31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst31~7_combout\ = (\inst15|inst31~4_combout\) # ((\inst15|inst31~6_combout\) # ((\inst15|inst31~8_combout\) # (\inst15|inst31~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst31~4_combout\,
	datab => \inst15|inst31~6_combout\,
	datac => \inst15|inst31~8_combout\,
	datad => \inst15|inst31~5_combout\,
	combout => \inst15|inst31~7_combout\);

-- Location: LCCOMB_X33_Y12_N20
\inst15|inst25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst25~1_combout\ = (\inst1|inst3~0_combout\ & ((\inst17|inst3~q\ & (\inst17|inst260~q\ $ (!\inst17|inst51~q\))) # (!\inst17|inst3~q\ & (!\inst17|inst260~q\ & \inst17|inst51~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst3~q\,
	datab => \inst1|inst3~0_combout\,
	datac => \inst17|inst260~q\,
	datad => \inst17|inst51~q\,
	combout => \inst15|inst25~1_combout\);

-- Location: LCCOMB_X22_Y12_N26
\inst15|inst25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst25~2_combout\ = (!\inst1|inst5~combout\ & ((\inst17|inst60~q\ & (\inst17|inst4~q\ & \inst17|inst251~q\)) # (!\inst17|inst60~q\ & (\inst17|inst4~q\ $ (\inst17|inst251~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst60~q\,
	datab => \inst17|inst4~q\,
	datac => \inst17|inst251~q\,
	datad => \inst1|inst5~combout\,
	combout => \inst15|inst25~2_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst15|inst25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst25~0_combout\ = (\inst1|inst3~2_combout\ & ((\inst17|inst15~q\ & (\inst17|inst11~q\ $ (!\inst17|inst1~q\))) # (!\inst17|inst15~q\ & (!\inst17|inst11~q\ & \inst17|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst15~q\,
	datab => \inst17|inst11~q\,
	datac => \inst17|inst1~q\,
	datad => \inst1|inst3~2_combout\,
	combout => \inst15|inst25~0_combout\);

-- Location: LCCOMB_X21_Y12_N20
\inst15|inst25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst25~3_combout\ = (\inst1|inst3~1_combout\ & ((\inst17|inst13~q\ & (\inst17|inst46~q\ & \inst17|inst2~q\)) # (!\inst17|inst13~q\ & (\inst17|inst46~q\ $ (\inst17|inst2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~1_combout\,
	datab => \inst17|inst13~q\,
	datac => \inst17|inst46~q\,
	datad => \inst17|inst2~q\,
	combout => \inst15|inst25~3_combout\);

-- Location: LCCOMB_X21_Y12_N26
\inst15|inst25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst25~4_combout\ = (\inst15|inst25~1_combout\) # ((\inst15|inst25~2_combout\) # ((\inst15|inst25~0_combout\) # (\inst15|inst25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst25~1_combout\,
	datab => \inst15|inst25~2_combout\,
	datac => \inst15|inst25~0_combout\,
	datad => \inst15|inst25~3_combout\,
	combout => \inst15|inst25~4_combout\);

-- Location: LCCOMB_X21_Y12_N14
\inst15|inst19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst19~5_combout\ = (\inst17|inst46~q\ & (\inst17|inst21~q\)) # (!\inst17|inst46~q\ & (((\inst17|inst13~q\ & !\inst17|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst21~q\,
	datab => \inst17|inst13~q\,
	datac => \inst17|inst46~q\,
	datad => \inst17|inst2~q\,
	combout => \inst15|inst19~5_combout\);

-- Location: LCCOMB_X33_Y12_N8
\inst15|inst19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst19~1_combout\ = (\inst17|inst51~q\ & (\inst17|inst23~q\)) # (!\inst17|inst51~q\ & (((\inst17|inst260~q\ & !\inst17|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst23~q\,
	datab => \inst17|inst260~q\,
	datac => \inst17|inst3~q\,
	datad => \inst17|inst51~q\,
	combout => \inst15|inst19~1_combout\);

-- Location: LCCOMB_X19_Y13_N28
\inst15|inst19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst19~0_combout\ = (\inst17|inst15~q\ & (\inst17|inst19~q\)) # (!\inst17|inst15~q\ & (((!\inst17|inst1~q\ & \inst17|inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst15~q\,
	datab => \inst17|inst19~q\,
	datac => \inst17|inst1~q\,
	datad => \inst17|inst11~q\,
	combout => \inst15|inst19~0_combout\);

-- Location: LCCOMB_X19_Y13_N30
\inst15|inst19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst19~2_combout\ = (\inst15|inst19~1_combout\ & ((\inst1|inst3~0_combout\) # ((\inst1|inst3~2_combout\ & \inst15|inst19~0_combout\)))) # (!\inst15|inst19~1_combout\ & (((\inst1|inst3~2_combout\ & \inst15|inst19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst19~1_combout\,
	datab => \inst1|inst3~0_combout\,
	datac => \inst1|inst3~2_combout\,
	datad => \inst15|inst19~0_combout\,
	combout => \inst15|inst19~2_combout\);

-- Location: LCCOMB_X22_Y12_N24
\inst15|inst19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst19~3_combout\ = (\inst17|inst251~q\ & (((\inst17|inst25~q\)))) # (!\inst17|inst251~q\ & (\inst17|inst60~q\ & (!\inst17|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst60~q\,
	datab => \inst17|inst4~q\,
	datac => \inst17|inst251~q\,
	datad => \inst17|inst25~q\,
	combout => \inst15|inst19~3_combout\);

-- Location: LCCOMB_X22_Y12_N10
\inst15|inst19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst19~4_combout\ = (\inst15|inst19~3_combout\ & (!\inst1|inst~q\ & !\inst1|inst15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst19~3_combout\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst15~q\,
	combout => \inst15|inst19~4_combout\);

-- Location: LCCOMB_X22_Y12_N0
\inst15|inst19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst19~6_combout\ = (\inst15|inst19~2_combout\) # ((\inst15|inst19~4_combout\) # ((\inst15|inst19~5_combout\ & \inst1|inst3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst19~5_combout\,
	datab => \inst1|inst3~1_combout\,
	datac => \inst15|inst19~2_combout\,
	datad => \inst15|inst19~4_combout\,
	combout => \inst15|inst19~6_combout\);

-- Location: LCCOMB_X22_Y12_N22
\inst15|inst13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst13~5_combout\ = (\inst17|inst251~q\ & (!\inst1|inst5~combout\ & (\inst17|inst60~q\ $ (\inst17|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst60~q\,
	datab => \inst17|inst4~q\,
	datac => \inst17|inst251~q\,
	datad => \inst1|inst5~combout\,
	combout => \inst15|inst13~5_combout\);

-- Location: LCCOMB_X33_Y12_N18
\inst15|inst13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst13~4_combout\ = (\inst1|inst3~0_combout\ & (\inst17|inst51~q\ & (\inst17|inst3~q\ $ (\inst17|inst260~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst3~q\,
	datab => \inst1|inst3~0_combout\,
	datac => \inst17|inst260~q\,
	datad => \inst17|inst51~q\,
	combout => \inst15|inst13~4_combout\);

-- Location: LCCOMB_X19_Y13_N16
\inst15|inst13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst13~2_combout\ = (\inst17|inst11~q\ & ((\inst17|inst19~q\) # ((\inst17|inst15~q\ & !\inst17|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst15~q\,
	datab => \inst17|inst19~q\,
	datac => \inst17|inst1~q\,
	datad => \inst17|inst11~q\,
	combout => \inst15|inst13~2_combout\);

-- Location: LCCOMB_X19_Y13_N10
\inst15|inst13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst13~3_combout\ = (\inst1|inst3~2_combout\ & ((\inst15|inst13~2_combout\) # ((\inst15|inst9~0_combout\ & \inst17|inst1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst3~2_combout\,
	datab => \inst15|inst9~0_combout\,
	datac => \inst17|inst1~q\,
	datad => \inst15|inst13~2_combout\,
	combout => \inst15|inst13~3_combout\);

-- Location: LCCOMB_X21_Y12_N16
\inst15|inst13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst13~6_combout\ = (\inst17|inst13~q\ & ((\inst17|inst21~q\) # ((\inst17|inst46~q\ & !\inst17|inst2~q\)))) # (!\inst17|inst13~q\ & (((\inst17|inst46~q\ & \inst17|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst21~q\,
	datab => \inst17|inst13~q\,
	datac => \inst17|inst46~q\,
	datad => \inst17|inst2~q\,
	combout => \inst15|inst13~6_combout\);

-- Location: LCCOMB_X22_Y12_N30
\inst15|inst13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst13~9_combout\ = (\inst17|inst60~q\ & (!\inst1|inst15~q\ & (!\inst1|inst~q\ & \inst17|inst25~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst60~q\,
	datab => \inst1|inst15~q\,
	datac => \inst1|inst~q\,
	datad => \inst17|inst25~q\,
	combout => \inst15|inst13~9_combout\);

-- Location: LCCOMB_X23_Y12_N26
\inst15|inst11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst11~0_combout\ = (\inst1|inst~q\ & (\inst17|inst23~q\ & (\inst1|inst15~q\ & \inst17|inst260~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst~q\,
	datab => \inst17|inst23~q\,
	datac => \inst1|inst15~q\,
	datad => \inst17|inst260~q\,
	combout => \inst15|inst11~0_combout\);

-- Location: LCCOMB_X22_Y12_N28
\inst15|inst13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst13~7_combout\ = (\inst15|inst13~9_combout\) # ((\inst15|inst11~0_combout\) # ((\inst15|inst13~6_combout\ & \inst1|inst3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst13~6_combout\,
	datab => \inst1|inst3~1_combout\,
	datac => \inst15|inst13~9_combout\,
	datad => \inst15|inst11~0_combout\,
	combout => \inst15|inst13~7_combout\);

-- Location: LCCOMB_X22_Y12_N2
\inst15|inst13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst13~8_combout\ = (\inst15|inst13~5_combout\) # ((\inst15|inst13~4_combout\) # ((\inst15|inst13~3_combout\) # (\inst15|inst13~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst13~5_combout\,
	datab => \inst15|inst13~4_combout\,
	datac => \inst15|inst13~3_combout\,
	datad => \inst15|inst13~7_combout\,
	combout => \inst15|inst13~8_combout\);

-- Location: LCCOMB_X21_Y12_N10
\inst15|inst7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst7~2_combout\ = (\inst17|inst21~q\ & ((\inst17|inst13~q\) # ((\inst17|inst46~q\ & !\inst17|inst2~q\)))) # (!\inst17|inst21~q\ & ((\inst17|inst46~q\ & ((!\inst17|inst2~q\))) # (!\inst17|inst46~q\ & (!\inst17|inst13~q\ & \inst17|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst21~q\,
	datab => \inst17|inst13~q\,
	datac => \inst17|inst46~q\,
	datad => \inst17|inst2~q\,
	combout => \inst15|inst7~2_combout\);

-- Location: LCCOMB_X21_Y12_N12
\inst15|inst7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst7~3_combout\ = (\inst17|inst251~q\ & (((\inst17|inst60~q\ & \inst17|inst25~q\)) # (!\inst17|inst4~q\))) # (!\inst17|inst251~q\ & ((\inst17|inst60~q\ & ((\inst17|inst25~q\))) # (!\inst17|inst60~q\ & (\inst17|inst4~q\ & !\inst17|inst25~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst251~q\,
	datab => \inst17|inst4~q\,
	datac => \inst17|inst60~q\,
	datad => \inst17|inst25~q\,
	combout => \inst15|inst7~3_combout\);

-- Location: LCCOMB_X21_Y12_N24
\inst15|inst7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst7~4_combout\ = (\inst15|inst7~2_combout\ & ((\inst1|inst3~1_combout\) # ((\inst15|inst7~3_combout\ & !\inst1|inst5~combout\)))) # (!\inst15|inst7~2_combout\ & (((\inst15|inst7~3_combout\ & !\inst1|inst5~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst7~2_combout\,
	datab => \inst1|inst3~1_combout\,
	datac => \inst15|inst7~3_combout\,
	datad => \inst1|inst5~combout\,
	combout => \inst15|inst7~4_combout\);

-- Location: LCCOMB_X19_Y13_N8
\inst15|inst7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst7~0_combout\ = (\inst17|inst15~q\ & (((\inst17|inst19~q\ & \inst17|inst11~q\)) # (!\inst17|inst1~q\))) # (!\inst17|inst15~q\ & ((\inst17|inst19~q\ & ((\inst17|inst11~q\))) # (!\inst17|inst19~q\ & (\inst17|inst1~q\ & !\inst17|inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst15~q\,
	datab => \inst17|inst19~q\,
	datac => \inst17|inst1~q\,
	datad => \inst17|inst11~q\,
	combout => \inst15|inst7~0_combout\);

-- Location: LCCOMB_X19_Y13_N18
\inst15|inst7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst7~1_combout\ = (\inst15|inst7~0_combout\ & (\inst1|inst~q\ & !\inst1|inst15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15|inst7~0_combout\,
	datac => \inst1|inst~q\,
	datad => \inst1|inst15~q\,
	combout => \inst15|inst7~1_combout\);

-- Location: LCCOMB_X33_Y12_N28
\inst15|inst7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst7~5_combout\ = (\inst17|inst23~q\ & ((\inst17|inst260~q\) # ((!\inst17|inst3~q\ & \inst17|inst51~q\)))) # (!\inst17|inst23~q\ & ((\inst17|inst3~q\ & (!\inst17|inst260~q\ & !\inst17|inst51~q\)) # (!\inst17|inst3~q\ & ((\inst17|inst51~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst23~q\,
	datab => \inst17|inst260~q\,
	datac => \inst17|inst3~q\,
	datad => \inst17|inst51~q\,
	combout => \inst15|inst7~5_combout\);

-- Location: LCCOMB_X21_Y13_N2
\inst15|inst7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst15|inst7~6_combout\ = (\inst15|inst7~4_combout\) # ((\inst15|inst7~1_combout\) # ((\inst1|inst3~0_combout\ & \inst15|inst7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst7~4_combout\,
	datab => \inst1|inst3~0_combout\,
	datac => \inst15|inst7~1_combout\,
	datad => \inst15|inst7~5_combout\,
	combout => \inst15|inst7~6_combout\);

ww_DIG(4) <= \DIG[4]~output_o\;

ww_DIG(3) <= \DIG[3]~output_o\;

ww_DIG(2) <= \DIG[2]~output_o\;

ww_DIG(1) <= \DIG[1]~output_o\;

ww_SEG(6) <= \SEG[6]~output_o\;

ww_SEG(5) <= \SEG[5]~output_o\;

ww_SEG(4) <= \SEG[4]~output_o\;

ww_SEG(3) <= \SEG[3]~output_o\;

ww_SEG(2) <= \SEG[2]~output_o\;

ww_SEG(1) <= \SEG[1]~output_o\;

ww_SEG(0) <= \SEG[0]~output_o\;
END structure;


