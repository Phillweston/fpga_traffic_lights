-- WARNING: Do NOT edit the input and output ports in this file in a text
-- editor if you plan to continue editing the block that represents it in
-- the Block Editor! File corruption is VERY likely to occur.

-- Copyright (C) 1991-2009 Altera Corporation
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


-- Generated by Quartus II 64-Bit Version 9.1 (Build Build 222 10/21/2009)
-- Created on Thu Sep 19 21:16:57 2019

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
--  Entity Declaration

ENTITY disp1 IS
	-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
	PORT
	(
		D : IN integer range 30 downto 1;
		L : OUT integer range 9 downto 0;
		H : OUT integer range 9 downto 0
	);
	-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
	
END disp1;


--  Architecture Body

ARCHITECTURE disp1_architecture OF disp1 IS

	
BEGIN
  process(D)
  begin
    H<=(D/10);
    L<=(D mod 10);
  end process;

END disp1_architecture;
