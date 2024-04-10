//abc098_a.cbl
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(10).
01 maxlen     PIC 9(1) VALUE 2.
01 cur        PIC 9(2) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(2).
01 ans        PIC -(8)9.
01 AB1.
   03 AB11 OCCURS 2.
      05 AB   PIC S9(8).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1
      UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO AB(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  MOVE FUNCTION MAX(
    AB(1) + AB(2),AB(1) - AB(2),AB(1) * AB(2)) TO ans.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

##########################################
[AC] 

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 INPT       PIC X(30).
    01 a          PIC S9(10).
    01 b          PIC S9(10).
    01 c          PIC S9(10).
    01 d          PIC S9(10).
    01 e          PIC S9(10).
    01 t          PIC S9(10).
    01 zs         PIC Z(11).

PROCEDURE DIVISION.
    ACCEPT INPT.
    UNSTRING INPT DELIMITED BY SPACE INTO a b 
    COMPUTE c = a + b
    COMPUTE d = a - b
    COMPUTE e = a * b
    COMPUTE t = FUNCTION MAX(c,d,e)
    
    IF t < 0
        MOVE t TO zs
        DISPLAY '-' FUNCTION TRIM(zs)
    ELSE IF t > 0
        MOVE t TO zs
        DISPLAY FUNCTION TRIM(zs)
    ELSE IF t=0
        DISPLAY 0
    END-IF
    
    STOP RUN.
##########################################
[WA1: minus and zero are lost]

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 INPT       PIC X(30).
    01 a          PIC S9(10).
    01 b          PIC S9(10).
    01 c          PIC S9(10).
    01 d          PIC S9(10).
    01 e          PIC S9(10).
    01 t          PIC S9(10).
    01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
    ACCEPT INPT.
    UNSTRING INPT DELIMITED BY SPACE INTO a b 
    COMPUTE c = a + b
    COMPUTE d = a - b
    COMPUTE e = a * b
    COMPUTE t = FUNCTION MAX(c,d,e)
    MOVE t TO zs
    DISPLAY FUNCTION TRIM(zs)
    STOP RUN.
##########################################
