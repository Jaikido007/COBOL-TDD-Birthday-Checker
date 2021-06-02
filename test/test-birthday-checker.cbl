       IDENTIFICATION DIVISION.
           PROGRAM-ID. test-birthday-checker.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-Name                  PIC X(10).
           01 WS-Birthday              PIC 9(4).
           01 Ws-Date                  PIC 9(4).
           01 WS-Birthday-Greeter      PIC X(40).

       PROCEDURE DIVISION.
       BIRTHDAY.
           MOVE 'Jay'  TO  WS-Name.
           MOVE 0226   TO  WS-Birthday.
           MOVE 0226   TO  Ws-Date.

           CALL 'birthday-checker' USING WS-Name WS-Birthday Ws-Date 
           WS-Birthday-Greeter.
           CALL 'assert-equals'    USING "Happy Birthday, Jay!" 
           WS-Birthday-Greeter.

       NOT-BIRTHDAY.
           MOVE 'Jay'  TO  WS-Name.
           MOVE 0226   TO  WS-Birthday.
           MOVE 1225   TO  WS-Date.

           CALL 'birthday-checker' USING WS-Name WS-Birthday Ws-Date 
           WS-Birthday-Greeter.
           CALL 'assert-equals'    USING "It is not your birthday, Jay!" 
           WS-Birthday-Greeter.

       NEARLY-BIRTHDAY-WITHIN-5-DAYS.
           MOVE 'Jay'  TO  WS-Name.
           MOVE 0226   TO  WS-Birthday.
           MOVE 0221   TO  WS-Date.

           CALL 'birthday-checker' USING WS-Name WS-Birthday Ws-Date 
           WS-Birthday-Greeter.
           CALL 'assert-equals'    USING "It is almost your birthday, 
      -    "Jay!" 
           WS-Birthday-Greeter.

       END PROGRAM test-birthday-checker.
       
