       IDENTIFICATION DIVISION.
           PROGRAM-ID. birthday-checker.

       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-Result                UNSIGNED-INT.

           LINKAGE SECTION.
           01 LS-Name                  PIC X(10).
           01 LS-Birthday              PIC 9(4).
           01 LS-Date                  PIC 9(4).
           01 LS-Birthday-Greeter      PIC X(40).

       PROCEDURE DIVISION USING LS-Name, LS-Birthday, LS-Date, 
                                LS-Birthday-Greeter.
           COMPUTE WS-Result =  LS-Birthday - LS-Date
      
           IF WS-Result = 1 OR 2 OR 3 OR 4 OR 5
               STRING "It is almost your birthday " FUNCTION TRIM 
                   (LS-Name) "!" INTO LS-Birthday-Greeter
               END-STRING
               DISPLAY LS-Birthday-Greeter
           STOP RUN.

           IF LS-Birthday = LS-Date
               STRING "Happy Birthday " FUNCTION TRIM (LS-Name) "!" 
                   INTO LS-Birthday-Greeter
               END-STRING
               DISPLAY LS-Birthday-Greeter
           ELSE 
               STRING "It is not your birthday " FUNCTION TRIM (LS-Name) 
                   "!" INTO LS-Birthday-Greeter
               END-STRING
               DISPLAY LS-Birthday-Greeter 
           END-IF.

           END PROGRAM birthday-checker.
     
