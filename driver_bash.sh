#!/bin/bash

#It will be used to determine whether the file has modified from the previous time snap.
echo "Lecture Started"
LAST=`ls -l Attendance_Sheet.txt`											
x=1
while  [ $x -le 12 ]								#Will mark entries for total of 2 minutes at the start time of lecture.
do
	before="$(wc -l < Attendance_Sheet.txt)"					#Store the number of lines in the file before any addition.
	sleep 10										#Wait for 10 second
  	NEW=`ls -l Attendance_Sheet.txt`							#Data to determine whether the file has changed from the previous time snapshot.
  	if [ "$NEW" != "$LAST" ]; then					#If file has changed.
    	my_output="$(awk '!seen[$0]++' Attendance_Sheet.txt)"	#Display all the lines from the original file removing all the duplicates (not just the consecutive ones), while maintaining the original order of statements in the file.
    	#my_output="$(cat Attendance_Sheet.txt | sort | uniq)"	#Alternate Way to remove duplicates but the order is lost.
    	echo "$my_output" > Attendance_Sheet.txt				
    	after="$(wc -l < Attendance_Sheet.txt)"				#Number of Unique lines left.
    	let dif=after-before						#dif stores number of new Entries.
		if [ "$dif" != 0 ]; then					#if new ID's are added.
			sed -i '47s/.*/		if(RISING_EDGE(CLK_NEW) and cnt <= '"${dif}"') then/' Haziri.vhd		#Change the code of VHDL Program to add new Entries in the code.
			#compile="$(g++ -std=c++11 Dec2Bin.cpp)"													#Compiles Dec2Bin c++ file which takes a non negative number of at most 4 digit and returns corresponding BCD Number.
			oldcount="$(./Dec2Bin_Converter "$before")"													#converting the old count to it's corresponding BCD Number.
			sed -i '53s/.*/				O <= "'"${oldcount}"'";/' Haziri.vhd							#Updates the old count in the vhdl program.
			
			./RUN.sh 								#Compile the VHDL Project and upload it to the CPLD Board.
			echo "Successfully Updated"
		fi
	LAST="$NEW"
  	fi
  	x=$(( $x + 1 ))									#+10 seconds. Increments x by 1
done

mv Attendance_Sheet.txt entry.txt					#Rename Attendance Sheet as entry Sheet.
touch Attendance_Sheet.txt							#Create new Attendance Sheet to record exit entries.								
#Doesn't Accept any new entries for the next 30 seconds.

sleep 30											#Sleeps for 30 seconds(Lecture hour). Late Comers aren't allowed!!!. 

#Attendance is again taken when Class gets finished. :) To Remove Proxys. :(
echo "Lecture Over"
LAST=`ls -l Attendance_Sheet.txt`											
x=1
while  [ $x -le 12 ]								#Will mark entries for total of 2 minutes at the end time of lecture.
do
	before="$(wc -l < Attendance_Sheet.txt)"					#Store the number of lines in the file before any addition.
	sleep 10										#Wait for 10 second
  	NEW=`ls -l Attendance_Sheet.txt`							#Data to determine whether the file has changed from the previous time snapshot.
  	if [ "$NEW" != "$LAST" ]; then					#If file has changed.
    	my_output="$(awk '!seen[$0]++' Attendance_Sheet.txt)"	#Display all the lines from the original file removing all the duplicates (not just the consecutive ones), while maintaining the original order of statements in the file.
    	echo "$my_output" > Attendance_Sheet.txt				
    	after="$(wc -l < Attendance_Sheet.txt)"					#Number of Unique lines left.
    	let dif=after-before
		if [ "$dif" != 0 ]; then					#if new ID's are added.
			sed -i '47s/.*/		if(RISING_EDGE(CLK_NEW) and cnt <= '"${dif}"') then/' Haziri.vhd	#change the vhdl program according to the new ID's added
			#compile="$(g++ -std=c++11 Dec2Bin.cpp)"												#Compiles Dec2Bin c++ file which takes a non negative number of at most 4 digit and returns corresponding BCD Number.
			oldcount="$(./Dec2Bin_Converter "$before")"															#converting the old count to BCD
			sed -i '53s/.*/				O <= "'"${oldcount}"'";/' Haziri.vhd						#Updates the old count in the vhdl program.
			
			./RUN.sh 								#Compile the VHDL Project and upload it to the CPLD Board.
			echo "Successfully Updated"
		fi
	LAST="$NEW"
  	fi
  	x=$(( $x + 1 ))									#+10 seconds.Increment x by 1
done

mv Attendance_Sheet.txt exit.txt					#Rename Attendance Sheet as exit sheet.

