##############################################################
PIC 9: 数値フィールド
PIC 9 は数値を表すフィールドを宣言するために使用されます。
1つの 9 は1桁の数値を表します。例えば、PIC 9(5) は5桁の整数を表します。
このフィールドは通常、数値演算に使用されます。

PIC X: 文字フィールド
PIC X は文字列を表すフィールドを宣言するために使用されます。
X はアルファベット文字や数字、特殊文字を含む任意の文字を表します。
例えば、PIC X(10) は最大10文字の文字列を表します。

PIC Z: 先頭ゼロ抑制付き数値フィールド
PIC Z は数値を表し、先頭のゼロを抑制するために使用されます。
PIC Z(5) などとすると、先頭のゼロが省略された形で数値を表現できます。
##############################################################
変数名は4文字まで

IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
    01 INPT       PIC X(30).
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
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INP PIC X(10000).
  01 A PIC 9(4).
  01 B PIC 9(4).
  01 X PIC 9(4).
  01 Y PIC 9(4).

PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO A B.
  DIVIDE A BY B GIVING X REMAINDER Y.
      DISPLAY X
      DISPLAY Y.
  STOP RUN.
-----------------------------------
input
5 3
-----------------------------------
output
0001
0002
-----------------------------------
##############################################################
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INP PIC X(10000).
  01 A PIC 9(4).
  01 B PIC 9(4).
  01 C PIC 9(4).
  01 X PIC 9(4).
  01 Y PIC Z(9)9.
PROCEDURE DIVISION.
  ACCEPT INP.
  UNSTRING INP DELIMITED BY " " INTO A B.
  COMPUTE C=A*B  
  DIVIDE C BY 2 GIVING X
  MOVE X TO Y.
  DISPLAY FUNCTION TRIM(Y)
  STOP RUN.
##############################################################
