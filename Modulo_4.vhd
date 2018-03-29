--VHDL code for Modulo_4 created by Gaurav Ganna as part of Project Pehredar
--Date 29/03/2018
library ieee;							-- Library Declaration
use ieee.std_logic_1164.all;		-- Use std_logic_1164 package from ieee library
use work.RFID_Project.all;			-- Include the package created as part of Project

entity Modulo_4 is					-- Entity Declaration
	port(				
	CLK : in std_logic;				-- Main Clock
	EN  : in std_logic;				-- Enable
	S   : inout std_logic_vector (1 downto 0));		--Output
	
end Modulo_4;

architecture STRUCT of Modulo_4 is
signal S0,S1 : std_logic;

begin
	U1 : D_FlipFlop port map(S0,EN,CLK,S(0),S0);				--S(0)
	U2 : D_FlipFlop port map(S1,EN,S0,S(1),S1);				--S(1)

end STRUCT;