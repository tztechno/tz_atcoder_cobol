変数名は4文字まで

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 INPT      PIC X(30).
    01 a          PIC 9(10).
    01 b          PIC 9(10).
    01 c          PIC 9(10).
    01 d          PIC 9(10).
    01 t          PIC 9(10).
    01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
    ACCEPT INPT.
    UNSTRING INPT DELIMITED BY SPACE INTO a b c d
    DISPLAY d
    MOVE d TO zs.
    DISPLAY zs.
    DISPLAY FUNCTION TRIM(zs).
    STOP RUN.


-----------------------------------
input
0 75 25 100
-----------------------------------
output
0000000100   :before
       100　 :0が空白に
100          :空白をdelete
-----------------------------------
