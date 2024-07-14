abc115_a.cbl
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
01 D          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT D.
  EVALUATE D
    WHEN 25
      DISPLAY "Christmas"
    WHEN 24
      DISPLAY "Christmas Eve"
    WHEN 23
      DISPLAY "Christmas Eve Eve"
    WHEN OTHER
      DISPLAY "Christmas Eve Eve Eve"
  END-EVALUATE.
  STOP RUN.
##########################################
##########################################
[my ac]

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INPT       PIC X(30).
  01 D          PIC 9(10).
  01 E          PIC 9(10).
  01 X          PIC 9(10).
  01 ANS        PIC X(30) VALUE 'Christmas Eve Eve Eve'.

PROCEDURE DIVISION.
  ACCEPT INPT.
  UNSTRING INPT DELIMITED BY SPACE INTO D
  COMPUTE E = 25 - D
  COMPUTE X = 9 + 4 * E
  DISPLAY ANS(1:X)
  STOP RUN.

##########################################
[my ac]

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INPT       PIC X(30).
  01 D          PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT INPT.
  UNSTRING INPT DELIMITED BY SPACE INTO D
  IF D = 22
    DISPLAY 'Christmas Eve Eve Eve'
  ELSE IF D = 23
    DISPLAY 'Christmas Eve Eve'
  ELSE IF D = 24
    DISPLAY 'Christmas Eve'
  ELSE
    DISPLAY 'Christmas'
  END-IF.
  STOP RUN.

##########################################
[python]
D=int(input())
print("Christmas"+" Eve"*(25-D))
##########################################
