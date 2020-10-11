CO cerner_2^5_2020 CO
CO This program prints the first 32 numbers, their binary value, grey code value and the decoded value CO
CO can run this program at https://tio.run/#algol68g   # CO
BEGIN
   OP GRAY = (BITS b) BITS : b XOR (b SHR 1);	
   OP YARG = (BITS g) BITS :			
   BEGIN
      BITS b := g, mask := g SHR 1;
      WHILE mask /= 2r0 DO b := b XOR mask; mask := mask SHR 1 OD;
      b
   END;
   print (("Num Binary   Gray   Decoded",newline));
   FOR i FROM 0 TO 31 DO
      printf (($zd, ": ", 2(2r5d, "    "), 2r5dl$, i, BIN i, GRAY BIN i, YARG GRAY BIN i))
   OD
END