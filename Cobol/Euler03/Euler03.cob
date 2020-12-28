      * C NELSON 2020
      * The prime factors of 13195 are 5, 7, 13 and 29.
      * What is the largest prime factor of the number 600851475143
      * (Answer = 6857)

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Euler03.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  N           PIC 9(13) VALUE 600851475143.
       01  DIV         PIC 9(8) VALUE 3.
       01  FANSWER     PIC 9(13) VALUE 0.
       01  NSQRT       PIC 9(8) VALUE 0.

       01  RES         PIC 9(13) VALUE 0.
       01  REM         PIC 9(13) VALUE 0.

       01  START-TIME      PIC 9(2) VALUE 0.
       01  END-TIME        PIC 9(2) VALUE 0.
       01  DURATION        PIC 9(2) VALUE 0.

       01  WS-CURRENT-DATE-DATA.
           05  WS-CURRENT-DATE.
               10  WS-CURRENT-YEAR         PIC 9(04).
               10  WS-CURRENT-MONTH        PIC 9(02).
               10  WS-CURRENT-DAY          PIC 9(02).
           05  WS-CURRENT-TIME.
               10  WS-CURRENT-HOURS        PIC 9(02).
               10  WS-CURRENT-MINUTE       PIC 9(02).
               10  WS-CURRENT-SECOND       PIC 9(02).
               10  WS-CURRENT-MILLISECONDS PIC 9(02).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE FUNCTION CURRENT-DATE to WS-CURRENT-DATE-DATA
             SET START-TIME TO WS-CURRENT-MILLISECONDS.

           COMPUTE NSQRT = FUNCTION SQRT (N).

           DIVIDE N BY 2 GIVING RES REMAINDER REM.
           IF REM = 0 THEN
               PERFORM PARA-A WITH TEST BEFORE UNTIL REM>0 OR N<=1
           END-IF.

           PERFORM PARA-B WITH TEST BEFORE UNTIL N<=1 OR DIV>NSQRT.

           IF N = 1 THEN
               SET FANSWER TO DIV
           ELSE
               SET FANSWER TO N
           END-IF.

           MOVE FUNCTION CURRENT-DATE to WS-CURRENT-DATE-DATA
             SET END-TIME TO WS-CURRENT-MILLISECONDS.

           DISPLAY "Answer:    " FANSWER.
           DISPLAY "Duration:  " DURATION "ms".

           STOP RUN.

           PARA-A.
           DIVIDE N BY 2 GIVING RES REMAINDER REM.
           IF REM = 0 THEN
               COMPUTE N = N / 2
           IF N = 1 THEN
               SET DIV TO 2
           END-IF.

           PARA-B.
           DIVIDE N BY DIV GIVING RES REMAINDER REM.
           IF REM = 0 THEN
               COMPUTE N = N / DIV
           ELSE
               COMPUTE DIV = DIV + 2
           END-IF.

       END PROGRAM Euler03.
