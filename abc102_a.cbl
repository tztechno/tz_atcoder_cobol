abc102_a.cbl
######################################
######################################
######################################
######################################
######################################
######################################
######################################
IDENTIFICATION DIVISION.
PROGRAM-ID. ABC250D.
      
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
    SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
      
DATA DIVISION.
FILE SECTION.
    FD  SYSIN.
        01 INDATA PIC X(2000000).
WORKING-STORAGE SECTION.
01 ln         PIC X(2000000).
01 N          PIC 9(10).
01 X          PIC 9(10).
01 Y          PIC 9(10).
01 Ans        PIC Z(10).

PROCEDURE DIVISION.
MAIN SECTION.
  OPEN INPUT SYSIN.
  READ SYSIN INTO ln.
  UNSTRING ln DELIMITED SPACE INTO N.
  DIVIDE 2 INTO N GIVING Y REMAiNDER X.
  IF X = 0 then 
      MOVE N TO ANS
  ELSE
      COMPUTE Ans = N * 2
  END-IF.
  DISPLAY FUNCTION TRIM(ANS).
STOP RUN.
######################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 D          PIC 9(10).
01 N          PIC 9(10).
01 X          PIC 9(10).
01 ans        PIC X(10).
01 zs         PIC Z(11).

PROCEDURE DIVISION.
  ACCEPT N.
  DIVIDE 2 INTO N GIVING X REMAINDER D.
  IF D NOT = 0 THEN
    MULTIPLY 2 BY N
  END-IF
  MOVE N TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
######################################
[cf shibata]

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 INPT       PIC X(30).
    01 n          PIC 9(10).
    01 x          PIC 9(10).
    01 t          PIC 9(10).
    01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT n.
  DIVIDE 2 INTO n GIVING x REMAINDER t.

  IF t = 1 THEN
    MULTIPLY 2 BY n
  END-IF

  MOVE n TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
######################################
[入力値をそのまま出力]

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 INPT       PIC X(30).
    01 n          PIC 9(10).
    01 t          PIC 9(10).
    01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
    ACCEPT INPT.
    UNSTRING INPT INTO n
    MOVE n TO zs
    DISPLAY FUNCTION TRIM(zs).
    STOP RUN.
######################################
