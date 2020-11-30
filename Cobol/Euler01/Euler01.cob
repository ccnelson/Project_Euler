       IDENTIFICATION DIVISION.
       PROGRAM-ID. Euler01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 sumofthrees      PIC 9(8) VALUE 0.
       01 sumoffives       PIC 9(8) VALUE 0.
       01 sumoffifteens    PIC 9(8) VALUE 0.
       01 finalanswer      PIC 9(8) VALUE 0.

       01 WS-B PIC 9(4) VALUE 0.
       01 WS-C PIC 9(4) VALUE 0.
       01 WS-D PIC 9(4) VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           A-PARA.
           PERFORM B-PARA VARYING WS-B FROM 3 BY 3 UNTIL WS-B IS > 999.
           PERFORM C-PARA VARYING WS-C FROM 5 BY 5 UNTIL WS-C IS > 999.
           PERFORM D-PARA VARYING WS-D FROM 15 BY 15 UNTIL WS-D IS > 999.

           ADD sumofthrees TO sumoffives GIVING finalanswer.
           SUBTRACT sumoffifteens FROM finalanswer.

           DISPLAY "Answer:    " finalanswer.

           STOP RUN.

           B-PARA.
           ADD WS-B TO sumofthrees GIVING sumofthrees.

           C-PARA.
           ADD WS-C TO sumoffives GIVING sumoffives.

           D-PARA.
           ADD WS-D TO sumoffifteens GIVING sumoffifteens.

       END PROGRAM Euler01.
