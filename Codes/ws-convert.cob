IDENTIFICATION DIVISION.
PROGRAM-ID. WS-CONVERT.
DATA DIVISION.
    WORKING-STORAGE SECTION.
    01  WS-USR-INPUT    PIC 9(5)V99 VALUE ZEROES.
    01  WS-VAR-INT      PIC 9(5).
    01  WS-VAR-DEC      PIC 9(5)v99.
    01  WS-VAR-SIGN     PIC S9(5)V99.
PROCEDURE DIVISION.
Main-Start.
    DISPLAY "Enter a number: " WITH NO ADVANCING.
    ACCEPT WS-USR-INPUT.
    
    MOVE WS-USR-INPUT TO WS-VAR-INT.
    MOVE WS-USR-INPUT TO WS-VAR-DEC.
    MOVE WS-USR-INPUT TO WS-VAR-SIGN.
    
    DISPLAY " ".
    DISPLAY "Conversion to Integer is: ", WS-VAR-INT.
    DISPLAY "Conversion to Decimal is: ", WS-VAR-DEC.
    DISPLAY "Conversion to signed is: ", WS-VAR-SIGN.
    
STOP RUN.


TERMINAL OUTPUT:


Enter a number: 12345
 
Conversion to Integer is: 12345
Conversion to Decimal is: 12345.00
Conversion to signed is: +12345.00
      
