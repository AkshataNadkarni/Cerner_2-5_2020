/* cerner_2^5_2020
 This program will print the user given string in a particular pattern */
class CernerPrint {
    static public function main():Void {
    var str;
    Sys.print("Enter the string to be printed\n");
    str =Sys.stdin().readLine(); //If the compiler doesn't support interactive input, can comment this line and uncomment the below line
    //str ="*CERNER-HEALTHCARE*"; //can change this value to any other string to get different output 
    var n = str.length, x=n, y=n, z=n-1;
    Sys.print('\n');
    for(i in 0...n+1)    {
        for(j in 0...n*2+1)
        {
            if(j==x||j==y)
            {
            var s = str.charAt(j);
            Sys.print('$s ');
            if(j== n)  continue;
            if(j>=n)
            {
                s = str.charAt(z--);
                Sys.print('$s');
            }
            }
            else
            {
                Sys.print(' ');
            }
        }
        x--;       y++;
        Sys.print('\n');
    }}}

