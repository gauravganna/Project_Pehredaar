#Command Line arguments to compile the Project.
quartus_sh --flow compile  Digital_Attendance_Sheet.qpf

#Command Line arguments to create .svf file.
quartus_cpf -c -q 10MHz -g 3.3 -n p ./output_files/Digital_Attendance_Sheet.pof DisplayOnLCD.svf

#Command Line arguments to upload our code on the CPLD Board.
cat JTAG_Commands.txt  | jtag