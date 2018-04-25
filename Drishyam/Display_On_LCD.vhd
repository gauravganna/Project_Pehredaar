--VHDL file created by Gaurav Ganna as part of Project Pehredar.
--Date := 17/04/2018

library IEEE;												-- Include The Required Library
use IEEE.std_logic_1164.all;

entity Display_On_LCD is								-- Entity declaration
	port( 
		CLK : in std_logic;								-- Main clock
		RSTN : in std_logic;								-- Active low reset
		D : out std_logic_vector(7 downto 0);		-- D7 – D0 outputs (Data Outputs)
		RS, RW, EN : out std_logic);					-- Control outputs RS -> Register Select   RW-> Read or Write Input
end Display_On_LCD;

architecture FUNCTIONALITY of Display_On_LCD is
	-- State data type definition.
	type STATE_TYPE is (CMD0, CMD1, CMD2, ROLLNO0, ROLLNO1, ROLLNO2, CMD4, CMD5, CMD6, A0, A1, A2, IDLE);
	-- Definition of arrays of length 5,7 and 9.
	type ARR_TYPE4 is array (0 to 4) of std_logic_vector(7 downto 0);
	type ARR_TYPE8 is array (0 to 8) of std_logic_vector(7 downto 0);
	type ARR_TYPE6 is array (0 to 6) of std_logic_vector(7 downto 0);
		
	-- Signal Declaration.
	signal	Q, QPLUS 		: STATE_TYPE;							-- Q-> Present State   QPLUS-> Next State
	signal	CNT_CMD    		: integer range 0 to 5;				-- Counters as array indices
	signal	CNT_ROLLNO     : integer range 0 to 9;				
	signal	CNT_ATTENDANCE : integer range 0 to 7;		
	signal   CLK_NEW        : std_logic ;
	-- Command to initialize the LCD display
	constant LCD_CMD    		: ARR_TYPE4 := (X"38", X"01", X"0F", X"80", X"06");						
	-- Stores the HEX Encoding of Roll No. (Eg. 160010002  -> X"31", X"36", X"30", X"30", X"31", X"30", X"30",X"30", X"32")
	constant LCD_ROLLNO		: ARR_TYPE8 := (X"31", X"36", X"30", X"30", X"31", X"30", X"30",X"30",X"32");
	-- Command to move the cursor to the second
	constant LCD_CMD1    	: std_logic_vector(7 downto 0) := X"C0";					
	-- Stores the HEX Encoding of PRESENT/ABSENT.
	constant LCD_ATTENDANCE : ARR_TYPE6 := (X"41", X"42", X"53", X"45", X"4e",X"54", X"20");
	-- Stores the Command to scroll the Display.
	constant LCD_SCROLL     : std_logic_vector(7 downto 0) := X"1C";

begin
	--Start of process 1
	process(Q)														-- Process for next state assignment
	begin
	
	case Q is
	
		-- CMD0,CMD1,CMD2 --> Is used to the initialize the display.
		when CMD0 =>
			if (CNT_CMD < 5) then
				QPLUS <= CMD1;
				D <= LCD_CMD(CNT_CMD); RS <= '0'; RW <= '0'; EN <='0';
			else
				QPLUS <= ROLLNO0;
			end if;
		when CMD1 =>
			QPLUS <= CMD2;
			D <= LCD_CMD(CNT_CMD); RS <= '0'; RW <= '0'; EN <='1';
		when CMD2 =>
			QPLUS <= CMD0;
			D <= LCD_CMD(CNT_CMD); RS <= '0'; RW <= '0'; EN <='0';
			
			
		--ROLLNO0,ROLLNO1,ROLLNO2 --> Used to display the Roll No. of Student on the first line.
		when ROLLNO0 =>
			if (CNT_ROLLNO < 9) then
				QPLUS <= ROLLNO1;
				D <= LCD_ROLLNO(CNT_ROLLNO); RS <= '1'; RW <= '0'; EN <='0';
			else
				QPLUS <= CMD4;
			end if;
		when ROLLNO1 =>
			QPLUS <= ROLLNO2;
			D <= LCD_ROLLNO(CNT_ROLLNO); RS <= '1'; RW <= '0'; EN <='1';
		when ROLLNO2 =>
			QPLUS <= ROLLNO0;
			D <= LCD_ROLLNO(CNT_ROLLNO); RS <= '1'; RW <= '0'; EN <='0';
		
		
		--CMD4 --> Used to go to next line. 
		when CMD4 =>
			QPLUS <= CMD5;
			D <= LCD_CMD1;	RS <= '0';	RW <= '0';	EN <= '0';
		when CMD5 =>
			QPLUS <= CMD6;
			D <= LCD_CMD1;	RS <= '0';	RW <= '0';	EN <= '1';
		when CMD6 =>
			QPLUS <= A0;
			D <= LCD_CMD1;	RS <= '0';	RW <= '0';	EN <= '0';
		
		
		--A0,A1,A2 --> Tell us whether the Student with given Roll No. is present or absent. 
		when A0 =>
			if(CNT_ATTENDANCE < 7) then
				QPLUS <= A1;
				D <= LCD_ATTENDANCE(CNT_ATTENDANCE);	RS <= '1';	RW <= '0';	EN <= '0';
			else
				QPLUS <= IDLE;
			end if;
		when A1 =>
			QPLUS <= A2;
			D <= LCD_ATTENDANCE(CNT_ATTENDANCE);	RS <= '1';	RW <= '0';	EN <= '1';
		when A2 =>
			QPLUS <= A0;
			D <= LCD_ATTENDANCE(CNT_ATTENDANCE);	RS <= '1';	RW <= '0';	EN <= '0';
			
			
		--After Displaying the Attendance ,Scroll the display SCROLL0,SCROLL1 and SCROLL2 will help in this.
--		when SCROLL0 =>
--			QPLUS <= SCROLL1;
--			D <= LCD_SCROLL;	RS <= '0';	RW <= '0';	EN <= '0';
--		when SCROLL1 =>
--			QPLUS <= SCROLL2;
--			D <= LCD_SCROLL;	RS <= '0';	RW <= '0';	EN <= '1';
--		when SCROLL2 =>
--			QPLUS <= SCROLL0;
--			D <= LCD_SCROLL;	RS <= '0';	RW <= '0';	EN <= '0';
			
		--IDLE State	
		when IDLE =>
			QPLUS <= IDLE;
			
			
		--If None of the Above, go back to CMD0 State.	
		when others =>
			QPLUS <= CMD0;
			D <= X"00"; RS <= '0'; RW <= '0'; EN <='0';
			
		end case;
	end process;
	--End of process 1
	
	--Start of process 2
	process(RSTN, CLK_NEW)					-- Process for reset and state change
	begin

		if (RSTN = '0') then
			Q <= CMD0; 							-- Initialisation
			CNT_CMD <= 0; 						-- Reset all Counts to Zero
			CNT_ROLLNO <= 0; 
			CNT_ATTENDANCE <= 0;
		
		elsif (RISING_EDGE(CLK_NEW)) then
			Q <= QPLUS;								-- Assign next state as present state.
		
			if Q = CMD2 then						-- Increment Count
				CNT_CMD <= CNT_CMD + 1;
			end if;	
		
			if Q = ROLLNO2 then					-- Increment Count
				CNT_ROLLNO <= CNT_ROLLNO + 1;
			end if;
		
			if Q = A2 then							-- Increment Count
				CNT_ATTENDANCE <= CNT_ATTENDANCE + 1;
			end if;
		end if;
	
	end process;
	--End of process 2
	
	process(CLK)
	variable CNT_CLK : integer range 0 to 100 := 0;
	begin
		if(RISING_EDGE(CLK)) then
			if(CNT_CLK = 100) then
				CNT_CLK := 0;
				CLK_NEW <= not CLK_NEW;
			else
				CNT_CLK := CNT_CLK + 1;
			end if;
		end if;
	end process;
end FUNCTIONALITY;