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
-- Created on Thu Sep 19 19:41:18 2019

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;

--  Entity Declaration

ENTITY controller IS
	-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
	PORT
	(
		clk : IN STD_LOGIC;
		switch : IN STD_LOGIC;
		eastout : OUT integer range 30 downto 1;
		eastout2 : OUT integer range 0 to 2;
		northout : OUT integer range 30 downto 1;
		northout2 : OUT integer range 0 to 2
	);
	-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!
	
END controller;


--  Architecture Body

ARCHITECTURE controller_architecture OF controller IS

	
BEGIN
  process(clk)
  variable m:integer range 1 to 30;
  variable k:std_logic :='0';
  begin
    if switch>'0' then
       eastout2<=2;
       northout2<=2;
       eastout<=30;
       northout<=30;
    else

    if clk'event and clk='1' then
      if m>0 then
         if k<'1' then
            northout<=m;
            northout2<=2;            
            if m>3 then
               eastout2<=0;
               eastout<=(m-3);
            else
               eastout2<=1;
               eastout<=m;
            end if;
                      
         else
            eastout<=m;
            eastout2<=2;            
            if m>3 then
               northout2<=0;
               northout<=(m-3);
            else
               northout2<=1;
               northout<=m;
            end if;
         end if;
         m:=m-1;     
      else
         m:=30;
         k:=not k;        
      end if;      
    end if;
    
    end if;
  end process;
    
END controller_architecture;
