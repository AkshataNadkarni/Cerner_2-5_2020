<?hh
/* cerner_2^5_2020  
* This Program prints happy number from 1 to n, where n is taken as input from the user.
* Happy number : Replace the number with Sum of squares of it's digits, and repeat until single digit is occurred. If the single digit occurred at the end is equal to 1 then it's a Happy number.
* Happy number ex : 23 => 2*2+3*3 = 13 ---> 13=>1*1+3*3 =10  --->10 => 1*1+0*0 = 1
*/  
    echo "Enter a Number \n" ;
    $ipt =readline(); 
    echo "\nHappy numbers from 1 to $ipt are \n";
    for ($i=1;$i<=$ipt;$i++)
    {
        $num = $i;
        $sum = 0;
        while ($sum != 1 && $sum !=4)
        {
           $sum =0;
           while($num > 0)
            {
               $temp = $num % 10;
               $sum +=($temp*$temp);
               $num = $num / 10;
            }
            $num=$sum;
       }
   if($sum == 1)
   {
    echo "$i \n";
   }
}