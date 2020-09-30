/* cerner_2^5_2020
This program prints the pattern of whole numbers 
*/

#import <Foundation/Foundation.h>

int main () {
   int size=5; // can increase the size of pattern by changing this value to any other integer number.
   int i,j,k;
   printf("Pattern of whole numbers \n\n");
  
   for(i=size;i>=-size;i--)
   {
      for(j=1;j<=abs(i);j++)
      {
          printf("  ");
      }
      for(k=abs(i);k<=size;k++)
      {
          printf("%d ",k);
      }
      printf("\n");
    }
   return 0;
}