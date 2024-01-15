//ABC192_B lowerupper


#################################################
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ABC192.
             
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
             
       DATA DIVISION.
       FILE SECTION.
           FD  SYSIN.
               01 INDATA PIC X(2000000).
       WORKING-STORAGE SECTION.
       01 ln         PIC X(2000000).
       01 S          PIC X(1000).
       01 X          PIC X(1).
       01 d          PIC 9(9).
       01 m          PIC 9(9).
       01 i          PIC 9(9) COMP.
       01 Ans        PIC X(3) VALUE "Yes".
       
       PROCEDURE DIVISION.
       MAIN SECTION.
           OPEN INPUT SYSIN.
           READ SYSIN INTO S.
           PERFORM VARYING i FROM 1 BY 1 UNTIL i > 1000 OR S(i:1) = " "
               DIVIDE i BY 2 GIVING d remainder m
               MOVE FUNCTION upper-case(S(i:1)) TO X
               IF m = 1 AND S(i:1) = X THEN
                   MOVE "No" TO Ans 
               END-IF
               IF m = 0 AND S(i:1) <> X THEN
                   MOVE "No" TO Ans 
               END-IF
           END-PERFORM.
           DISPLAY FUNCTION TRIM(Ans).
       STOP RUN.
#################################################
