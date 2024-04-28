abc108_a.cbl
##############################################
##############################################
##############################################
##############################################
##############################################
 IDENTIFICATION DIVISION.
 PROGRAM-ID.     TEST108.
 DATA DIVISION.
 WORKING-STORAGE SECTION.
  01 INP        PIC 9(3).
  01 SHO        PIC 9(2).
  01 AMA        PIC 9(2).
  01 WANS       PIC 9(4).
  01 ANS        PIC ZZZ9.

 PROCEDURE DIVISION.
  ACCEPT INP.
  DIVIDE INP BY 2 GIVING SHO REMAINDER AMA.
  COMPUTE WANS = SHO * (SHO + AMA).
  MOVE WANS      TO ANS.
  DISPLAY FUNCTION TRIM(ANS).

 STOP RUN.
##############################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INP PIC X(10000).
  01 N PIC 9(4).
  01 N2 PIC 9(4).
  01 X PIC 9(4).
  01 Y PIC 9(4).
  01 ANS PIC 9(6).
  01 ANS2 PIC Z(6).

PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO N.
  DIVIDE N BY 2 GIVING X.
  COMPUTE N2 = N + 1.
  DIVIDE N2 BY 2 GIVING Y.
  COMPUTE ANS = X * Y.
  MOVE ANS TO ANS2.
  DISPLAY ANS2.
  STOP RUN.
##############################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
  01 N PIC 9(4).
  01 N2 PIC 9(4).
  01 X PIC 9(4).
  01 Y PIC 9(4).
  01 ANS PIC 9(6).
  01 ANS2 PIC Z(6).

PROCEDURE DIVISION.
  ACCEPT N.
  DIVIDE N BY 2 GIVING X.
  COMPUTE N2 = N + 1.
  DIVIDE N2 BY 2 GIVING Y.
  COMPUTE ANS = X * Y.
  MOVE ANS TO ANS2.
  DISPLAY ANS2.
  STOP RUN.
##############################################
[python]
N=int(input())
print((N//2)*((N+1)//2))
##############################################
