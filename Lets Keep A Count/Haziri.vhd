--VHDL Code created by Gaurav Ganna as part of Project Pehredar.
-- Haziri is the word used for Attendance in Hindi.
--Date completed := 16/04/2018

--Include the Required Libraries.
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

--Entity Declaration
entity Haziri is								
	port(
		CLK  		: in std_logic;									-- Main clock	
		OP    	: out std_logic_vector (3 downto 0);		-- 4 digit BCD Number
		SEL  		: inout std_logic_vector (3 downto 0);		-- Select Line to select the Digit on Seven Segment Display.
		OVERFLOW : out std_logic;									-- Overflow Indicator(On reaching 9999).
		DP  		: out std_logic );								-- Active Low Decimal Point.
		
end Haziri;

--Functionality of Haziri 
architecture FUNCT of Haziri is

	signal cnt  		: integer range 0 to 9999 ;											-- Keeps a count of number of times CLK_NEW Edge passed.
	signal O 			: std_logic_vector (15 downto 0) ;									-- Signal which stores the previous count.
	signal C 			: std_logic_vector (3 downto 0) := "0000";						-- Active High Carry Indicator of all four Digits. 
	signal CLK_NEW    : std_logic := '1';														-- Clock with frequency/4 of Original clock. It will be used to show multiplexed output.
	signal CNT_CLK    : integer range 0 to 1 ; 												-- Counter assisting in creating CLK_NEW.
	type STATE_TYPE is (S0,S1,S2,S3);															-- States help to select decide SEL
	signal Q, QPLUS   : STATE_TYPE;																-- Q -> Present State   QPLUS -> Next State 

begin
	DP <= '1';																							-- Decimal Point. Will Disable Decimal Point
	
	-- Carry Indicators
	C(3) <= O(15) and (not O(14)) and (not O(13)) and O(12);								-- Indicator of Most Significant Digit.
	C(2) <= O(11) and (not O(10)) and (not O(9)) and O(8);							
	C(1) <= O(7) and (not O(6)) and (not O(5)) and O(4);
	C(0) <= O(3) and (not O(2)) and (not O(1)) and O(0);									-- Indicator of Least Significant Digit.
	
	--Start of process 1
	--Synchronous BCD UP Counter Upto a predefined Value.
	--This process increments the O by 1 on each clock(CLK_NEW) edge untill the O reaches Old Entry + New Additions.
	process(CLK_NEW)
	begin
		
		--Start of First If Statement
		if(RISING_EDGE(CLK_NEW) and cnt <= 2) then
			cnt <= cnt + 1;
			
			--Start of Second If Statement.
			--Used to initialise the values of O and OVERFLOW.
			if(cnt = 0) then			
				O <= "0000000000000011";
				OVERFLOW <= C(3) and C(2) and C(1) and C(0);
			
			--BCD Counter Behavioural Code	
			elsif(C(3) = '1' and C(2) = '1' and C(1) = '1' and C(0) = '1') then	-- O -> 9999 and OVERFLOW Condition
				OVERFLOW <= '1';
				O <= "0000000000000000";
					
			elsif( C(2) = '1' and C(1) = '1' and C(0) = '1' ) then		-- O -> X999
				O(15 downto 12) <= O(15 downto 12) + "0001";
				O(11 downto 0) <= "000000000000";
				OVERFLOW <= '0';
				
			elsif( C(1) = '1' and C(0) = '1' ) then							-- O -> XX99
				O(11 downto 8) <= O(11 downto 8) + "0001";
				O(7 downto 0) <= "00000000";
				OVERFLOW <= '0';
				
			elsif( C(0) = '1' ) then												-- O -> XXX9
				O(7 downto 4) <= O(7 downto 4) + "0001";
				O(3 downto 0) <= "0000";
				OVERFLOW <= '0';
				
			else
				O(3 downto 0) <= O(3 downto 0) + "0001";						-- O -> XXXX
				OVERFLOW <= '0';
				
			end if;
			--End of Second If Statement.
			
		end if;
		--End of First If Statement.
	end process;
	--End of process 1
	
	--Start of process 2.
	--Synchronous Clock Divider.
	--This process creates a Divide by 4 Clock(CLK_NEW) as well serves as a clock to Synchronous Moore Machine. 
	process(CLK)
	variable CNT : integer range 0 to 500 := 0;
	begin

		--Start of First If Statement.
		if(RISING_EDGE(CLK)) then
			if(CNT = 500) then
				Q <= QPLUS;													-- Give Next State Value to Current State.
			
				--Start of Second If Statement.
				--Clock Divison
				if(CNT_CLK = 1) then
					CLK_NEW <= not CLK_NEW ;
					CNT_CLK <= 0;
				
				else
					CNT_CLK <= CNT_CLK + 1;
				
				end if;
				--End of Second If Statement.
				CNT := 0;
			else
				CNT := CNT + 1;
				
			end if;
			--End of Second If Statement.
		end if;
		--End of Third If Statement
		

	end process;
	--End of process 2
	
		
	--Start of process 3.
	--This process helps us to show all four digits on SSD.
	process(Q)
	begin
		
		case Q is
			when S0 =>
				SEL <= "0111";
				OP <= O(15 downto 12);
				QPLUS <= S1;
			when S1 =>
				SEL <= "1011";
				OP <= O(11 downto 8);
				QPLUS <= S2;
			when S2 =>
				SEL <= "1101";
				OP <= O(7 downto 4);
				QPLUS <= S3;
			when S3 =>
				SEL <= "1110";
				OP <= O(3 downto 0);
				QPLUS <= S0;
		end case;
		
	end process;
	--End of process 3.
	
end FUNCT;
--End of Functionality of Haziri