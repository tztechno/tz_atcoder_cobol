abc122_a.cbl
##########################################
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
