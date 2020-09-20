-module(evenodd).
% cerner_2^5_2020
% This program will check whether the variable is having an even or odd value
-export([start/0]). 

start() -> 
   A = 100 , % can change the value of A to any number to see the different output   
   if 
      A rem 2 == 0 -> 
         io:fwrite("A is assigned with an Even value ~w",[A]); 
      true -> 
         io:fwrite("A is assigned with an Odd value ~w ",[A]) 
   end.