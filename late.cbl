//ABC177_A late

#####################################

IDENTIFICATION DIVISION.
PROGRAM-ID. XXX.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 D          PIC 9(10).
01 S          PIC 9(10).
01 T          PIC 9(10).
01 M          PIC 9(10).
01 ln         PIC X(30).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO D T S.
  MULTIPLY T BY S GIVING M.
  IF D <= M THEN
    DISPLAY "Yes"
  ELSE
    DISPLAY "No"
  END-IF.
  STOP RUN.

#####################################

IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 D          PIC 9(10).
01 S          PIC 9(10).
01 T          PIC 9(10).
01 dv         PIC 9(10).
01 ln         PIC X(30).
01 rm         PIC 9(10).

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO D T S.
  DIVIDE D BY S GIVING dv REMAINDER rm.
  IF dv < T THEN
    DISPLAY "Yes"
  ELSE
    IF T = dv AND ZERO = rm THEN
      DISPLAY "Yes"
    ELSE
      DISPLAY "No"
    END-IF
  END-IF.
  STOP RUN.

#####################################
