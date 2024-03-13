//practiceA.cbl
##################################
1
2 3
test
##################################
##################################
##################################
##################################
##################################
##################################
##################################
IDENTIFICATION DIVISION.
program-id. Hello.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A PIC S9(4).
01 B PIC S9(4).
01 C PIC S9(4).
01 LINE2 PIC X(10).
01 OUTNUM PIC Z(4).
01 S PIC X(100).
 
PROCEDURE DIVISION.
ACCEPT A.
ACCEPT LINE2.
ACCEPT S.
UNSTRING LINE2 DELIMITED BY SPACE INTO B C.

COMPUTE OUTNUM = A + B + C.
DISPLAY FUNCTION TRIM(OUTNUM) SPACE FUNCTION TRIM(S).
##################################
IDENTIFICATION  DIVISION.
PROGRAM-ID.     COBOLPROGRAM.

ENVIRONMENT     DIVISION.

DATA            DIVISION.
WORKING-STORAGE SECTION.
    01 A     PIC 9(5).
    01 STR   PIC X(10).
    01 B     PIC 9(5).
    01 C     PIC 9(5).
    01 S     PIC X(100).
    01 TOTAL PIC ZZZZZ.


PROCEDURE       DIVISION.
MAIN            SECTION.
    ACCEPT   A   FROM SYSIN.
    ACCEPT   STR FROM SYSIN.
    UNSTRING STR DELIMITED BY " " INTO B C.
    ACCEPT   S   FROM SYSIN.

    COMPUTE TOTAL = A + B + C.

    DISPLAY FUNCTION TRIM(TOTAL) " " S.
    STOP RUN.

##################################
PROGRAM-ID. INSURANCE.
DATA DIVISION.
WORKING-STORAGE SECTION.
	01  WORK-AREA.
      03  A         PIC 9(04).
      03  BCINP     PIC X(14).
      03  B         PIC 9(04).
      03  C         PIC 9(04).
      03  S         PIC X(100).
      03  IDX1      PIC 9(02).
      03  IDX2      PIC 9(02).
      03  CNT       PIC 9(04).
      03  CUR       PIC 9(02).
      03  LEN       PIC 9(02).
      03  ANS       PIC ZZZZ9.
      03  DISP.
        05  ANS-DISP PIC X(05).
        05  FILLER  PIC X(01).
        05  S-DISP  PIC X(100).

PROCEDURE DIVISION.
INITIALIZE WORK-AREA.
MOVE 1 TO CUR.
      
ACCEPT A.
ACCEPT BCINP.
ACCEPT S.

  PERFORM VARYING IDX2 FROM CUR BY 1 UNTIL BCINP(IDX2:1) = SPACE
  END-PERFORM.
  COMPUTE LEN = IDX2 - CUR
  MOVE BCINP(CUR:LEN) TO B
  COMPUTE CUR = IDX2 + 1
      
  PERFORM VARYING IDX2 FROM CUR BY 1 UNTIL BCINP(IDX2:1) = SPACE
  END-PERFORM.
  COMPUTE LEN = IDX2 - CUR
  MOVE BCINP(CUR:LEN) TO C

COMPUTE ANS = A + B + C.
MOVE ANS TO ANS-DISP.
MOVE S TO S-DISP.
 
DISPLAY DISP.

##################################
