IDENTIFICATION DIVISION.
PROGRAM-ID. Main.
DATA DIVISION.

WORKING-STORAGE SECTION.
   01 S           PIC X(3).
   01 A           PIC 9.
   01 B           PIC 9.
   01 ANS         PIC 99 USAGE IS DISPLAY.

PROCEDURE DIVISION.
    ACCEPT S.

    MOVE S(1:1) TO A.
    MOVE S(3:1) TO B.

    MULTIPLY A BY B GIVING ANS.

    IF ANS(1:1) = 0
        DISPLAY ANS(2:1)
    ELSE
        DISPLAY ANS
    END-IF.

    STOP RUN.
