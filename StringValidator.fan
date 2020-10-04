// cerner_2^5_2020
// This program displays the number of vowels,consonents,digits,spaces and special characters in the input string entered by the user
class StringValidator
{
    static Void main()
    {
        vowels := 0
        consonents := 0
        digits:= 0
        spaces :=0;
        specialchar := 0
        echo("Enter your input")
       	str := Env.cur.in.readLine
		n := Int.fromStr (str, 10, false)
		for (i:=0; i<str.size(); i++)
        {
            if (str[i].lower() == 'a' || str[i].lower() == 'e' || str[i].lower() == 'i' || str[i].lower() == 'o' || str[i].lower() == 'a' ) 
            vowels++;
            else if(str[i].lower() >= 'a' && str[i].lower() <= 'z' )
            consonents++;
            else if(str[i] >= '0' && str[i] <= '9' )
            digits++;
            else if(str[i] == ' ')
            spaces++
            else
            specialchar++
        }	
        echo("Entered string '" + str + "' contains \n'" + vowels + "' Vowels \n'" + consonents + "' Consonents \n'" + digits + "' Digits \n'" + spaces +  "' Spaces \n'" + specialchar + "' Special Characters")
    }
}