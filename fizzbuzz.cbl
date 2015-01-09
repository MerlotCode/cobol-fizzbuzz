       IDENTIFICATION       DIVISION.
       PROGRAM-ID.          FIZZBUZZ.
       AUTHOR.              MERLOTCODE.
       DATA                 DIVISION.
       WORKING-STORAGE      SECTION.
       77 F   PIC X(4) VALUE "FIZZ".
       77 B   PIC X(4) VALUE "BUZZ".
       77 FB  PIC X(8) VALUE "FIZZBUZZ".
       77 X   PIC 9(3) VALUE 1.
       PROCEDURE            DIVISION.
       *first attempt at writing some COBOL
       MAIN SECTION.
              PERFORM FB-TEST UNTIL X = 100.
       EXIT.
       
       FB-CODE SECTION.
       FB-TEST.
              IF FUNCTION MOD (X 15) = ZERO THEN
                     DISPLAY FB
              ELSE IF FUNCTION MOD (X 3) = ZERO THEN
                     DISPLAY F
              ELSE IF FUNCTION MOD (X 5) = ZERO THEN
                     DISPLAY B
              ELSE
                     DISPLAY X
              END-IF.
              ADD 1 TO X.
