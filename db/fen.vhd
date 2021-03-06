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
-- Created on Thu Sep 19 18:08:50 2019

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--  Entity Declaration

ENTITY fen IS
	-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
	PORT
	(
		clk : IN STD_LOGIC;
		q : OUT STD_LOGIC
	);
	-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
	
END fen;


--  Architecture Body

ARCHITECTURE fen_architecture OF fen IS

	
BEGIN
     process(clk) 
     variable cnt: integer range 0 to 24999999; 
     variable x: std_logic; 
     begin 
         if clk'event and clk = '1' then 
             if cnt<24999999 then 
                   cnt:=cnt+1; 
             else 
                   cnt:=0; 
                   x:= not x; 
             end if; 
        end if; 
        q<=x; 
     end process; 

END fen_architecture;
