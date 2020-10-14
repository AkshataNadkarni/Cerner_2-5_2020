/* cerner_2^5_2020
*  This 'Ring' program takes N as an input from the User and prints the first N Niven Numbers
*  Niven number is any whole number that is divisible by the sum of its digits. 
*  Ex :24 is a Niven number because, the sum of its digits  2 + 4, is 6, 24 is completely divisible by 6.
*  can run this program at https://tio.run/#ring 
*/
see "Enter an integer number N to see first N Niven numbers" give n 
i = 1
count = 0
if n <= 0
see " " + nl + "Invalid input. Please Enter proper output" return ok
see " "  + nl + "The first "+ n+ " Niven numbers are " + nl
while n > 0
      sum = 0
      if niven(i) = 1
         if count < n         
         see "" + i + " " + nl count +=1 ok           
      ok
      i + =1
end
 
func niven nr
     nrString = string(nr)
     for j = 1 to len(nrString)  
         sum = sum + number(nrString[j])
     next  
     niv = ((nr % sum) = 0)
     return niv