/* cerner_2^5_2020
   This program prints whether the user entered number N is a Smith number or not. N is taken as an input from user
   Smith number : if the sum of digits of the number is equal to the sum of digits of it's prime factor
   Ex: 666 =>6+6+6 = 18 == prime factors of 666 are  2,3,3,37 => 2+3+3+3+7 = 18 
   can run this program in : https://tio.run/#chapel Note : a number needs to be passed as an input to the program
*/ 
var i,n,temp,num: int ;
var prime: int = 1; var sum1,sum2: int = 0;
writeln("Enter a number");
num = stdin.read(int);
temp =num; n=num;
for i in {2..num} {
  if((num % i) == 0) { prime = 0;} 
  }
if(prime == 1)
{ write("\nGiven number is not a smith number");}
else {
writeln("Prime Factors of the number ",num," are");
for i in {2..num} {
while (n % i == 0) {
write(" ",i);
var j:int = i;
while(j>0){
sum1 = sum1 + j%10;
j=j/10;
}
n = n/i;
}
}
while(temp>0){
sum2=sum2+temp%10;
temp = temp/10;
}
if(sum1==sum2) { writeln("\nGreat!! You've entered a Smith number ", num);}
else
writeln("\nSorry!! Entered number ",num," is not a Smith number");
writeln("\nSum of digits of the Prime factor = ",sum1, " and Sum of digits of an Entered number is " , sum2);
}