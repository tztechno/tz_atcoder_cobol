abc114_a.cbl
##########################################
if文構成
  IF X=7 OR X=5 OR X=3 THEN
  ELSE
##########################################
##########################################
##########################################
##########################################
##########################################
##########################################
[直接Xを読み取り]
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
  01 X PIC 9(4).
PROCEDURE DIVISION.
  ACCEPT X.
  IF X=7 OR X=5 OR X=3 THEN
      DISPLAY "YES"
  ELSE
      DISPLAY "NO".
  STOP RUN.
  
##########################################
[間接的にXを読み取り]
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INP PIC X(100).
  01 X PIC 9(4).
PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO X.
  IF X=7 OR X=5 OR X=3 THEN
      DISPLAY "YES"
  ELSE
      DISPLAY "NO".
  STOP RUN.
  
##########################################
[python]
X=int(input())
if (X-7)*(X-5)*(X-3)==0:
  print('YES')
else:
  print('NO')
##########################################
