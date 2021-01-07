      * C NELSON 2021
      * If we list all the natural numbers below 10 that are multiples of 3 or 5,
      * we get 3, 5, 6 and 9. The sum of these multiples is 23.
      * Find the sum of all the multiples of 3 or 5 below 1000.
      * (Answer = 233168)
      *
      * solution uses arithmetic series formula with inclusion-exclusion principle.
      * also uses 'nested Cobol program' or 'subprogram' as a user defined
      * function with parameters.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. Euler01_b.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  FINALANSWER     PIC 9(8).
       01  SUMOFTHREES     PIC 9(8).
       01  SUMOFFIVES      PIC 9(8).
       01  SUMOFFIFTEENS   PIC 9(8).

       01  A-VAL           PIC 9(8) VALUE 0.
       01  D-VAL           PIC 9(8) VALUE 0.
       01  N-VAL           PIC 9(8) VALUE 0.
       01  MAX-VAL         PIC 9(3) VALUE 999.

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

           SET A-VAL TO 3.
           SET D-VAL TO 3.
           COMPUTE N-VAL = MAX-VAL / D-VAL.

           CALL "SEQSUM" USING BY REFERENCE SUMOFTHREES,
                               BY CONTENT A-VAL,
                               BY CONTENT D-VAL,
                               BY CONTENT N-VAL.

           SET A-VAL TO 5.
           SET D-VAL TO 5.
           COMPUTE N-VAL = MAX-VAL / D-VAL.

           CALL "SEQSUM" USING BY REFERENCE SUMOFFIVES,
                               BY CONTENT A-VAL,
                               BY CONTENT D-VAL,
                               BY CONTENT N-VAL.

           SET A-VAL TO 15.
           SET D-VAL TO 15.
           COMPUTE N-VAL = MAX-VAL / D-VAL.

           CALL "SEQSUM" USING BY REFERENCE SUMOFFIFTEENS,
                               BY CONTENT A-VAL,
                               BY CONTENT D-VAL,
                               BY CONTENT N-VAL.

           ADD SUMOFTHREES TO SUMOFFIVES GIVING FINALANSWER.
           SUBTRACT SUMOFFIFTEENS FROM FINALANSWER.

           MOVE FUNCTION CURRENT-DATE to WS-CURRENT-DATE-DATA
             SET END-TIME TO WS-CURRENT-MILLISECONDS.

           SUBTRACT END-TIME FROM START-TIME GIVING DURATION.

           DISPLAY "Answer:    " FINALANSWER.
           DISPLAY "Duration:  " DURATION "ms".

           STOP RUN.

      *#################################################################
      * subrogram start - finds sum of sequence via: Sn = n/2(2a+(n-1)d)
      *################ USAGE ##########################################
      * A = 1st term, D = common difference, N = no. of terms
      * RESULTPARAM provides return value, the 1st variable supplied
      * from function call in main will now contain result, as it is
      * supplied as a reference
      *#################################################################
           IDENTIFICATION DIVISION.
           PROGRAM-ID. SEQSUM.
           DATA DIVISION.
           LINKAGE SECTION.
           01  RESULTPARAM     PIC 9(8).
           01  A               PIC 9(8).
           01  D               PIC 9(8).
           01  N               PIC 9(8).

           PROCEDURE DIVISION USING RESULTPARAM,
                                    A,
                                    D,
                                    N.

           COMPUTE RESULTPARAM = (N / 2) * (2 * A + (N - 1) * D).

           END PROGRAM SEQSUM.
      *#################################################################
      * subprogram end
      *#################################################################

       END PROGRAM Euler01_b.
