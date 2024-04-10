abc070_b.cbl
##############################
##############################
##############################
##############################
##############################
##############################
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATCODER.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
           FD SYSIN.
               01 INP PIC X(2000000).
       WORKING-STORAGE SECTION.
           01 WK.
               03 INP-WK PIC X(8190).
               03 I PIC 9(18).
               03 J PIC 9(18).
               03 K PIC 9(18).
               03 N PIC 9(18).
               03 M PIC 9(18).
               03 A PIC 9(18).
               03 B PIC 9(18).
               03 C PIC 9(18).
               03 D PIC 9(18).
               03 ANS PIC 9(18).
               03 ANS-Z PIC Z(17)9.
               03 PT PIC 9(18) VALUE 1.
       PROCEDURE DIVISION.
           ACCEPT INP-WK.
           UNSTRING INP-WK DELIMITED BY SPACE INTO A B C D.
           COMPUTE ANS = FUNCTION MAX(0, FUNCTION MIN(B, D)
                                         - FUNCTION MAX(A, C))
           MOVE ANS TO ANS-Z.
           DISPLAY FUNCTION TRIM(ANS-Z).
           STOP RUN.
       END PROGRAM ATCODER.
##############################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(3).
01 B          PIC 9(3).
01 C          PIC 9(3).
01 D          PIC 9(3).
01 ln         PIC X(15).
01 mn         PIC 9(3).
01 mx         PIC 9(3).
01 zs         PIC Z(3)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO A B C D.
  COMPUTE mx = FUNCTION MAX(A, C).
  COMPUTE mn = FUNCTION MIN(B, D).
  IF mx < mn THEN
    SUBTRACT mx FROM mn
  ELSE
    MOVE ZERO to MN
  END-IF.
  MOVE mn TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
##############################
[MY BEST COBOL ANS]

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 INPT       PIC X(30).
    01 a          PIC 9(10).
    01 b          PIC 9(10).
    01 c          PIC 9(10).
    01 d          PIC 9(10).
    01 t          PIC 9(10).
    01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
    ACCEPT INPT.
    UNSTRING INPT DELIMITED BY SPACE INTO a b c d
    COMPUTE t = FUNCTION MAX(FUNCTION MIN(b, d)-FUNCTION MAX(a, c),0)
    MOVE t TO zs
    DISPLAY FUNCTION TRIM(zs)
    STOP RUN.
##############################
