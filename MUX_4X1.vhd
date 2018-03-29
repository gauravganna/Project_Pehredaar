-- VHDL program for a 4X1 multiplexer
-- Date : 29/03/2018
-- Latest version completed on 22/01/2018 by Nandakumar and used by Gaurav Ganna as part of Project Pehredar.

library ieee;						-- Library declaration
use ieee.std_logic_1164.all;	-- Use std_logic_1164 package from ieee library
use work.RFID_Project.all;		-- Use RFID_Project package from the user defined library work

entity MUX_4X1 is									-- Entity declaration
	port(	I0, I1, I2, I3 : in std_logic;	-- Inputs of the multiplexer
			S : in std_logic_vector(1 downto 0);
			O0 : out std_logic);					-- Output of the multiplexer
end MUX_4X1;

architecture STRUCTURE of MUX_4X1 is	-- Architecture description of the multiplexer

signal SIG0, SIG1 : std_logic;

begin												-- Instantiation of various gates

	U0 : MUX_2X1 port map(I0, I1, S(0), SIG0);
	U1 : MUX_2X1 port map(I2, I3, S(0), SIG1);
	U2 : MUX_2X1 port map(SIG0, SIG1, S(1), O0);
	
end STRUCTURE;