abc105_a.cbl
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INP PIC X(10000).
  01 A PIC 9(4).
  01 B PIC 9(4).
  01 X PIC 9(4).
  01 Y PIC 9(4).

PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO A B.
  DIVIDE A BY B GIVING X REMAINDER Y.
  IF Y = 0
      DISPLAY 0
  ELSE
      DISPLAY 1.
  STOP RUN.
#######################################
