//abc086_a.cbl
################################
################################
################################
       *> AtCoder My Practice
       *> author: Leonardone @ NEETSDKASU
       *>
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Answer.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
              FUNCTION ALL INTRINSIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
              01 For-Inputing-Values.
                     05 file-access PIC X USAGE COMP-X VALUE IS 1.
                     05 file-handle PIC X(4) USAGE COMP-X.
                     05 file-offset PIC X(8) USAGE COMP-X VALUE IS 0.
                     05 file-nbytes PIC X(4) USAGE COMP-X VALUE IS 100.
                     05 file-buffer PIC X(100).
              01 Input-Values.
                     05 a      BINARY-SHORT.
                     05 b      BINARY-SHORT.
              01 Calc-Values.
                     05 disp   PIC X(5).
       PROCEDURE DIVISION.
       AnswerMain SECTION.
       000-Start.
       
              CALL "CBL_OPEN_FILE"
                     USING "/dev/stdin" file-access 0 0 file-handle.
              CALL "CBL_READ_FILE"
                     USING file-handle file-offset
                            file-nbytes 0 file-buffer.
              CALL "CBL_CLOSE_FILE" USING file-handle.      
              UNSTRING file-buffer DELIMITED BY SPACE INTO a b
              
              MOVE MOD(a,2) TO a.
              MOVE MOD(b,2) TO b.
              
              MOVE "Odd" TO disp.
              IF a = 0 OR b = 0 THEN
                     MOVE "Even" TO disp
              END-IF.

              DISPLAY TRIM(disp).
       END PROGRAM Answer.

################################
      IDENTIFICATION DIVISION.
      PROGRAM-ID. 086A.
      DATA DIVISION.
      WORKING-STORAGE SECTION.
      01 INP PIC X(100).
      01 A PIC 9(5).
      01 B PIC 9(5).
      01 SEKI PIC 9(10).
      01 SHO PIC 9(10).
      01 AMA PIC 9(1).

      PROCEDURE DIVISION.
      ACCEPT INP.
      UNSTRING INP DELIMITED BY " "
      INTO A B.
      COMPUTE SEKI = A * B.
      DIVIDE SEKI BY 2 GIVING SHO REMAINDER AMA.
      IF AMA = 1
         DISPLAY "Odd"
      ELSE
################################
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATCODER.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 INP PIC X(10000).
           01 A PIC 9(5).
           01 B PIC 9(5).
           01 C PIC 9(10).
           01 ANS PIC 9(1).
       PROCEDURE DIVISION.
           ACCEPT INP.
           UNSTRING INP DELIMITED BY SPACE INTO A B.
           COMPUTE C = A * B.
           IF FUNCTION MOD(C, 2) = 0 THEN
               DISPLAY "Even"
           ELSE
               DISPLAY "Odd"
           END-IF.
           STOP RUN.
       END PROGRAM ATCODER.

################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ab1.
   03 ab11 OCCURS 2.
      05 ab   PIC 9(5).
01 cur        PIC 9(12) VALUE 1.
01 d          PIC 9(9).
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(12).
01 ln         PIC X(12).
01 maxlen     PIC 9(1) VALUE 2.
01 x          PIC 9(9).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO AB(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MULTIPLY AB(1) BY AB(2) GIVING x.
  DIVIDE 2 INTO x GIVING x REMAINDER d.
  IF d = 0 THEN
    DISPLAY "Even"
  ELSE
    DISPLAY "Odd"
  END-IF.
  STOP RUN.

################################
### MY ANS with AI
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 INPUT-LINE                 PIC X(12).
01 A                          PIC 9(4) VALUE ZERO.
01 B                          PIC 9(4) VALUE ZERO.
01 LAST-DIGIT-A               PIC 9.
01 LAST-DIGIT-B               PIC 9.
01 EVEN-DIGITS                PIC X(5) VALUE "02468".
01 EVEN-COUNT                 PIC 9 VALUE ZERO.
    88 IS-EVEN                VALUE 1.

PROCEDURE DIVISION.
    ACCEPT INPUT-LINE

    UNSTRING INPUT-LINE
        DELIMITED BY SPACE
        INTO A, B

    DIVIDE A BY 10 GIVING A REMAINDER LAST-DIGIT-A
    DIVIDE B BY 10 GIVING B REMAINDER LAST-DIGIT-B

    INSPECT EVEN-DIGITS TALLYING EVEN-COUNT
        FOR ALL LAST-DIGIT-A, LAST-DIGIT-B
    IF IS-EVEN
       DISPLAY "Even"
    ELSE
       DISPLAY "Odd"
    END-IF
    
    STOP RUN.
    
 
################################   
