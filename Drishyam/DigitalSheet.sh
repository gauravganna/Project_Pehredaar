now=Attendance_$(date +"%d_%m_%Y_%I_%M_%p").txt
path=/home/dell/Project\ Pehredar/Lets\ Keep\ A\ Count
grep -f "$path"/entry.txt "$path"/exit.txt > tmp.txt					#Finds the common entries in both the files and store it in a tmp file.
cp Database.txt "$now"													#Create an attendance sheet for Each day.
cat tmp.txt | while read p 												#Read each entry and mark Present against that Roll No
do
lineNo=$(grep -n $p Database.txt | cut -d : -f 1)
sed -i "$lineNo"'s/ABSENT/PRESENT/' "$now"
done
rm tmp.txt																#Remove Temporary File
												
lineno=1
total="$(wc -l < "$now")"												#Total Number of Students enrolled in Course.
while  [ $lineno -le $total ]											#run for each student 
do
	HexCode=$(awk -v line="$lineno" 'NR == line { print $3 }' < "$now")
	isPresent=$(awk -v line="$lineno" 'NR == line {print $4 }' < "$now")
	sed -i '32s/.*/	constant LCD_ROLLNO		: ARR_TYPE8 := (X"31", X"36", X"30", X"30", X"31", X"30", X"30",'"${HexCode}"');/' Display_On_LCD.vhd	#change the vhdl file accordingly to display the respective roll number

	if [ $isPresent == "PRESENT" ]; then
		sed -i '36s/.*/	constant LCD_ATTENDANCE : ARR_TYPE6 := (X"50", X"52", X"45", X"53", X"45",X"4e", X"54");/' Display_On_LCD.vhd				#adding HEX encoding for present
	else
		sed -i '36s/.*/	constant LCD_ATTENDANCE : ARR_TYPE6 := (X"41", X"42", X"53", X"45", X"4e",X"54", X"20");/' Display_On_LCD.vhd 				#Adding HEX encoding for Absent
	fi
	./RUN.sh 															#Compile the changed vhd file , create svf file and upload the code to the CPLD Board.
	lineno=$(( $lineno + 1 ))											#Increment the linenumber
	sleep 1																#Latency time . Time to rest for JTAG.
done