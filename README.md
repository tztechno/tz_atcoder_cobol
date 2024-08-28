# tz_atcoder_cobol

```
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
```

---

### latest

---
```

```
---
```

```
---
```

```
---
```

```
---
```

```
---
```

```
---
```

```
---
```

```
---
```

```
---
```

```
---
```
IDENTIFICATION DIVISION.
PROGRAM-ID. MAIN.
ENVIRONMENT DIVISION.
INPUT-OUTPUT SECTION.
FILE-CONTROL.
DATA DIVISION.
WORKING-STORAGE SECTION.
   01 INP PIC X(1).
   01 ANS PIC X(1).

PROCEDURE DIVISION.
   ACCEPT INP.
   EVALUATE INP
       WHEN 'A' MOVE 'T' TO ANS
       WHEN 'T' MOVE 'A' TO ANS
       WHEN 'C' MOVE 'G' TO ANS
       WHEN 'G' MOVE 'C' TO ANS
       WHEN OTHER MOVE ' ' TO ANS
   END-EVALUATE
   DISPLAY ANS.
   STOP RUN.
```
---
```
  PERFORM VARYING CT FROM 1 BY 1 UNTIL CT > E
    STRING 
      STR2 DELIMITED BY SIZE
      " "    DELIMITED BY SIZE
      INTO RESULT
      WITH POINTER PT
  END-PERFORM.
```
---
```
PROGRAM-ID. MAIN.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-STR1 PIC X(5) VALUE "Hello".
01 WS-STR2 PIC X(5) VALUE "World".
01 WS-RESULT PIC X(30).
01 WS-POINTER PIC 99 VALUE 1.

PROCEDURE DIVISION.
    STRING WS-STR1 DELIMITED BY SIZE
           " "    DELIMITED BY SIZE
           WS-STR2 DELIMITED BY SIZE
        INTO WS-RESULT
        WITH POINTER WS-POINTER
        ON OVERFLOW
            DISPLAY "String overflow occurred"
    END-STRING.

    DISPLAY WS-RESULT.
```
---
```
if文構成
  IF X=7 OR X=5 OR X=3 THEN
  ELSE
```
---

