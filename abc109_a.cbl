abc109_a.cbl
#############################################
#############################################
#############################################
#############################################
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

PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO A B.
  COMPUTE C = A * B.
  DIVIDE C BY 2 GIVING X REMAINDER Y.
  
  IF Y = 1
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.

  STOP RUN.

#############################################
[python]
a,b=map(int,input().split())
if (a*b)%2==1 :
    print('Yes')
else:
    print('No')
#############################################
