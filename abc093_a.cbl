//abc093_a.cbl
####################################
FREE TYPEを使う
!=演算子はCOBOLでは使えないので、NOT =に変更しました。
&演算子はCOBOLでは使えないので、ANDに変更しました。
IF文の終了にEND-IFを追加しました。
####################################
####################################
####################################
####################################
####################################
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATCODER.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
           FD SYSIN.
               01 INDATA PIC X(15000).
       WORKING-STORAGE SECTION.
           01 AL.
               03 AI OCCURS 3 TIMES.
                   05 A PIC X(1).
       PROCEDURE DIVISION.
           ACCEPT AL.
           SORT AI ON ASCENDING KEY A.
           IF AL = "abc" THEN
               DISPLAY "Yes"
           ELSE
               DISPLAY "No"
           END-IF.
           STOP RUN.
       END PROGRAM ATCODER.
####################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ABC1.
   03 ABC11 OCCURS 3.
      05 ABC  PIC 9(1) VALUE 0.
01 cur        PIC 9(1) VALUE 1.
01 len        PIC 9(1) VALUE 1.
01 ln         PIC X(4).
01 maxlen     PIC 9(1) VALUE 3.

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    IF ln(cur:len) = 'a' THEN
      MOVE 1 TO ABC(1)
    ELSE
      IF ln(cur:len) = 'b' THEN
        MOVE 1 TO ABC(2)
      ELSE
        MOVE 1 TO ABC(3)
      END-IF
    END-IF
    COMPUTE cur = cur + 1
  END-PERFORM.
  IF ABC(1) = 1 AND ABC(2) = 1 AND ABC(3) = 1 THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.

####################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S PIC X(10).

PROCEDURE DIVISION.
    ACCEPT S
    IF S(1:1) NOT = S(2:1)
       AND S(2:1) NOT = S(3:1)  
       AND S(3:1) NOT = S(1:1)
        DISPLAY "Yes"
    ELSE
        DISPLAY "No"
    END-IF
    
    STOP RUN.
####################################
