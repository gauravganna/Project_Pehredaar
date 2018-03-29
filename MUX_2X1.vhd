-- VHDL program for a 2X1 multiplexer created by Gaurav Ganna for Project Pehredar 
-- Date : 29/03/2018

library ieee;						-- Library declaration
use ieee.std_logic_1164.all;	-- Use std_logic_1164 package from ieee library

entity MUX_2X1 is								-- Entity declaration
	port(	I0, I1, S0 : in std_logic;		-- Inputs of the multiplexer
			O0 : out std_logic);				-- Output of the multiplexer
end MUX_2X1;

architecture STRUCT of MUX_2X1 is	-- Architecture description of the multiplexer

signal SIG0, SIG1, SIG2 : std_logic;

begin							
	SIG0 <= not S0;
	SIG1 <= I0 and SIG0;
	SIG2 <= I1 and S0;
	O0   <= SIG1 OR SIG2;
	
end STRUCT;