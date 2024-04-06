
######################################
[test OK but submission error]
  
IDENTIFICATION DIVISION.
PROGRAM-ID. AddTwoNumbers.

DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INP PIC X(10).
  01 A PIC 9(3).
  01 B PIC 9(3).
  01 ANS PIC 9(3).
  01 ANS2 PIC Z(3).
  
PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO A B.
  COMPUTE ANS = A + B.
  MOVE ANS TO ANS2.
  DISPLAY ANS2.
  STOP RUN.
######################################
