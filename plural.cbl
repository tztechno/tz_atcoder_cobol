//ABC179_A 
//plural


#########################################################

IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 S          PIC X(1000).
01 ans        PIC X(1002).

PROCEDURE DIVISION.
  ACCEPT S.
  IF "s" = S(FUNCTION STORED-CHAR-LENGTH(S) : 1) THEN
    STRING
      FUNCTION TRIM(S)
      "es"
      INTO ans
    END-STRING
  ELSE
    STRING
      FUNCTION TRIM(S)
      "s"
      INTO ans
    END-STRING
  END-IF.
  DISPLAY FUNCTION TRIM(ans).
  STOP RUN.

#########################################################
