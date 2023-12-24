#ABC180_A
#box



/////////////////////////////////////

bad box
input
100
1
2
output
100
001
002

IDENTIFICATION DIVISION.
PROGRAM-ID. Main.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N            PIC 9(3).
01 A            PIC 9(3).
01 B            PIC 9(3).
01 RESULT       PIC 9(1).

PROCEDURE DIVISION.
    ACCEPT N.
    ACCEPT A.
    ACCEPT B.    
    DISPLAY N.
    DISPLAY A.
    DISPLAY B.    
    STOP RUN.
