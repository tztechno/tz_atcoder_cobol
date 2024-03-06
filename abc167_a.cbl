//abc167_a.cbl
################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(10).
01 T          PIC X(10).
01 Num        PIC 9(10).

PROCEDURE DIVISION.
    ACCEPT S.
    ACCEPT T.
    UNSTRING S DELIMITED BY ' '
        INTO S COUNT Num.
    IF S = T (1:Num)
        DISPLAY "Yes"
    ELSE
        DISPLAY "No"
    STOP RUN.

################################
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
               03 N PIC 9(11).
               03 S PIC X(11).
               03 T PIC X(11).
       PROCEDURE DIVISION.
           OPEN INPUT SYSIN.
           READ SYSIN INTO S.
           READ SYSIN INTO T.
           CLOSE SYSIN.
           MOVE FUNCTION STORED-CHAR-LENGTH(S) TO N.
           IF S(1:N) = T(1:N) THEN
               DISPLAY "Yes"
           ELSE
               DISPLAY "No"
           END-IF.
           STOP RUN.
       END PROGRAM ATCODER.
################################
IDENTIFICATION DIVISION.
PROGRAM-ID. 167A.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(12).
01 T          PIC X(12).
01 L1         PIC 9(02).
01 L2         PIC 9(02).
*>
PROCEDURE DIVISION.
  ACCEPT S.
  ACCEPT T.
  UNSTRING S DELIMITED BY ' '
      INTO S COUNT L1.
  UNSTRING T DELIMITED BY ' '
      INTO T COUNT L2.
*>
  IF (L2 = L1 + 1) AND
     (S(1:L1) = T (1:L1))
    DISPLAY 'Yes'
  ELSE
    DISPLAY 'No'
  END-IF. 
*>
  STOP RUN.

################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S              PIC X(11).
01 T              PIC X(11).

PROCEDURE DIVISION.
  ACCEPT S.
  ACCEPT T.

  IF S = T(1 : FUNCTION STORED-CHAR-LENGTH(T) - 1)
      DISPLAY "Yes"
  ELSE
      DISPLAY "No"
  END-IF.
  STOP RUN.
################################
