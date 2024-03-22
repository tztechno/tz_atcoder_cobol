###############################################
###############################################

[display not trimmed number]
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 N PIC 9(3).
PROCEDURE DIVISION.
    ACCEPT N.
    DISPLAY N.
    STOP RUN.

###############################################
IDENTIFICATION DIVISION.
PROGRAM-ID. Main.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 N PIC 9(3).
01 A OCCURS 100 TIMES PIC 9(5).
01 I PIC 9(3).

PROCEDURE DIVISION.
    DISPLAY "Enter N: ".
    ACCEPT N.

    DISPLAY "Enter A (space-separated): ".
    PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
        ACCEPT A(I)
    END-PERFORM.

    DISPLAY "N: " N.
    DISPLAY "A: ".
    PERFORM VARYING I FROM 1 BY 1 UNTIL I > N
        DISPLAY A(I)
    END-PERFORM.

    STOP RUN.
###############################################
