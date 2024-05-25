abc116_a.cbl
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
###########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(30).
01 AB         PIC 9(10).
01 BC         PIC 9(10).
01 CA         PIC 9(10).
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO AB BC CA.
  COMPUTE ans = AB * BC / 2.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

###########################################
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
  01 Y PIC Z(9)9.
PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO A B.
  COMPUTE C=A*B  
  DIVIDE C BY 2 GIVING X
  MOVE X TO Y.
  DISPLAY FUNCTION TRIM(Y)
  STOP RUN.
###########################################
[python]
a,b,c=map(int,input().split())
print(a*b//2)
###########################################
