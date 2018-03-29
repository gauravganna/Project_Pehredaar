--VHDL code for 4 Digit BCD Counter created by Gaurav Ganna as part of Project PEHREDAR.
--Date 29/03/2018

library ieee;							-- Library Declaration
use ieee.std_logic_1164.all;		-- Use std_logic_1164 package from ieee library
use work.RFID_Project.all;			-- Include the package created as part of Project

entity DGT_4_Counter is				-- Entity Declaration
	port(
	CLK      : in std_logic;									-- Main Clock
	EN,EN2   : in std_logic;									-- EN2 -> Active Low Enable for Modulo_4 EN -> Active Low Enable for everything else
	SO       : out std_logic_vector (3 downto 0);		-- Select line to select the digit on SSD to be displayed. 
	CNT_CLK  : inout std_logic := '0';
	DP       : out std_logic := '1';							-- Active Low Decimal Point
--	S        : inout std_logic_vector (1 downto 0);		-- Output of Modulo 4 
	OVERFLOW : out std_logic;									-- Active High Overflow Indicator
--	CNT 	   : inout integer range 0 to 100 := 0;
	Q	      : out std_logic_vector (3 downto 0)	);		-- Multiplexed Output
	 
end DGT_4_Counter;

architecture STRUCT of DGT_4_Counter is					-- Architecture description of the DGT_4_Counter 
signal S  : std_logic_vector (1 downto 0);				-- Signals used to store the output of Modulo_4 
signal O  : std_logic_vector (15 downto 0);				-- Signals for storing the output from BCD Numbers from all four Counters.
signal C  : std_logic_vector (3 downto 0);				-- Signal to store the Carry from the BCD_Counters
signal CN : std_logic_vector (2 downto 0);				-- Negation of Carry i.e. CN = not C

begin
		
		--Overflow Indicator
		OVERFLOW <= not C(3);
		
		--Negation of Carrys
		CN(2) <= not C(2);
		CN(1) <= not C(1);
		CN(0) <= not C(0);
		
		-- Select Line	(Active Low)
		SO(0) <= S(1) or S(0);
		SO(1) <= S(1) or (not S(0));
		SO(2) <= (not S(1)) or S(0);
		SO(3) <= (not S(1)) or (not S(0));
		
		--Modulo_4
		M1 : Modulo_4 port map(CLK,EN2,S);					-- Modulo_4 to obtain clock of time period 4T where T is time period of original clock.
		
		--BCD_Counters
		U1 : BCD_Counter port map(CNT_CLK,EN,O(3 downto 0),C(0));			-- Least Significant Digit i.e Unit place
		U2 : BCD_Counter port map(CN(0),EN,O(7 downto 4),C(1));			-- Tens place
		U3 : BCD_Counter port map(CN(1),EN,O(11 downto 8),C(2));			-- Hundred place
		U4 : BCD_Counter port map(CN(2),EN,O(15 downto 12),C(3));		-- Most Signifacant Digit i.e Thousand place
	
		--Multiplexing the Output using 16X4 MUX
		M2 : MUX_16X4 port map(O(3 downto 0),O(7 downto 4),O(11 downto 8),O(15 downto 12),S,Q);	
			
		process(S(0))
		variable CNT : integer range 0 to 100 := 10;
		begin
			if(CNT > 0) then
				if(RISING_EDGE(S(0)) and EN = '1') then
					CNT_CLK <= not CNT_CLK;
					if(S(1) = '1') then
						CNT := CNT - 1;
					else
					end if;
				else
				end if;
			else
				CNT_CLK <= '0';
			end if;
		end process;
end STRUCT;