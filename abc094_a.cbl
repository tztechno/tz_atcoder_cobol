//abc094_a.cbl
####################################
####################################
####################################
####################################
####################################
####################################
####################################
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
PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO A B X.
  IF A <= X AND X <= A + B
      DISPLAY "YES"
  ELSE
      DISPLAY "NO".
  STOP RUN.
####################################
IDENTIFICATION DIVISION.
PROGRAM-ID. test1.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 A PICTURE 999.
01 B PICTURE 999.
01 X PICTURE 999.
01 INp PICTURE X(21).
01 temp picture 9999.
01 S PICTURE 999.
01 N PIC 999.
01 tempb picture 9999.
PROCEDURE DIVISION.
MAIN.
ACCEPT INp.
PERFORM VARYING S FROM 1 BY 1 UNTIL INp(S:1)= SPACE
END-PERFORM.
move S TO temp.
add -1 to temp.
MOVE INp(1:temp) TO A.
add 2 to temp
PERFORM VARYING N FROM temp BY 1 UNTIL INp(N:1)= SPACE
END-PERFORM.
move N TO tempb.
subtract S FROM tempb.
MOVE INp(temp:tempb) TO B.
MOVE N TO temp.
add 1 to temp.
PERFORM VARYING S FROM temp BY 1 UNTIL INp(S:1)= SPACE
END-pERFORM.
move S TO tempb.
subtract N FROM tempb.
MOVE INp(temp:tempb) TO X.
IF X >= A AND X<=A+B THEN
    DISPLAY "YES"
ELSE
    DISPLAY "NO"
END-IF.
STOP RUN.
####################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ABX1.
   03 ABX11 OCCURS 3.
      05 ABX  PIC S9(8).
01 cur        PIC 9(2) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(2).
01 ln         PIC X(10).
01 maxlen     PIC 9(1) VALUE 3.

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO ABX(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  IF ABX(1) <= ABX(3) AND ABX(3) <= ABX(1) + ABX(2) THEN
    DISPLAY "YES";
  ELSE
    DISPLAY "NO";
  END-IF.
  STOP RUN.
####################################
