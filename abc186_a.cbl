abc186_a.cbl
############################################
############################################
############################################
############################################
############################################
############################################
############################################
############################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 W          PIC 9(10).
01 ans        PIC Z(9)9.
01 d          PIC 9(10).
01 ln         PIC X(30).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N W.
  DIVIDE N BY W GIVING d.
  MOVE d TO ans.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

############################################
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
  01 X PIC 9(4).
  01 Y PIC 9(4).
  01 zs PIC Z(9)9.
PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO A B.
  DIVIDE A BY B GIVING X REMAINDER Y.
    MOVE X TO zs.
    DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
############################################
[python]
n,w=map(int,input().split())
print(n//w)
############################################
