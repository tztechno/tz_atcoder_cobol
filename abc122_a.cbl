abc122_a.cbl
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
DATA DIVISION.
WORKING-STORAGE SECTION.
   01 INP              PIC X(1).
   01 ANS              PIC X(1).
   01 TABLE-SIZE       PIC 9 VALUE 4.  *> Table size of 4
   01 MAP-TABLE.
      05 MAP-KEYS      PIC X OCCURS 4 TIMES VALUE 'ACTG'. *> The keys: A, C, T, G
      05 MAP-VALUES    PIC X OCCURS 4 TIMES VALUE 'TGAC'. *> The corresponding values: T, G, A, C
   01 INDEX-COUNTER    PIC 9.

PROCEDURE DIVISION.
   ACCEPT INP.

   *> Find the matching key
   PERFORM VARYING INDEX-COUNTER FROM 1 BY 1 UNTIL INDEX-COUNTER > TABLE-SIZE
       IF INP = MAP-KEYS (INDEX-COUNTER)
           MOVE MAP-VALUES (INDEX-COUNTER) TO ANS
           EXIT PERFORM
       END-IF
   END-PERFORM

   DISPLAY ANS.
   STOP RUN.
##########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
   01 INP PIC X(1).
   01 ANS PIC X(1).

PROCEDURE DIVISION.
   ACCEPT INP.
   EVALUATE INP
       WHEN 'A' MOVE 'T' TO ANS
       WHEN 'T' MOVE 'A' TO ANS
       WHEN 'C' MOVE 'G' TO ANS
       WHEN 'G' MOVE 'C' TO ANS
       WHEN OTHER MOVE ' ' TO ANS
   END-EVALUATE
   DISPLAY ANS.
   STOP RUN.
##########################################
[python]
b=str(input())
if b=='A':
    ans='T'
elif b=='T':
    ans='A'
elif b=='C':
    ans='G'
elif b=='G':
    ans='C'
print(ans)
##########################################
