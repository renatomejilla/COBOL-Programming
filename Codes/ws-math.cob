* Author:      Renato D. Mejilla
* Date:        June 6, 2024
* Description: A demo of arithmetic computations with user input.
      
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
    01 WS-TOT       PIC ZZZZ9.
    01 WS-REM       PIC Z9.
    
PROCEDURE DIVISION.
    DISPLAY "Enter a number: " WITH NO ADVANCING.
    ACCEPT WS-INPUT1.
    
    DISPLAY "Enter another number: " WITH NO ADVANCING.
    ACCEPT WS-INPUT2.
    
    COMPUTE WS-ADD = WS-INPUT1 + WS-INPUT2.
    COMPUTE WS-SUB = WS-INPUT1 - WS-INPUT2.
    COMPUTE WS-MUL = WS-INPUT1 * WS-INPUT2.
    DIVIDE WS-INPUT1 BY WS-INPUT2 GIVING WS-DIV REMAINDER WS-REM.
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
    DISPLAY WS-INPUT1, " / ", WS-INPUT2, " = ", WS-DIV, " and remainder is ", WS-REM.
    DISPLAY " ".
      
    DISPLAY "The total is ", WS-TOT.
    
STOP RUN.

======================================================
OUTPUT:
      
Enter a number: 74
Enter another number: 6
 
Sample of Addition:
74 + 06 = 080
 
Sample of Subtraction:
74 - 06 = 068
 
Sample of Multiplication:
74 * 06 = 444
 
Sample of Division:
74 / 06 = 012 and remainder is  2
 
The total is  5340
      
