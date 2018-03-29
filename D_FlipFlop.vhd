--VHDL code for D_FlipFlop created by Gaurav Ganna as part of Project PEHREDAR.
--Date 28/03/2018

library ieee;							-- Library Declaration
use ieee.std_logic_1164.all;		-- Use std_logic_1164 package from ieee library

entity D_FlipFlop is				--Entity Declaration
	port (
		D   : in std_logic;		-- Data input of DFF	
		RST : in std_logic;		-- Active Low Reset Button 
		CLK : in std_logic;		-- Main Clock  
		Q	 : buffer std_logic;	-- Q -> Output  
		QN  : out std_logic 		-- QN -> Output_bar
	);
end D_FlipFlop;
	
--architecture declaration	
architecture BEHAVE of D_FlipFlop is
	begin
		process(CLK,RST)			--Process with sensitivity list
			begin
				if (RST = '0') then		--The DFF will start working once it recieves RST as '0'
					Q <= '0';
				elsif (RISING_EDGE(CLK)) then		--If there is a Rising Edge than DFF equates Q to D 
					Q <= D;
				end if;

		end process;			
		QN <= not Q;
	end BEHAVE;
--End of Code				
				