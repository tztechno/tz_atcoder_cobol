## COBOLでもうすぐクリスマス

##　はじめに
##　問題
abc115_a.cbl

## 条件分岐
```
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

## スライス
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

## 文字列結合
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

  PERFORM VARYING CT FROM 1 BY 1 UNTIL CT > E
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



## 他

[python]
D=int(input())
print("Christmas"+" Eve"*(25-D))

