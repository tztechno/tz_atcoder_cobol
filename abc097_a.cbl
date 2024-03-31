abc097_a.cbl
#########################################
#########################################
#########################################
#########################################
#########################################
       IDENTIFICATION        DIVISION.
       PROGRAM-ID.           ATCODER.
       ENVIRONMENT           DIVISION.
       INPUT-OUTPUT          SECTION.
       FILE-CONTROL.
       DATA                  DIVISION.
       WORKING-STORAGE       SECTION.
         01  INP                       PIC  X(100).
         01  A                         PIC  9(3).
         01  B                         PIC  9(3).
         01  C                         PIC  9(3).
         01  D                         PIC  9(3).
         01  DIS-AB                    PIC  9(3).
         01  DIS-BC                    PIC  9(3).
         01  DIS-AC                    PIC  9(3).
         01  ANS                       PIC  X(100).
       PROCEDURE             DIVISION.
         ACCEPT  INP  FROM  CONSOLE.
         UNSTRING  INP  DELIMITED  BY  SPACE  INTO  A B C D.
         COMPUTE  DIS-AB  =  B  -  A.
         COMPUTE  DIS-BC  =  C  -  B.
         COMPUTE  DIS-AC  =  C  -  A.
         IF  (DIS-AC  <=  D)  OR  (DIS-AB  <=  D  AND  DIS-BC  <  D)
           THEN
             MOVE  'Yes'        TO  ANS
           ELSE 
             MOVE  'No'         TO  ANS
         END-IF. 
         DISPLAY  FUNCTION  TRIM(ANS).
         STOP  5963.
       END  PROGRAM  ATCODER.
#########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 abcd1.
   03 abcd11 OCCURS 4.
      05 abcd PIC 9(3).
01 cur        PIC 9(2) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(2).
01 ln         PIC X(16).
01 maxlen     PIC 9(1) VALUE 4.
01 tmp12      PIC 9(3).
01 tmp13      PIC 9(3).
01 tmp23      PIC 9(3).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO abcd(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  COMPUTE tmp12 = abcd(1) - abcd(2).
  COMPUTE tmp13 = abcd(1) - abcd(3).
  COMPUTE tmp23 = abcd(2) - abcd(3).
  IF (tmp13 <= abcd(4)) THEN
    DISPLAY "Yes"
  ELSE
    IF (tmp12 <= abcd(4)) AND (tmp23 <= abcd(4)) THEN
      DISPLAY "Yes"
    ELSE
      DISPLAY "No"
    END-IF
  END-IF.
  STOP RUN.
#########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. A-Birthday.
 
DATA DIVISION.
WORKING-STORAGE SECTION.
01 INP      PIC X(100).
01 IN-A     PIC 9(3).
01 IN-B     PIC 9(3).
01 IN-C     PIC 9(3).
01 IN-D     PIC 9(3).
01 AB       PIC 9(3).
01 BC       PIC 9(3).
01 AC       PIC 9(3).

PROCEDURE DIVISION.
MAIN-001.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY ALL ' '
      INTO IN-A IN-B IN-C IN-D.
  
  COMPUTE AB = IN-A - IN-B.
  COMPUTE BC = IN-B - IN-C.
  COMPUTE AC = IN-A - IN-C.

  IF (AC <= IN-D) OR (AB <= IN-D AND BC <= IN-D)
    DISPLAY 'Yes'
  ELSE 
    DISPLAY 'No'
  END-IF.
 
MAIN-EXIT.
  STOP RUN.
#########################################
