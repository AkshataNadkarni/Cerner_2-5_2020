-- cernr_2^5_2020
-- This Program prints whether the User entered a Prime number or not
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Prime is
  N : Integer;
  C : Integer;
  
begin
   Put ("Enter an number: ");  
   Get (N); 
   C := 0;
    for I in 1 .. N loop
    if N rem I = 0 then
    C := C +1;
    end if;
   end loop;
   if C = 2 then
   Put_Line("Entered number " & Integer'Image (N) & " is Prime");
   else
   Put_Line("Entered number " & Integer'Image (N) & " is not Prime");
   end if;
end Prime;