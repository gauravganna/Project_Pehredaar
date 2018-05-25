//This C++ file is created by Gaurav Ganna as part of Project Pehredar.
//This files takes an integer(0 - 9999) as input and output it's corresponding number in Binary Coded Decimal System.

#include <iostream>                 //Include Required Header Files
using namespace std;

//This function takes a digit and outputs it's corresponding binary value
string Dec2Bin(int num){
    string x = "0000";
    short i = 3;
    while(num!=0){
        if(num%2 == 1)
            x[i] = '1';
        i--;
        num = num/2;
    }
    return x;
}

int main(int argc,char * argv []){
    string output = "0000000000000000";         //16 bit Output
    short num ;                
    num = stoi((const char *)argv[1]);             
    // cin >> num;                                 //Taking input from command line
    short i = 15;   

    //This loop invokes Dec2Bin function on each digit of num and saves the resulted binary number in output.                 
    while(num != 0){            
        string a = Dec2Bin(num%10);
        num = num/10;
        for(short j=0;j<4;j++){
            output[i-j] = a[3-j];
        }
        i=i-4;
    }
    cout << output;                             //Displaying the output on the screen.
}