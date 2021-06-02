       IDENTIFICATION DIVISION.
           PROGRAM-ID. main-program.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-Name                  PIC X(10).
           01 WS-Birthday              PIC 9(4).
           01 WS-Date                  PIC 9(4).
           01 WS-Birthday-Greeter      PIC X(40).

       PROCEDURE DIVISION.
           MOVE FUNCTION CURRENT-DATE(5:4) TO WS-Date

           DISPLAY "Today's date: " WS-Date
           DISPLAY "What's' your name?".
           ACCEPT WS-Name.
           DISPLAY "When is your birthday (MMDD)?".
           ACCEPT WS-Birthday

           CALL "birthday-checker" USING WS-Name, WS-Birthday, 
                WS-Date, WS-Birthday-Greeter.

           END PROGRAM main-program.

