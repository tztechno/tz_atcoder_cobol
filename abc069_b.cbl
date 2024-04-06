abc069_b.cbl
#########################################
#########################################
#########################################
IDENTIFICATION                   DIVISION.
PROGRAM-ID.                      ABC_069_B.
ENVIRONMENT                      DIVISION.
DATA                             DIVISION.
WORKING-STORAGE                  SECTION.
    01 s      PIC X(100).
    01 tmp    PIC X(4).
    01 len    PIC 9(3).

    01 ZS     PIC Z(3).
    01 DUMMY  PIC X(1).

    01 tmpl   PIC 9(2).
    01 l      PIC X(2).

PROCEDURE                        DIVISION.
MAIN.
    ACCEPT s.

    MOVE FUNCTION STORED-CHAR-LENGTH(s) TO len.

    SUBTRACT 2 FROM len GIVING tmpl.

    MOVE tmpl TO ZS.

    PERFORM UNLEN.

    STRING
        s(1:1)
        l(1:FUNCTION STORED-CHAR-LENGTH(l))
        s(len:1)
        INTO tmp
    END-STRING.

    DISPLAY tmp.
    STOP RUN.

UNLEN                            SECTION.
    UNSTRING
        ZS DELIMITED BY ALL SPACE
        INTO DUMMY l
    END-UNSTRING.
#########################################
IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 dummy      PIC X(1).
01 l          PIC X(2).
01 len        PIC 9(3).
01 s          PIC X(100).
01 tmp        PIC X(4).
01 tmpl       PIC 9(2).
01 zs         PIC Z(3).

PROCEDURE DIVISION.
  ACCEPT s.
  MOVE FUNCTION STORED-CHAR-LENGTH(s) TO len.
  SUBTRACT 2 FROM len GIVING tmpl.
  MOVE tmpl TO zs.
  PERFORM UNLEN.
  STRING
    s(1:1)
    l(1:FUNCTION STORED-CHAR-LENGTH(l))
    s(len:1)
    INTO tmp
  END-STRING.
  DISPLAY FUNCTION TRIM(tmp).
  STOP RUN.

UNLEN SECTION.
  UNSTRING
    zs DELIMITED BY ALL SPACE
    INTO dummy l
  END-UNSTRING.

#########################################
