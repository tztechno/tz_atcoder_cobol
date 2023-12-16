
IDENTIFICATION DIVISION.
PROGRAM-ID. NumberChecker.

DATA DIVISION.
WORKING-STORAGE SECTION.

01 x PIC S9(5).
01 y PIC X(5).

PROCEDURE DIVISION.
    ACCEPT x.
    IF x >= 0
        MOVE x TO y
        IF y(1:4) = "0000"
            MOVE y(5:1) TO y
        ELSE IF y(1:3) = "000"
            MOVE y(4:2) TO y        
        ELSE IF y(1:2) = "00"
            MOVE y(3:3) TO y    
        ELSE IF y(1:1) = "0"
            MOVE y(2:4) TO y  
        ELSE
            MOVE y(1:5) TO y   
    ELSE
        MOVE 0 TO y
    END-IF.
    DISPLAY y.
    STOP RUN.
