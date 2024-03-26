abc096_a.cbl
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
#########################################
IDENTIFICATION                   DIVISION.
PROGRAM-ID.                      ABC_096_A.
ENVIRONMENT                      DIVISION.
DATA                             DIVISION.
WORKING-STORAGE                  SECTION.
    01 INP    PIC X(10).
    01 maxlen PIC 9(1)  VALUE 2.
    01 cur    PIC 9(2)  VALUE 1.
    01 i      PIC 9(18) VALUE 1.
    01 j      PIC 9(18).
    01 len    PIC 9(2).

    01 ab1.
        03 ab11 OCCURS 2.
            05 ab PIC 9(3).

    01 ans    PIC X(2).
    01 ZS     PIC Z(3).
    01 DUMMY  PIC X(1).
PROCEDURE                        DIVISION.
MAIN.
    ACCEPT INP.

    PERFORM maxlen TIMES

        PERFORM VARYING j FROM cur BY 1
            UNTIL INP(j:1) = SPACE
        END-PERFORM

        COMPUTE len = j - cur

        MOVE INP(cur:len) TO ab(i)

        COMPUTE cur = j + 1

        ADD 1 TO i

    END-PERFORM.

    IF ab(2) < ab(1) THEN
        SUBTRACT 1 FROM ab(1)
    END-IF.

    MOVE ab(1) TO ZS.

    PERFORM UNANS.

    DISPLAY ans(1:FUNCTION STORED-CHAR-LENGTH(ans)).
    STOP RUN.

UNANS                            SECTION.
    UNSTRING
        ZS DELIMITED BY ALL SPACE
        INTO DUMMY ans
    END-UNSTRING.
#########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 ab1.
   03 ab11 OCCURS 2.
      05 ab   PIC 9(3).
01 cur        PIC 9(2) VALUE 1.
01 i          PIC 9(18) VALUE 1.
01 j          PIC 9(18).
01 len        PIC 9(2).
01 ln         PIC X(30).
01 maxlen     PIC 9(1) VALUE 2.
01 zs         PIC Z(3).

PROCEDURE DIVISION.
  ACCEPT ln.
  PERFORM maxlen TIMES
    PERFORM VARYING j FROM cur BY 1 UNTIL ln(j:1) = SPACE
    END-PERFORM
    COMPUTE len = j - cur
    MOVE ln(cur:len) TO ab(i)
    COMPUTE cur = j + 1
    ADD 1 TO i
  END-PERFORM.
  IF ab(2) < ab(1) THEN
    SUBTRACT 1 FROM ab(1)
  END-IF.
  MOVE ab(1) TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
#########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A PIC 9(2).
01 B PIC 9(2).
01 LINE1 PIC X(6).
01 OUTNUM PIC 9(2).
01 ANS PIC Z(2).

PROCEDURE DIVISION.
    ACCEPT LINE1.
    UNSTRING LINE1 DELIMITED BY SPACE INTO A B.
    COMPUTE OUTNUM = A - 1.
    IF A <= B THEN
        MOVE A TO ANS
    ELSE
        MOVE OUTNUM TO ANS
    END-IF.
    DISPLAY FUNCTION TRIM(ANS).
    STOP RUN.
#########################################
