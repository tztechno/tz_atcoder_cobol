//abc175_a rainy.cbl

    
############################################

IDENTIFICATION DIVISION.
PROGRAM-ID. XXX.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S PIC X(3).
01 ANS PIC 9(1) VALUE 0.
01 DP PIC 9(1) VALUE 0.
01 I PIC 9(1).

PROCEDURE DIVISION.
    ACCEPT S.
    PERFORM VARYING I FROM 1 BY 1 UNTIL I > 3
        IF S(I:1) = 'R'
            ADD 1 TO DP
            IF DP > ANS
                MOVE DP TO ANS
            END-IF
        ELSE
            MOVE 0 TO DP
        END-IF
    END-PERFORM.
    DISPLAY ANS.
    STOP RUN.  

############################################

       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATCODER.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
           FD SYSIN.
               01 INP PIC X(3).
       WORKING-STORAGE SECTION.
           01 WK.
               03 I PIC 9(18).
               03 J PIC 9(18).
               03 K PIC 9(18).
               03 N PIC 9(18).
               03 M PIC 9(18).
               03 ANS PIC 9(17).
               03 ANS-Z PIC Z(14)9.
       PROCEDURE DIVISION.
           OPEN INPUT SYSIN.
           READ SYSIN.
           CLOSE SYSIN.
           IF INP = "RRR" THEN DISPLAY 3
           ELSE IF INP = "RRS" OR INP = "SRR" THEN DISPLAY 2
           ELSE IF INP NOT = "SSS"
               DISPLAY 1
           ELSE DISPLAY 0.
           STOP RUN.
       END PROGRAM ATCODER.

############################################

IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(3).
01 i          PIC 9(10).
01 ans        PIC 9(10) VALUE ZERO.
01 num        PIC 9(10) VALUE ZERO.
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT S.
  PERFORM VARYING i FROM 1 BY 1 UNTIL 3 < i
    IF "R" = S(i:1) THEN
      ADD 1 TO num
    ELSE
      MOVE ZERO TO num
    END-IF
    COMPUTE ans = FUNCTION MAX(ans, num)
  END-PERFORM.
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.

############################################

000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_175_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 S          PIC X(3).
000007 01 i          PIC 9(10).
000008 01 ans        PIC 9(10) VALUE ZERO.
000009 01 num        PIC 9(10) VALUE ZERO.
000010 01 zs         PIC Z(9)9.
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT S.
000014   PERFORM VARYING i FROM 1 BY 1 UNTIL 3 < i
000015     IF "R" = S(i:1) THEN
000016       ADD 1 TO num
000017     ELSE
000018       MOVE ZERO TO num
000019     END-IF
000020     COMPUTE ans = FUNCTION MAX(ans, num)
000021   END-PERFORM.
000022   MOVE ans TO zs.
000023   DISPLAY FUNCTION TRIM(zs).
000024   STOP RUN.

############################################
