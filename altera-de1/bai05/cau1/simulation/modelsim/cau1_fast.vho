-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "10/25/2018 13:28:00"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cau1 IS
    PORT (
	SW : IN std_logic_vector(0 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END cau1;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cau1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \comb_3|comb_8|q~0_combout\ : std_logic;
SIGNAL \comb_3|comb_8|q~regout\ : std_logic;
SIGNAL \comb_4|comb_8|q~0_combout\ : std_logic;
SIGNAL \comb_4|comb_8|q~regout\ : std_logic;
SIGNAL \comb_6|comb_8|q~0_combout\ : std_logic;
SIGNAL \comb_6|comb_8|q~regout\ : std_logic;
SIGNAL \comb_8|comb_8|q~0_combout\ : std_logic;
SIGNAL \comb_8|comb_8|q~regout\ : std_logic;
SIGNAL \comb_9|WideOr6~0_combout\ : std_logic;
SIGNAL \comb_9|WideOr5~0_combout\ : std_logic;
SIGNAL \comb_9|WideOr4~0_combout\ : std_logic;
SIGNAL \comb_9|WideOr3~0_combout\ : std_logic;
SIGNAL \comb_9|WideOr2~0_combout\ : std_logic;
SIGNAL \comb_9|WideOr1~0_combout\ : std_logic;
SIGNAL \comb_9|WideOr0~0_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \comb_9|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\comb_9|ALT_INV_WideOr0~0_combout\ <= NOT \comb_9|WideOr0~0_combout\;

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X49_Y10_N16
\comb_3|comb_8|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_3|comb_8|q~0_combout\ = \SW~combout\(0) $ (\comb_3|comb_8|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datac => \comb_3|comb_8|q~regout\,
	combout => \comb_3|comb_8|q~0_combout\);

-- Location: LCFF_X49_Y10_N17
\comb_3|comb_8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_3|comb_8|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_3|comb_8|q~regout\);

-- Location: LCCOMB_X49_Y10_N2
\comb_4|comb_8|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_4|comb_8|q~0_combout\ = \comb_4|comb_8|q~regout\ $ (\comb_3|comb_8|q~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_4|comb_8|q~regout\,
	datad => \comb_3|comb_8|q~regout\,
	combout => \comb_4|comb_8|q~0_combout\);

-- Location: LCFF_X49_Y10_N3
\comb_4|comb_8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_4|comb_8|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_4|comb_8|q~regout\);

-- Location: LCCOMB_X49_Y10_N12
\comb_6|comb_8|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_6|comb_8|q~0_combout\ = \comb_6|comb_8|q~regout\ $ (((\comb_4|comb_8|q~regout\ & \comb_3|comb_8|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_4|comb_8|q~regout\,
	datac => \comb_6|comb_8|q~regout\,
	datad => \comb_3|comb_8|q~regout\,
	combout => \comb_6|comb_8|q~0_combout\);

-- Location: LCFF_X49_Y10_N13
\comb_6|comb_8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_6|comb_8|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_6|comb_8|q~regout\);

-- Location: LCCOMB_X49_Y10_N30
\comb_8|comb_8|q~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_8|comb_8|q~0_combout\ = \comb_8|comb_8|q~regout\ $ (((\comb_3|comb_8|q~regout\ & (\comb_4|comb_8|q~regout\ & \comb_6|comb_8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_8|q~regout\,
	datab => \comb_4|comb_8|q~regout\,
	datac => \comb_8|comb_8|q~regout\,
	datad => \comb_6|comb_8|q~regout\,
	combout => \comb_8|comb_8|q~0_combout\);

-- Location: LCFF_X49_Y10_N31
\comb_8|comb_8|q\ : cycloneii_lcell_ff
PORT MAP (
	clk => \KEY~combout\(0),
	datain => \comb_8|comb_8|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \comb_8|comb_8|q~regout\);

-- Location: LCCOMB_X4_Y13_N4
\comb_9|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_9|WideOr6~0_combout\ = (\comb_6|comb_8|q~regout\ & (!\comb_4|comb_8|q~regout\ & (\comb_3|comb_8|q~regout\ $ (!\comb_8|comb_8|q~regout\)))) # (!\comb_6|comb_8|q~regout\ & (\comb_3|comb_8|q~regout\ & (\comb_8|comb_8|q~regout\ $ 
-- (!\comb_4|comb_8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_8|q~regout\,
	datab => \comb_6|comb_8|q~regout\,
	datac => \comb_8|comb_8|q~regout\,
	datad => \comb_4|comb_8|q~regout\,
	combout => \comb_9|WideOr6~0_combout\);

-- Location: LCCOMB_X4_Y13_N26
\comb_9|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_9|WideOr5~0_combout\ = (\comb_8|comb_8|q~regout\ & ((\comb_3|comb_8|q~regout\ & ((\comb_4|comb_8|q~regout\))) # (!\comb_3|comb_8|q~regout\ & (\comb_6|comb_8|q~regout\)))) # (!\comb_8|comb_8|q~regout\ & (\comb_6|comb_8|q~regout\ & 
-- (\comb_3|comb_8|q~regout\ $ (\comb_4|comb_8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_8|q~regout\,
	datab => \comb_6|comb_8|q~regout\,
	datac => \comb_8|comb_8|q~regout\,
	datad => \comb_4|comb_8|q~regout\,
	combout => \comb_9|WideOr5~0_combout\);

-- Location: LCCOMB_X4_Y13_N20
\comb_9|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_9|WideOr4~0_combout\ = (\comb_6|comb_8|q~regout\ & (\comb_8|comb_8|q~regout\ & ((\comb_4|comb_8|q~regout\) # (!\comb_3|comb_8|q~regout\)))) # (!\comb_6|comb_8|q~regout\ & (!\comb_3|comb_8|q~regout\ & (!\comb_8|comb_8|q~regout\ & 
-- \comb_4|comb_8|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_8|q~regout\,
	datab => \comb_6|comb_8|q~regout\,
	datac => \comb_8|comb_8|q~regout\,
	datad => \comb_4|comb_8|q~regout\,
	combout => \comb_9|WideOr4~0_combout\);

-- Location: LCCOMB_X4_Y13_N10
\comb_9|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_9|WideOr3~0_combout\ = (\comb_4|comb_8|q~regout\ & ((\comb_3|comb_8|q~regout\ & (\comb_6|comb_8|q~regout\)) # (!\comb_3|comb_8|q~regout\ & (!\comb_6|comb_8|q~regout\ & \comb_8|comb_8|q~regout\)))) # (!\comb_4|comb_8|q~regout\ & 
-- (!\comb_8|comb_8|q~regout\ & (\comb_3|comb_8|q~regout\ $ (\comb_6|comb_8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_8|q~regout\,
	datab => \comb_6|comb_8|q~regout\,
	datac => \comb_8|comb_8|q~regout\,
	datad => \comb_4|comb_8|q~regout\,
	combout => \comb_9|WideOr3~0_combout\);

-- Location: LCCOMB_X4_Y13_N0
\comb_9|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_9|WideOr2~0_combout\ = (\comb_4|comb_8|q~regout\ & (\comb_3|comb_8|q~regout\ & ((!\comb_8|comb_8|q~regout\)))) # (!\comb_4|comb_8|q~regout\ & ((\comb_6|comb_8|q~regout\ & ((!\comb_8|comb_8|q~regout\))) # (!\comb_6|comb_8|q~regout\ & 
-- (\comb_3|comb_8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_8|q~regout\,
	datab => \comb_6|comb_8|q~regout\,
	datac => \comb_8|comb_8|q~regout\,
	datad => \comb_4|comb_8|q~regout\,
	combout => \comb_9|WideOr2~0_combout\);

-- Location: LCCOMB_X4_Y13_N22
\comb_9|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_9|WideOr1~0_combout\ = (\comb_3|comb_8|q~regout\ & (\comb_8|comb_8|q~regout\ $ (((\comb_4|comb_8|q~regout\) # (!\comb_6|comb_8|q~regout\))))) # (!\comb_3|comb_8|q~regout\ & (!\comb_6|comb_8|q~regout\ & (!\comb_8|comb_8|q~regout\ & 
-- \comb_4|comb_8|q~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_8|q~regout\,
	datab => \comb_6|comb_8|q~regout\,
	datac => \comb_8|comb_8|q~regout\,
	datad => \comb_4|comb_8|q~regout\,
	combout => \comb_9|WideOr1~0_combout\);

-- Location: LCCOMB_X4_Y13_N12
\comb_9|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb_9|WideOr0~0_combout\ = (\comb_3|comb_8|q~regout\ & ((\comb_8|comb_8|q~regout\) # (\comb_6|comb_8|q~regout\ $ (\comb_4|comb_8|q~regout\)))) # (!\comb_3|comb_8|q~regout\ & ((\comb_4|comb_8|q~regout\) # (\comb_6|comb_8|q~regout\ $ 
-- (\comb_8|comb_8|q~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|comb_8|q~regout\,
	datab => \comb_6|comb_8|q~regout\,
	datac => \comb_8|comb_8|q~regout\,
	datad => \comb_4|comb_8|q~regout\,
	combout => \comb_9|WideOr0~0_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \comb_9|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));
END structure;


