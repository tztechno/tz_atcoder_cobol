
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 input      PIC X(100).
    01 a          PIC 9(10).
    01 b          PIC 9(10).
    01 c          PIC 9(10).
    01 d          PIC 9(10).
    01 t          PIC 9(10).
    01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
    ACCEPT input.
    UNSTRING input DELIMITED BY SPACE INTO a b c d
    DISPLAY a
    DISPLAY b
    DISPLAY c
    DISPLAY d
    COMPUTE t = max(min(b,d)-max(a,c),0)
    MOVE t TO zs.
    DISPLAY FUNCTION TRIM(zs).
    STOP RUN.
