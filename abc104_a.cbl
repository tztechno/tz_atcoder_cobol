abc104_a.cbl
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 R          PIC 9(10).

PROCEDURE DIVISION.
ACCEPT R.
IF R < 1200 THEN
  DISPLAY "ABC"
ELSE
  IF R < 2800 THEN
    DISPLAY "ARC"
  ELSE
    DISPLAY "AGC"
  END-IF
END-IF.
STOP RUN.

#######################################
[MY AC]

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 R          PIC 9(5).

PROCEDURE DIVISION.
    ACCEPT R.
    IF R<1200 THEN
        DISPLAY "ABC"
    ELSE IF R<2800 THEN
        DISPLAY "ARC"    
    ELSE
        DISPLAY "AGC"
    STOP RUN.
     
#######################################
