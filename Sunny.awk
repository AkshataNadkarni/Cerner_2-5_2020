# cerner_2^5_2020
# This program prints Whether the user entered number is Sunny number or not
# Synny number is a number if 1 is added to the number and the square-root of it becomes a whole number 
# Ex : 3 => 3+1 = 4 => square_root(4) => 2 . so 3 is a Sunny number.
BEGIN {
    print "Enter a number";
     getline n< "-"

    num = int(n);
    x=sqrt(num+1);
    if (int(x)==x)
    {
        print num, " is a Sunny number";
    }
    else
    {
        print num, " is not a Sunny number";
    }
  
}