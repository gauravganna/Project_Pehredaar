awk `
/EOF/ {exit;} 
 {print;}` < /dev/ttyUSB0 > file.txt