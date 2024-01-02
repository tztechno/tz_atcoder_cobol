//ABC178_A Not

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 N PIC 9(5).
       01 INPUT-STRING PIC X(10).

       PROCEDURE DIVISION.
           ACCEPT INPUT-STRING.
           MOVE FUNCTION NUMVAL(INPUT-STRING) TO N.
           IF N=0
               DISPLAY 1
           ELSE
               DISPLAY 0
           END-IF.
           STOP RUN.
