--VHDL code for D_FlipFlop created by Gaurav Ganna as part of Project Pehredar
--Date 28/03/2018
library ieee;							-- Library Declaration
use ieee.std_logic_1164.all;		-- Use std_logic_1164 package from ieee library
use work.RFID_Project.all;

entity BCD_Counter is
	port (
		CLK : in std_logic;
		EN  : in std_logic;
		Q   : buffer std_logic_vector (3 downto 0);
		C   : inout std_logic);
end BCD_Counter;

architecture STRUCT of BCD_Counter is 
signal S0,S1,S2,S3,S : std_logic;
signal EN_F : std_logic;

begin 
	U1 : D_FlipFlop port map(S0,EN_F,CLK,Q(0),S0);				--Q0
	U2 : D_FlipFlop port map(S1,EN_F,S0,Q(1),S1);				--Q1
	U3 : D_FlipFlop port map(S2,EN_F,S1,Q(2),S2);				--Q2
	U4 : D_FlipFlop port map(S3,EN_F,S2,Q(3),S3);				--Q3

	C <= Q(3) or Q(2) or Q(1) or Q(0); 
	S <= (not Q(3)) or Q(2) or (not Q(1)) or Q(0);
	EN_F <= S and EN;
end STRUCT;