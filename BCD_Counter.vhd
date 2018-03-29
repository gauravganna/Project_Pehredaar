--VHDL code for D_FlipFlop created by Gaurav Ganna as part of Project PEHREDAR.
--Date 28/03/2018
library ieee;							-- Library Declaration
use ieee.std_logic_1164.all;		-- Use std_logic_1164 package from ieee library
use work.RFID_Project.all;			-- Include the package created as part of Project

entity BCD_Counter is				-- Entity Declaration
	port (
		CLK : in std_logic;										-- Main clock
		EN  : in std_logic;										-- Active Low Enable
		Q   : buffer std_logic_vector (3 downto 0);		-- Output Vector (BCD Number)
		C   : inout std_logic);									-- Active Low Carry Indicator
end BCD_Counter;

architecture STRUCT of BCD_Counter is 		
signal S0,S1,S2,S3 : std_logic;								-- signals to store the QN obtained from D_FlipFlop
signal EN_F : std_logic;										-- signal for final Enable which is and of EN and S

begin 
	U1 : D_FlipFlop port map(S0,EN_F,CLK,Q(0),S0);				--Q0
	U2 : D_FlipFlop port map(S1,EN_F,S0,Q(1),S1);				--Q1
	U3 : D_FlipFlop port map(S2,EN_F,S1,Q(2),S2);				--Q2
	U4 : D_FlipFlop port map(S3,EN_F,S2,Q(3),S3);				--Q3
	
	C <= (not Q(3)) or Q(2) or (not Q(1)) or Q(0);		-- Combinational Logic for Carry 
	EN_F <= C and EN;												-- Final Output
end STRUCT;