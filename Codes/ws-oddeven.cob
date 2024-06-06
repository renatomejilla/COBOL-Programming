IDENTIFICATION DIVISION.
PROGRAM-ID.     WS-ODDEVEN.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-NUMBER        PIC ZZ9.
01 WS-REMAINDER     PIC 9.
01 WS-RESULT        PIC ZZ9.

PROCEDURE DIVISION.
001-MAIN.
    DISPLAY "Enter a number: " WITH NO ADVANCING.
    ACCEPT WS-NUMBER.
    
    DIVIDE WS-NUMBER BY 2 GIVING WS-RESULT REMAINDER WS-REMAINDER.
    
    IF WS-REMAINDER = 0 THEN
        DISPLAY "The number ", WS-NUMBER, " is even."
    ELSE
        DISPLAY "The number ", WS-NUMBER, " is odd."

STOP RUN.