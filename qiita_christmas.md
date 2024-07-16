## COBOLでもうすぐクリスマス

##　はじめに
COBOLは歴史の長い言語でありながら今なお現役で使われています。
その一方でプログラマは減少しつつあり今後人材不足が危惧されています。
なので、多言語を並行して学習している人はその中にCOBOLを入れてみるのも面白いかもしれません。
ここでは、AtCoderの問題をCOBOLで3通りに解いて、COBOLスクリプトの特徴を紹介します。

##　問題
```
問題文：
とある世界では、今日は 12 月 D 日です。
D=25 なら Christmas, D=24 なら Christmas Eve, D=23 なら Christmas Eve Eve,
D=22 なら Christmas Eve Eve Eve と出力するプログラムを作ってください。
22≤D≤25、Dは整数

使用言語：COBOL (Free) (GnuCOBOL 3.1.2)
```
[abc115_a.cbl](https://atcoder.jp/contests/abc115/tasks/abc115_a)

## 解法１：条件分岐
```
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INPT       PIC X(30).  //文字フィールド
  01 D          PIC 9(10).  //数値フィールド

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
```
```
D=int(input())
if D==22:
    print("Christmas Eve Eve Eve")
elif D==23:
    print("Christmas Eve Eve")
elif D==24:
    print("Christmas Eve")
else:
    print("Christmas")
```
puthonと同様にif else文が使えます。

## 解法２：文字列スライス
```
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

```
```
D=int(input())
E=25-D
X=9+4*E
ANS='Christmas Eve Eve Eve'
print(ANS[0:X])
```
ANSの初期値としえ取りうる最大長の文字列を定義しています。
COMPUTEで切り取る文字数を数値計算し、最後に必要な長さを切り取リます。


## 解法３：文字列結合
```
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
  01 INPT       PIC X(30).
  01 D          PIC 9(10).
  01 E          PIC 9(10).
  01 STR1    PIC X(9) VALUE "Christmas".
  01 STR2    PIC X(4) VALUE " Eve".
  01 RESULT  PIC X(100).
  01 PT PIC 99 VALUE 1.
  01 CT PIC 99 VALUE 1.

PROCEDURE DIVISION.
  ACCEPT INPT.
  UNSTRING INPT DELIMITED BY SPACE INTO D.
  COMPUTE E = 25 - D.

  STRING 
    STR1 DELIMITED BY SIZE
    INTO RESULT
    WITH POINTER PT.

  PERFORM VARYING CT FROM 1 BY 1 UNTIL CT > E　//for-loop文
    STRING 
      STR2 DELIMITED BY SIZE
      INTO RESULT
      WITH POINTER PT
  END-PERFORM.

  DISPLAY RESULT.
```
```
D=int(input())
E=25-D
STR1='Christmas'
STR2=' Eve'
RESULT=STR1
for i in range(E):
  RESULT+=STR2
print(RESULT)

```
COBOLでのfor-loop（PERFORM）文
文字列の結合にはSTRING関数を用います。COMPUTEは数値計算専用であり文字列の結合はできません。
WITH POINTERは生成した文字列の長さを把握し次に結合させる文字列の頭の番地を記録させる仕組みで、COBOL特有のものです。
POINTERを設定することで、正しく文字列が結合できます。"Christmas Eve"
設定せずに結合させると、1番地からの上書きになってしまいます。" Evestmas"

## 終わりに

