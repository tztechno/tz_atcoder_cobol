##############################################################

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

##############################################################

IDENTIFICATION DIVISION.
PROGRAM-ID. ArithmeticOperations.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 Num1 PIC 9(5) VALUE 12345.
01 Num2 PIC 9(5) VALUE 67890.
01 Result PIC 9(6).

PROCEDURE DIVISION.
    COMPUTE Result = Num1 + Num2.
    DISPLAY "Addition Result: " Result.
    
    COMPUTE Result = Num1 - Num2.
    DISPLAY "Subtraction Result: " Result.
    
    COMPUTE Result = Num1 * Num2.
    DISPLAY "Multiplication Result: " Result.
    
    COMPUTE Result = Num1 / Num2.
    DISPLAY "Division Result: " Result.
    
    STOP RUN.

##############################################################
