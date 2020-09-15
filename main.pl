#cerner_2^5_2020
# This program will print the  main.pl program itself
#
open(FH,"<main.pl"); 
while(<FH>)     
{
	print "$_";
}
close FH;