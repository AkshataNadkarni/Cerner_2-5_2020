#`{ cerner_2^5_2020 This program prints the Automorphic number from 1 to n. Where n is taken as an input from the user. 
Automorphic number is a number whose square ends in the same digits as the number itself. Ex : 5 => 5*5 => 25, 25 => 25*25=>625 }
my Int $a =50;
say "Enter the maximum limit ";
my $I = get;
my Int $n = Int($I);
my Int $num; my Int $cnum;
my Int $sqr; my Int $rem;
my Int $temp;
my Int $eql = 0;
my Int $i;
say "List of Automorphic numbers between 1 to ", $n ," are \n"; 
say "Number : Square \n";
for 1..$n -> $i {
  $cnum = $i;
  $num =$i;
  $sqr = $cnum * $cnum;
  $temp = 10;
  $eql = 0;
  while $cnum > 0 {
   $rem = $sqr % $temp;
   if $num == $rem {
   $eql = 1;
   last;
   }
   $cnum = Int($cnum/10);
   $temp = $temp*10;   
  }
  if $eql == 1 {
  say $num ,'      :  ',  $sqr;
  }
  }
