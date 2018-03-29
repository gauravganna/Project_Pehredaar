-- VHDL program for a 16X4 multiplexer
-- Latest version completed on 22/01/2018 by Nandakumar and is used by Gaurav Ganna for Project Pehredar.
-- Date : 29/03/2018

library ieee;						-- Library declaration
use ieee.std_logic_1164.all;	-- Use std_logic_1164 package from ieee library
use work.RFID_Project.all;			-- Use RFID_Project package from the user defined library work

entity MUX_16X4 is														-- Entity declaration
	port(	I0, I1, I2, I3 : in std_logic_vector(3 downto 0);	-- Inputs of the multiplexer
			S : in std_logic_vector(1 downto 0);
			O0 : out std_logic_vector(3 downto 0));				-- Output of the multiplexer
end MUX_16X4;

architecture STRUCTURE of MUX_16X4 is	-- Architecture description of the multiplexer

begin												-- Instantiation of various components

MUX_4X1_bank :
	for i in 0 to 3 generate
		U0 : MUX_4X1 port map (I0(i), I1(i), I2(i), I3(i), S, O0(i));
	end generate;
	
end STRUCTURE;