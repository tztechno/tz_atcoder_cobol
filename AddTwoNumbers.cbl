       IDENTIFICATION DIVISION.
       PROGRAM-ID. AddTwoNumbers.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1           PIC 9(5) VALUE 1.
       01 Num2           PIC 9(5) VALUE 1.
       01 Result         PIC 9(5).

       PROCEDURE DIVISION.
           COMPUTE Result = Num1 + Num2.
           DISPLAY "1 + 1 = " Result.

           STOP RUN.
