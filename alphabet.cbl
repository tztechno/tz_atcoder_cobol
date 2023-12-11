IDENTIFICATION DIVISION.
PROGRAM-ID. CheckCase.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 x PIC X.
01 lowercase-flag PIC X(1).

PROCEDURE DIVISION.

    ACCEPT x.

    IF FUNCTION LOWER-CASE(x) = x
        MOVE "Y" TO lowercase-flag
    ELSE
        MOVE "N" TO lowercase-flag
    END-IF.

    IF lowercase-flag = 'Y'
        DISPLAY "a"
    ELSE
        DISPLAY "A"
    END-IF.

    STOP RUN.
