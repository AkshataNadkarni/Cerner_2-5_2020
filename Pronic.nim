#[ cerner_2^5_2020
This program prints whether the user entered number is pronic number or not
A number is called as Pronic number if it is a product of 2 consecutive numbers
Ex : 4*5 = 20 , 6*7 = 42, So 20 and 42 are pronic numbers
]#
import strutils
var num = 0
var flag = 0
var n = 0
try:
  stdout.write "Input positive integer number: \n"
  num = stdin.readline.parseInt
except ValueError:
  raise newException(ValueError, "You must enter a positive number")
for i in 0..num:
  if i*(i+1) == num:
    flag = 1 
    n = i 
    break
if flag == 1:
  echo num," is a Pronic Number as it is a product of 2 consecutive numbers :",n," and ", n+1
else:
  echo num, " is not a Pronic Number"