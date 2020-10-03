/* cerner_2^5_2020 
   This program prints whether the user entered a valid ISBN number or not
   ISBN number is a unique 10 digit structured numeric book identifier which is printed on every book. 
   The first nine digits of the ISBN number are used to represent the Title, Publisher and Group of the book and the last digit is used for checking whether ISBN is correct or not
   Sometimes the last digit is replaced by 'X' to represent the value of 10.
   It is a valid identifier if sum of 10*digit1 + 9*digit2 + 8*digit3 + 7*digit4 + 6*digit5 + 5*digit6 + 4*digit7 + 3*digit8 + 2*digit9 + 1*digit10 is divisible by 11 without any reminder.
   Ex: 007462542X  => sum = 10*0 + 9*0 + 8*7 + 7*4 + 6*6 + 5*2 + 4*5 + 3*4 + 2*2 + 1*X (X means 10) = 176  sum/11=> 176/11 = 16 so "007462542X" is a valid ISBN.
*/
bool isValidISBN(string isbn) 
{ 
	int n = sizeof(isbn); 
	if (n != 10) 
		return false; 
	int sum = 0; 
	for (int i = 0; i < 9; i++)	{ 
		int digit = isbn[i] - '0'; 
		if (0 > digit || 9 < digit) 
			return false; 
		sum += (digit * (10 - i)); 
	} 
	mixed last = isbn[9]; 
	if (last != 'X' && (last < '0' || last > '9')) 
		return false; 
	sum += ((last == 'X') ? 10 : (last - '0'));
	return (sum % 11 == 0); 
}  
int main() 
{ 
    write("Enter a 10 digit number without space and special characters \n");
   	string isbn =  Stdio.stdin->gets();  
	if (isValidISBN(isbn)) 
		write ("Awesome!! You entered a Valid ISBN number  "+isbn); 
	else
		write ("Sorry!! You entered an Invalid ISBN number  "+isbn); 
	return 0; 
} 