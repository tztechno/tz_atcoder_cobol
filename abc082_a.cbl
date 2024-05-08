abc082_a.cbl
##########################################
##########################################
##########################################
      IDENTIFICATION DIVISION.
      PROGRAM-ID. 082A.
      DATA DIVISION.
      WORKING-STORAGE SECTION.
      01 INP PIC X(100).
      01 A PIC 9(3).
      01 B PIC 9(3).
      01 WA PIC 9(3).
      01 X  PIC 9(3).
      01 XX PIC ZZ9.
      01 AMA PIC 9(1).
      
      PROCEDURE DIVISION.
      ACCEPT INP.
      UNSTRING INP DELIMITED BY " "
      INTO A B.
      COMPUTE WA = A + B 
      DIVIDE WA BY 2 GIVING X REMAINDER AMA
      IF AMA = 0
      THEN
         CONTINUE
      ELSE
         COMPUTE X = X + 1
      END-IF.
      MOVE X TO XX.
      DISPLAY XX.
      STOP RUN.
      
##########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 D          PIC 9(3).
01 R          PIC 9(3).
01 a          PIC 9(3).
01 b          PIC 9(3).
01 ln         PIC X(7).
01 zs         PIC Z(3)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO a b.
  ADD a TO b.
  DIVIDE 2 INTO b GIVING D REMAINDER R.
  ADD R TO D.
  MOVE D TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

##########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INP PIC X(10000).
  01 A PIC 9(4).
  01 B PIC 9(4).
  01 C PIC 9(4).
  01 X PIC 9(4).
  01 Y PIC 9(4).
  01 ANS PIC Z(3).

PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO A B.
  COMPUTE C = A + B + 1.
  DIVIDE C BY 2 GIVING X REMAINDER Y.
  MOVE X TO ANS.
  DISPLAY FUNCTION TRIM(ANS).
  STOP RUN.
##########################################
[python]
import math
a,b=map(int,input().split())
print( (a+b+1)//2 )
##########################################
