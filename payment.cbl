//abc173_a payment.cbl
##############################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(10).
01 num        PIC 9(10).
01 qt         PIC 9(10).
01 rm         PIC 9(10).
01 ans        PIC 9(10).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT N.
  DIVIDE N BY 1000 GIVING qt REMAINDER rm.
  COMPUTE num = 1000 - rm.
  DIVIDE num BY 1000 GIVING qt REMAINDER ans.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.
##############################
IDENTIFICATION DIVISION.
PROGRAM-ID. 173A.
DATA DIVISION.
WORKING-STORAGE SECTION.
01 N          PIC 9(05).
01 S          PIC 9(04).
01 OT         PIC 9(04).
01 OUT        PIC ZZ9.
*>
PROCEDURE DIVISION.
  ACCEPT N.
*>
  DIVIDE N BY 1000 GIVING S REMAINDER OT.
  COMPUTE OT = 1000 - OT
  IF OT = 1000
    MOVE 0 TO OT
  END-IF.
*>
  MOVE OT TO OUT.
  DISPLAY FUNCTION TRIM(OUT).
  STOP RUN.
##############################
IDENTIFICATION DIVISION.
PROGRAM-ID. Main.

DATA DIVISION.
WORKING-STORAGE SECTION.
  01 N   PIC 9(10).
  01 rm  PIC 9(10).
  01 ans PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT N.
  COMPUTE rm = FUNCTION MOD (N 1000).
  IF rm = 0 THEN
    DISPLAY 0
  ELSE
    COMPUTE ans = 1000 - rm
    DISPLAY ans(10 - FUNCTION INTEGER(FUNCTION LOG10(ans)):)
  END-IF.
  STOP RUN.

##############################
IDENTIFICATION DIVISION.
PROGRAM-ID. ABC.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N PIC S9(10).
01 A PIC S9(4).
01 B PIC S9(4).
01 C PIC S9(4).
01 D PIC S9(4).
01 E PIC S9(3).

PROCEDURE DIVISION.
    ACCEPT N.
    DIVIDE N BY 1000 GIVING A REMAINDER B.
    COMPUTE C = 1000 - B.
    DIVIDE C BY 1000 GIVING D REMAINDER E.
    
    IF E(1:2) = '00'
        DISPLAY E(3:1)
    ELSE IF E(1:1) = '0'
        DISPLAY E(2:2)
    ELSE
        DISPLAY E(1:3).
##############################