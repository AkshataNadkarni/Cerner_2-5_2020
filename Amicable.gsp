/* cerner_2^5_2020
*  This 'Gosu' program takes 2 numbers as an input from the user and prints whether the entered numbers are Amicable or not
*  Amicable numbers are those if sum of  perfect divisors of number1 is equal to number2 and the sum of perfect divisors of number2 is equal to number1.
*  Ex : 220 ->Sum of perfect divisors (1+2+4+5+10+11+20+22+44+55+110) = 284 (which is equal to no. 2)
*       284 ->Sum of perfect divisors (1+2+4+71+142)=220 (which is equal to no. 1) So,  220 and 284 are amicable.
*  can be run at https://ideone.com/l/gosu
*/
uses java.io.InputStreamReader
uses java.util.Scanner
uses java.lang.System

var scanner = new Scanner( new InputStreamReader( System.in ) )
print("Enter the first number: ")
var num1 = scanner.nextInt();
print("Enter the second number: ")
var num2 = scanner.nextInt()
var sum_num1 = 0
var sum_num2 = 0
if(num1 <= 0 || num2 <= 0)
print("0 or negative numbers are not allowed.Please enter valid input")
else {
for (i in 1..num1-1){
    if ((num1 % i) == 0)  {
      sum_num1 += i
    }}
for (i in 1..num2-1) {
    if (num2 % i == 0)    {
        sum_num2 += i
    }}
if (sum_num1 == num2 && sum_num2 == num1){
print("The numbers ${num1} and ${num2} are Amicable Because")
print("The sum of the proper divisors of ${num1} is ${sum_num1} which equal to the 2nd number ${num2}")
print("The sum of the proper divisors of ${num2} is ${sum_num2} which equal to the 1st number ${num1}")
}
else{
print("These numbers ${num1} and ${num2} are Not Amicable.")
print("The sum of the proper divisors of ${num1}  is ${sum_num1} which is not equal to the 2nd number ${num2}")
print("The sum of the proper divisors of ${num2} is ${sum_num2} which is not equal to the 1st number ${num1}")
}}