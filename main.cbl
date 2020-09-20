# cerner_2^5_2020
IDENTIFICATION DIVISION.
PROGRAM-ID. HELLO.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-TABLE.
05 WS-A OCCURS 10 TIMES INDEXED BY I.
10 WS-B PIC X(1) OCCURS 10 TIMES INDEXED BY J.
01 N PIC 9(2) VALUE 10.  
PROCEDURE DIVISION.
   PERFORM A-PARA VARYING I FROM 1 BY 1 UNTIL I>N
           AFTER J FROM 1 BY 1 UNTIL J>I
   PERFORM B-PARA VARYING I FROM 1 BY 1 UNTIL I>N.
STOP RUN.
   A-PARA.
    MOVE '*' TO WS-B(I,J).
   B-PARA.
   
   DISPLAY WS-A(I).
   