--VHDL Code created by Gaurav Ganna as part of Project Pehredar
--Date : 05/04/2018

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Counter is														-- Entity Declaration
	port(
		CLK  		: in std_logic;									-- Main clock	
		RSTN 		: inout std_logic;								-- Active Low Reset
		OP    	: out std_logic_vector (3 downto 0);		-- Multiplexed Output
		SEL  		: out std_logic_vector (3 downto 0);		-- Select Line
		OVERFLOW : out std_logic;									-- Overflow Indicator
		DP  		: out std_logic );								-- Decimal Point
end Counter;

architecture FUNCTIONALITY of Counter is														-- Architecture Definition
	signal cnt  		: integer range 0 to 9999 := 5;										-- Count that has to be increased
	signal O 			: std_logic_vector (15 downto 0) := "0000000000000101" ;		-- Old Counter
	type STATE_TYPE is (S0,S1, IDLE,INIT);															-- States S0 -> Count state
	signal Q, QPLUS   : STATE_TYPE;							
	signal init_state : std_logic := '0';														-- Signal that will initialise the state to S0
	signal C 			: std_logic_vector (3 downto 0) := "0000";						-- Active High Carry Indicator 

begin
	DP <= '1';								-- Decimal Point
	C(3) <= O(15) and (not O(14)) and (not O(13)) and O(12);		
	C(2) <= O(11) and (not O(10)) and (not O(9)) and O(8);
	C(1) <= O(7) and (not O(6)) and (not O(5)) and O(4);
	C(0) <= O(3) and (not O(2)) and (not O(1)) and O(0);
	
	process(Q)								-- process with sensitivity list
	begin 
		case Q is 
			when S0 =>						-- State in which counting is done
				if(cnt > 0) then
					cnt <= cnt - 1;		-- Decrement the counter.
					QPLUS <= S1;			-- Next State is S1.
					
					--BCD Counter Behavioural Code
					if(C(3) = '1' and C(2) = '1' and C(1) = '1' and C(0) = '1') then
						OVERFLOW <= '1';
						O <= "0000000000000000";
					
					elsif( C(2) = '1' and C(1) = '1' and C(0) = '1' ) then
						O(15 downto 12) <= O(15 downto 12) + "0001";
						O(11 downto 0) <= "000000000000";
					
					elsif( C(1) = '1' and C(0) = '1' ) then
						O(11 downto 8) <= O(11 downto 8) + "0001";
						O(7 downto 0) <= "00000000";
						
					elsif( C(0) = '1' ) then
						O(7 downto 4) <= O(7 downto 4) + "0001";
						O(3 downto 0) <= "0000";
						
					else
						O(3 downto 0) <= O(3 downto 0) + "0001";
					end if;
					
				else
					QPLUS <= IDLE;			-- IDLE is reached only when cnt is zero.
				end if;
				
			when S1 =>	
				if(cnt > 0) then
					cnt <= cnt - 1;		-- Decrement the counter.
					QPLUS <= S0;			-- Next State is S0 untill cnt is zero.
					
					--BCD Counter Behavioural Code
					if(C(3) = '1' and C(2) = '1' and C(1) = '1' and C(0) = '1') then
						OVERFLOW <= '1';
						O <= "0000000000000000";
					
					elsif( C(2) = '1' and C(1) = '1' and C(0) = '1' ) then
						O(15 downto 12) <= O(15 downto 12) + "0001";
					
					elsif( C(1) = '1' and C(0) = '1' ) then
						O(11 downto 8) <= O(11 downto 8) + "0001";
						
					elsif( C(0) = '1' ) then
						O(7 downto 4) <= O(7 downto 4) + "0001";
						
					else
						O(3 downto 0) <= O(3 downto 0) + "0001";
					end if;
					
				else
					QPLUS <= IDLE;			-- IDLE is reached only when cnt is zero.
				end if;
				
			when IDLE =>					-- If in ideal remain in ideal;
				QPLUS <= IDLE;
				
			when INIT =>
				O <= "0000000000000000";
				QPLUS <= S0;
		end case;
	end process;
	--End of Process 1
	
	--Start of Process 2
	process(RSTN,CLK)						-- process with sensitivity list
	begin			
		if (RSTN = '0') then				-- If Reset is 					
			Q <= INIT;						-- Initial State to be S0
			init_state <= '1';			-- Initialisation of states have been done
			
		elsif (init_state = '0') then	-- If states is not initialised to S0 then initialise the state.
			Q <= S0;							-- Initialise the state to S0
			init_state <= '1';			-- '1' indicate state is initialised
					
		elsif (RISING_EDGE(CLK)) then	
			Q <= QPLUS;
		end if;
	end process;
	--End of Process 2

end FUNCTIONALITY;