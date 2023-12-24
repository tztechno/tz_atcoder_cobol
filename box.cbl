#ABC180_A
#box

/////////////////////////////////////

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


IDENTIFICATION DIVISION.
PROGRAM-ID. PROGRAM_ID.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 A          PIC 9(10).
01 B          PIC 9(10).
01 N          PIC 9(10).
01 ans        PIC 9(10).
01 ln         PIC X(30).
01 zs         PIC Z(9)9.

PROCEDURE DIVISION.
  ACCEPT ln.
  UNSTRING ln DELIMITED BY SPACE INTO N A B.
  COMPUTE ans = N - A + B
  MOVE ans TO zs.
  DISPLAY FUNCTION TRIM(zs).
  STOP RUN.


/////////////////////////////////////

bad box
input
100
1
2
output
100
001
002

IDENTIFICATION DIVISION.
PROGRAM-ID. Main.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 N            PIC 9(3).
01 A            PIC 9(3).
01 B            PIC 9(3).
01 RESULT       PIC 9(1).

PROCEDURE DIVISION.
    ACCEPT N.
    ACCEPT A.
    ACCEPT B.    
    DISPLAY N.
    DISPLAY A.
    DISPLAY B.    
    STOP RUN.
