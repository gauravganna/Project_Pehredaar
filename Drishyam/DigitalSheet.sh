now=Attendance_$(date +"%Y_%m_%d_%I_%M_%p").txt
path=/home/dell/RFID_AttendanceSystem/Lets\ Keep\ A\ Count
grep -f "$path"/entry.txt "$path"/exit.txt > tmp.txt					#Finds the common entries in both the files and store it in a tmp file.
cp Database.txt "$now"													#Create an attendance sheet for Each day.
cat tmp.txt | while read p 												#Read each entry and mark Present against that Roll No
do
lineNo=$(grep -n $p Database.txt | cut -d : -f 1)
sed -i "$lineNo"'s/ABSENT/PRESENT/' "$now"
done
rm tmp.txt																#Remove Temporary File
												
lineno=1
total="$(wc -l < .txt)"													#total Number of Enrolled in Course.
while  [ $lineno -le $total ]											#run for each student 
do
	HexCode=$(awk -v line="$lineno" -v col="$3" 'NR == line { print $col }' < "$now")
	isPresent=$(awk -v line="$lineno" -v col="$4" 'NR == line {print $col }' < "$now")
	sed -i '31s/.*/	constant LCD_ROLLNO		: ARR_TYPE8 := (X"31", X"36", X"30", X"30", X"31", X"30", X"30",'"${line}"');/' Display_On_LCD.vhd		#change the vhdl file accordingly to display the respective roll number
	if $isPresent == "PRESENT" then
		sed -i '33s/.*/	constant LCD_ATTENDANCE : ARR_TYPE6 := (X"50", X"52", X"45", X"53", X"45",X"4e", X"54");/' Display_On_LCD.vhd				#adding HEX encoding for present
	else
		sed -i '33s/.*/	constant LCD_ATTENDANCE : ARR_TYPE6 := (X"41", X"42", X"53", X"45", X"4e",X"54", X"20");/' Display_On_LCD.vhdl 				#Adding HEX encoding for Absent
	fi
	lineno=$(( $lineno + 1 ))
	sleep 10
done