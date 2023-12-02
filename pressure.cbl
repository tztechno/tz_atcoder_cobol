       IDENTIFICATION DIVISION.
       PROGRAM-ID. Main.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 D PIC 9(5).
       01 ANS PIC 9(5)V9(2).
       01 INPUT-STRING PIC X(10).

       PROCEDURE DIVISION.
           DISPLAY "Enter an integer: " WITH NO ADVANCING
           ACCEPT INPUT-STRING.
           MOVE FUNCTION NUMVAL(INPUT-STRING) TO D.

           IF D IS NUMERIC
               COMPUTE ANS = D / 100
               DISPLAY ANS
           ELSE
               DISPLAY "Invalid input. Please enter an integer."
               MOVE 1 TO RETURN-CODE
           END-IF.

           STOP RUN.
