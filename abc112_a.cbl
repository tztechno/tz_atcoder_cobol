abc112_a.cbl
#######################################
IF文構造
    IF xxxxxxxx THEN
    ELSE
    STOP RUN.
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
#######################################
[WA,N=1の場合でもELSEに流れる]
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INP PIC X(10000).
  01 N PIC 9(4).    
  01 A PIC 9(4).
  01 B PIC 9(4).
  01 X PIC 9(4).
  01 Y PIC Z(9)9.
PROCEDURE DIVISION.
  ACCEPT N.
  IF N = 1 THEN
    DISPLAY "Hello World"
  ELSE
    ACCEPT A.
    ACCEPT B.
    COMPUTE X = A + B  
    MOVE X TO Y.    
    DISPLAY FUNCTION TRIM(Y)
  STOP RUN.
#######################################
[AC]
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INP PIC X(10000).
  01 N PIC 9(4).    
  01 A PIC 9(4).
  01 B PIC 9(4).
  01 X PIC 9(4).
  01 Y PIC Z(9)9.
PROCEDURE DIVISION.
  ACCEPT N.
  ACCEPT A.
  ACCEPT B.
  COMPUTE X = A + B  
  MOVE X TO Y.  
  IF N = 1 THEN
    DISPLAY "Hello World"
  ELSE
    DISPLAY FUNCTION TRIM(Y)
  STOP RUN.
#######################################
[python]
N=int(input())
if N==1:
    print("Hello World")
else:
    a=int(input())
    b=int(input())
    print(a+b) 
#######################################
