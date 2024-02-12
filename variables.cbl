//abc170_a variables.cbl
#####################################
#####################################
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ABC170A.
             
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
       01 X          PIC 9(10).
       01 i          PIC 9(9) COMP.
       01 P          PIC 9(9) VALUE 1.
       01 ANS        PIC Z(17)9.
       
       PROCEDURE DIVISION.
       MAIN SECTION.
           OPEN INPUT SYSIN.
           READ SYSIN INTO ln.
           PERFORM VARYING i FROM 1 BY 1 UNTIL i > 5
               UNSTRING ln DELIMITED BY SPACE INTO X WITH POINTER P
               IF X <> i THEN
                   MOVE i TO ANS
               END-IF
           END-PERFORM.
           DISPLAY FUNCTION TRIM(ANS)
       STOP RUN.
#####################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 x1.
   03 x11 OCCURS 5 INDEXED BY ix.
      05 x    PIC S9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  MOVE 5 TO maxlen.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO x(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  SET ix TO 1.
  PERFORM UNTIL 5 < ix
    SEARCH x11 VARYING ix
      AT END
        CONTINUE
      WHEN ZERO = x(ix)
        MOVE ix TO ans
        SET ix UP BY 1
    END-SEARCH
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

#####################################
IDENTIFICATION DIVISION.
PROGRAM-ID. 170A.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 INP        PIC X(10).
01 TBL.
   03 X       PIC 9(1) OCCURS 5.
01 I          PIC 9(1).
*>
PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY ' '
      INTO X(1) X(2) X(3) X(4) X(5).
*>
  PERFORM VARYING I FROM 1 BY 1 UNTIL X(I) = 0
  END-PERFORM.
*>
  DISPLAY I.
  STOP RUN.

#####################################
IDENTIFICATION DIVISION.
PROGRAM-ID. ABC.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 X OCCURS 5 TIMES PIC 9(4).
01 I PIC 9(1).
01 INPUT-STRING PIC X(20).
PROCEDURE DIVISION.
    ACCEPT INPUT-STRING.
    UNSTRING INPUT-STRING DELIMITED BY SPACE INTO X(1) X(2) X(3) X(4) X(5).
    PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
        IF X(I) = 0
            DISPLAY I
        END-IF
    END-PERFORM.
    STOP RUN.
#####################################
