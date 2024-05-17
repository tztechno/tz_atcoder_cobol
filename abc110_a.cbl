abc110_a.cbl
###########################################
###########################################
###########################################
###########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ln         PIC X(400).
01 maxlen     PIC 9(10) VALUE 100 COMP.
01 cur        PIC 9(10) VALUE 1 COMP.
01 i          PIC 9(10) VALUE 1 COMP.
01 j          PIC 9(10) COMP.
01 len        PIC 9(10) COMP.
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.
01 ABC1.
   03 ABC11 OCCURS 3.
      05 ABC  PIC S9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM 3 TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO ABC(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  SORT ABC11 ON DESCENDING ABC.
  COMPUTE ans = ABC(1) * 10 + ABC(2) + ABC(3).
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

###########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 INPT       PIC X(30).
    01 a          PIC 9(10).
    01 b          PIC 9(10).
    01 c          PIC 9(10).
    01 m          PIC 9(10).    
    01 t          PIC 9(10).
    01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
    ACCEPT INPT.
    UNSTRING INPT DELIMITED BY SPACE INTO a b c
    COMPUTE m=FUNCTION MAX(a,b,c)
    COMPUTE t=a+b+c+m*9   
    MOVE t TO zs.
    DISPLAY FUNCTION TRIM(zs).
    STOP RUN.
###########################################
[python]
a,b,c=map(int,input().split())
ans=(a+b+c)+max(a,b,c)*9
print(ans)
###########################################
