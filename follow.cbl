//ABC182_A
//Follow
//input= 200 300


000001 IDENTIFICATION DIVISION.
000002 PROGRAM-ID. ABC_182_A.
000003 
000004 DATA DIVISION.
000005 WORKING-STORAGE SECTION.
000006 01 A          PIC 9(10).
000007 01 B          PIC 9(10).
000008 01 ans        PIC 9(10).
000009 01 ln         PIC X(30).
000010 01 zs         PIC Z(9)9.
000011 
000012 PROCEDURE DIVISION.
000013   ACCEPT ln.
000014   UNSTRING ln DELIMITED BY SPACE INTO A B.
000015   COMPUTE ans = 2 * A + 100 - B.
000016   MOVE ans TO zs.
000017   DISPLAY FUNCTION TRIM(zs).
000018   STOP RUN.


#############################################

       IDENTIFICATION DIVISION.
       PROGRAM-ID. ATCODER.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
           FD SYSIN.
               01 INDATA PIC X(2000000).
       WORKING-STORAGE SECTION.
           01 WK.
               03 INP PIC X(2000000).
               03 A PIC 9(6).
               03 B PIC 9(6).
               03 ANS PIC Z(10)9.
       PROCEDURE DIVISION.
           OPEN INPUT SYSIN.
           READ SYSIN INTO INP.
           UNSTRING INP DELIMITED BY SPACE INTO A B.
           CLOSE SYSIN.
           COMPUTE ANS = 2 * A + 100 - B.
           DISPLAY FUNCTION TRIM(ANS).
           STOP RUN.
       END PROGRAM ATCODER.



