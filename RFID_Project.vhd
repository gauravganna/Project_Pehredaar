--Package created by Gaurav Ganna as part of Project Pehredar
--Date 28/03/2018

library ieee;							-- Library Declaration
use ieee.std_logic_1164.all;		-- Use std_logic_1164 package from ieee library

package RFID_Project is				-- Package description
	component D_FlipFlop is			-- DFlipFlop as component
		port (
		D   : in std_logic;		-- Data input of DFF	
		RST : in std_logic;		-- Active Low Reset Button 
		CLK : in std_logic;		-- Main Clock  
		Q	 : buffer std_logic;	-- Q -> Output  
		QN  : out std_logic 		-- QN -> Output_bar
	);
	end component;
	
end RFID_Project;