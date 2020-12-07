      * If we list all the natural numbers below 10 that are multiples of 3 or 5,
      * we get 3, 5, 6 and 9. The sum of these multiples is 23.
      * Find the sum of all the multiples of 3 or 5 below 1000.
      * (Answer = 233168)
      *
      * solution uses inclusion-exclusion principle

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Euler01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  SUMOFTHREES      PIC 9(8) VALUE 0.
       01  SUMOFFIVES       PIC 9(8) VALUE 0.
       01  SUMOFFIFTEENS    PIC 9(8) VALUE 0.
       01  FINALANSWER      PIC 9(8) VALUE 0.

       01  I PIC 9(4) VALUE 0.
       01  J PIC 9(4) VALUE 0.
       01  K PIC 9(4) VALUE 0.

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

           PERFORM PARA-A VARYING I FROM 3 BY 3 UNTIL I IS > 999.
           PERFORM PARA-B VARYING J FROM 5 BY 5 UNTIL J IS > 999.
           PERFORM PARA-C VARYING K FROM 15 BY 15 UNTIL K IS > 999.

           ADD SUMOFTHREES TO SUMOFFIVES GIVING FINALANSWER.
           SUBTRACT SUMOFFIFTEENS FROM FINALANSWER.

           MOVE FUNCTION CURRENT-DATE to WS-CURRENT-DATE-DATA
             SET END-TIME TO WS-CURRENT-MILLISECONDS.

           SUBTRACT END-TIME FROM START-TIME GIVING DURATION.

           DISPLAY "Answer:    " FINALANSWER.
           DISPLAY "Duration:  " DURATION "ms".

           STOP RUN.

           PARA-A.
           ADD I TO SUMOFTHREES GIVING SUMOFTHREES.

           PARA-B.
           ADD J TO SUMOFFIVES GIVING SUMOFFIVES.

           PARA-C.
           ADD K TO SUMOFFIFTEENS GIVING SUMOFFIFTEENS.

       END PROGRAM Euler01.
