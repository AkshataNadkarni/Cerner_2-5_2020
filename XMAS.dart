/* cerner_2^5_2020 
This program will print the xmas tree pattern
*/
import 'dart:io';
void main(){
   int i,j,k;
   int h=3,w=4;
   int s=w*5;
   int r=1,m=1;
   for(r=1;r<=h;r++) {
       for(i=m;i<=w;i++)  {
          for(j=s;j>=i;j--) {
              stdout.write(" "); }
          for(k=1;k<=i;k++) {
              stdout.write("# ");}
          stdout.write("\n");    }
        m+=2;w+=2;   }
  for(i=1;i<=4;i++) {
      for(j=s-3;j>=1;j--) {
          stdout.write(" "); }
      for(k=1;k<=4;k++) {
          stdout.write("# ");}
      stdout.write("\n");  }
}