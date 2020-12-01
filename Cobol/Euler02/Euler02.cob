      * Placeholder

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Euler02.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  FINALANSWER      PIC 9(8) VALUE 0.

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



           MOVE FUNCTION CURRENT-DATE to WS-CURRENT-DATE-DATA
             SET END-TIME TO WS-CURRENT-MILLISECONDS.

           SUBTRACT END-TIME FROM START-TIME GIVING DURATION.

           DISPLAY "Answer:    " FINALANSWER.
           DISPLAY "Duration:  " DURATION "ms".

           STOP RUN.


       END PROGRAM Euler02.
