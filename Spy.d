/* cerner_2^5_2020
This program will check whether a number is Spy number or not.
Spy number is a number  where the sum of it's digits equals the product of it's digit
ex : 123 sum => 1+2+3 = 6 == prod => 1*2*3 = 6
*/
import std.conv;
import std.stdio;
import std.string;
import std.typecons;

int main () { 
   int num;
   int num1,d,sum = 0, prod = 1;  
   writefln("Enter a number: ");
   readf(" %d", &num); // Any integer has to be entered by an User as an input during execution
   // If the compiler doesn't support giving the input then the above line can be commented and below line can be uncommented
   // num = 1125; //canchange this value to any integer value for different output  
   num1 = num;
   while( num1 > 0 ) {
      d = num1 % 10;
      sum = sum + d;
      prod = prod * d;
      num1 = num1 /10 ;
   }
   if(sum == prod)   {        writefln("Entered number %d is a Spy number", num);   }
   else   {        writefln("Entered number %d is not a Spy number", num);   }
   return 0; 
}