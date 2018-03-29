--VHDL code for 4 Digit BCD Counter created by Gaurav Ganna as part of Project Pehredar
--Date 29/03/2018
library ieee;							-- Library Declaration
use ieee.std_logic_1164.all;		-- Use std_logic_1164 package from ieee library
use work.RFID_Project.all;			-- Include the package created as part of Project

entity DGT_4_Counter is
	port(
	CLK     : in std_logic;									-- Main Clock
	EN,EN2  : in std_logic;									-- EN2 -> Enable for Modulo_4 EN -> Enable for everything else
	SO      : out std_logic_vector (3 downto 0);		-- To select the BCD_Counter to display
	DP      : out std_logic := '0';	
	S       : inout std_logic_vector (1 downto 0);
	Q	     : out std_logic_vector (3 downto 0)	);	-- Multiplexed Output
	
end DGT_4_Counter;

architecture STRUCT of DGT_4_Counter is
--signal S  : std_logic_vector (1 downto 0);				-- Signals used as output of Modulo_4 
signal O  : std_logic_vector (15 downto 0);				-- Signals for storing the intermediate outputs.
signal C  : std_logic_vector (3 downto 0);				-- Carry
signal CN : std_logic_vector (2 downto 0);				-- Negation of Carry 

begin
		CN(2) <= not C(2);
		CN(1) <= not C(1);
		CN(0) <= not C(0);
		
		M1 : Modulo_4 port map(CLK,EN2,S);				-- Obtained clock to run the BCD_Counters
		
		--BCD_Counters
		U1 : BCD_Counter port map(S(1),EN,O(3 downto 0),C(0));			-- Least Significant Digit i.e Unit place
		U2 : BCD_Counter port map(CN(0),EN,O(7 downto 4),C(1));		-- Tens place
		U3 : BCD_Counter port map(CN(1),EN,O(11 downto 8),C(2));		-- Hundred place
		U4 : BCD_Counter port map(CN(2),EN,O(15 downto 12),C(3));	-- Most Signifacant Digit i.e Thousan place
	
		--Multiplexing the Output
		M2 : MUX_16X4 port map(O(3 downto 0),O(7 downto 4),O(11 downto 8),O(15 downto 12),S,Q);	
		
		SO(0) <= S(1) or S(0);
		SO(1) <= S(1) or (not S(0));
		SO(2) <= (not S(1)) or S(0);
		SO(3) <= (not S(1)) or (not S(0));
		
end STRUCT;