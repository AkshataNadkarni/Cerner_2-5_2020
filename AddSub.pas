{ cerner_2^5_2020 }
{ This program will add 2 numbers without using '+' operator and subtracts 2 numbers without using '-' operator }

program AddSub;
var a,b,Add_res,Sub_res : integer;

begin
   a:=200;
   b:=50;
   Add_res := a -(-b);
   Sub_res := a +((not b)+1);
    writeln('Result of ',a,' + ',b,' = ', Add_res );
    writeln('Result of ',a,' - ',b,' = ',Sub_res);
end.