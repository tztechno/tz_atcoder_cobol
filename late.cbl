//ABC177_A late

#####################################

       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATCODER.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
           FD SYSIN.
               01 INDATA PIC X(2000000).
       WORKING-STORAGE SECTION.
           01 WK.
               03 INP PIC X(100000).
               03 D PIC 9(18).
               03 S PIC 9(18).
               03 T PIC 9(18).
       PROCEDURE DIVISION.
           OPEN INPUT SYSIN.
           READ SYSIN INTO INP.
           CLOSE SYSIN.
           UNSTRING INP DELIMITED BY SPACE INTO D T S.
           IF T * S >= D THEN DISPLAY "Yes" ELSE DISPLAY "No".
           STOP RUN.
       END PROGRAM ATCODER.

#####################################

IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 D          PIC 9(10).
01 S          PIC 9(10).
01 T          PIC 9(10).
01 dv         PIC 9(10).
01 ln         PIC X(30).
01 rm         PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO D T S.
  DIVIDE D BY S GIVING dv REMAINDER rm.
  IF dv < T THEN
    DISPLAY "Yes"
  ELSE
    IF T = dv AND ZERO = rm THEN
      DISPLAY "Yes"
    ELSE
      DISPLAY "No"
    END-IF
  END-IF.
  STOP RUN.

#####################################
