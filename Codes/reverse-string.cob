* Author:      Renato D. Mejilla
* Date:        June 6, 2024
* Description: A demo of reversing a string.
      
IDENTIFICATION DIVISION.
PROGRAM-ID. ReverseString.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.
01 WS-USER-STRING       PIC X(50).
01 WS-REVERSED-STRING   PIC X(50).
01 WS-STRING-LENGTH     PIC 9(2)    VALUE 0.
01 WS-I                 PIC 9(2).
01 WS-J                 PIC 9(2).

PROCEDURE DIVISION.
001-MAIN.
    DISPLAY "Enter a string (up to 50 characters): " WITH NO ADVANCING.
    ACCEPT WS-USER-STRING.
    
    MOVE FUNCTION LENGTH(WS-USER-STRING) TO WS-STRING-LENGTH
    
    PERFORM VARYING WS-I FROM 1 BY 1 UNTIL WS-I > WS-STRING-LENGTH
        COMPUTE WS-J = WS-STRING-LENGTH - WS-I + 1
        MOVE WS-USER-STRING(WS-I:1) TO WS-REVERSED-STRING(WS-J:1)
    END-PERFORM
    
    DISPLAY "Reversed string: ", WS-REVERSED-STRING.
    
STOP RUN.

=====================================================================
OUTPUT:

Enter a string (up to 50 characters): THE QUICK BROWN FOX JUMP OVER THE LAZY DOG.
Reversed string:        .GOD YZAL EHT REVO PMUJ XOF NWORB KCIUQ EHT

      
