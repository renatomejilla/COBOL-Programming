IDENTIFICATION DIVISION.
PROGRAM-ID. WS-MATH.

ENVIRONMENT DIVISION.

DATA DIVISION.
    WORKING-STORAGE SECTION.
    01 WS-INPUT1    PIC 99.
    01 WS-INPUT2    PIC 99.
    01 WS-ADD       PIC 9(3).
    01 WS-DIV       PIC 9(3).
    01 WS-SUB       PIC 9(3).
    01 WS-MUL       PIC 9(3).
    01 WS-TOT       PIC 9(5).
    
PROCEDURE DIVISION.
    DISPLAY "Enter a number: " WITH NO ADVANCING.
    ACCEPT WS-INPUT1.
    
    DISPLAY "Enter another number: " WITH NO ADVANCING.
    ACCEPT WS-INPUT2.
    
    COMPUTE WS-ADD = WS-INPUT1 + WS-INPUT2.
    COMPUTE WS-SUB = WS-INPUT1 - WS-INPUT2.
    COMPUTE WS-MUL = WS-INPUT1 * WS-INPUT2.
    COMPUTE WS-DIV = WS-INPUT1 / WS-INPUT2.
    COMPUTE WS-TOT = ((WS-MUL * WS-DIV) + WS-ADD - WS-SUB)
    
    
    DISPLAY " ".
    DISPLAY "Sample of Addition:".
    DISPLAY WS-INPUT1, " + ", WS-INPUT2 " = ", WS-ADD.
    DISPLAY " ".
    
    DISPLAY "Sample of Subtraction:".
    DISPLAY WS-INPUT1, " - ", WS-INPUT2, " = ", WS-SUB.
    DISPLAY " ".
    
    DISPLAY "Sample of Multiplication:".
    DISPLAY WS-INPUT1, ' * ', WS-INPUT2, " = ", WS-MUL.
    DISPLAY " ".
    
    DISPLAY "Sample of Division:".
    DISPLAY WS-INPUT1, " / ", WS-INPUT2, " = ", WS-DIV.
    DISPLAY " ".
    
    DISPLAY "The total is ", WS-TOT.
    
STOP RUN.
