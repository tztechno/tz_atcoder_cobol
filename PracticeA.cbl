###########################################################
PROGRAM-ID.                      MAIN.
ENVIRONMENT                      DIVISION.
INPUT-OUTPUT                     SECTION.
FILE-CONTROL.
DATA                             DIVISION.
WORKING-STORAGE                  SECTION.
   01 INP PIC X(10000).
   01 A PIC 9(4).
   01 B PIC 9(4).
   01 C PIC 9(4).
   01 X PIC ZZZ9.
   01 S PIC X(100).
PROCEDURE                        DIVISION.
   ACCEPT  A.
   ACCEPT INP.
   UNSTRING INP DELIMITED BY " " INTO B C.
   ACCEPT S.
   COMPUTE  X = A + B + C.
   DISPLAY FUNCTION TRIM(X) " " S.
   STOP RUN.
###########################################################
