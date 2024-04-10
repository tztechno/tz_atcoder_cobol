
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 INPUT      PIC X(100).
    01 a          PIC 9(10).
    01 b          PIC 9(10).
    01 c          PIC 9(10).
    01 d          PIC 9(10).
    01 t          PIC 9(10).
    01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
    ACCEPT INPUT.
    UNSTRING ln DELIMITED BY SPACE INTO a b c d
    DISPLAY a
    DISPLAY b
    DISPLAY c
    DISPLAY d
    COMPUTE ans = xxxxxxxxxxxxxxxxxxx
    MOVE ans TO zs.
    DISPLAY FUNCTION TRIM(zs).
    STOP RUN.
