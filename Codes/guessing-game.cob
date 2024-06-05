IDENTIFICATION DIVISION.
PROGRAM-ID. GUESSING-GAME.
DATA DIVISION.
    WORKING-STORAGE SECTION.
    01 WS-NUM       PIC 9(2).
    01 WS-GUESS     PIC 99 VALUE 25.
    01 WS-ANSWER    PIC X VALUE "N".
    01 WS-TEMP      PIC X.
    
PROCEDURE DIVISION.
001-MAIN.
    PERFORM 001-START.
    PERFORM 002-LOOP.
    
001-START.
    DISPLAY "Enter any number from 1 to 99: " WITH NO ADVANCING.
    ACCEPT WS-NUM.
    DISPLAY " ".
    EXIT. 
    
002-LOOP.
    EVALUATE TRUE
        WHEN WS-NUM = 25 
        DISPLAY "Perfect, you got the correct number!"
    
        WHEN WS-NUM > 0 AND < 25
        DISPLAY "Wrong guess, higher please!"
        DISPLAY " "
        DISPLAY "Do you want to continue playing? " WITH NO ADVANCING
        ACCEPT WS-ANSWER
        MOVE FUNCTION UPPER-CASE(WS-ANSWER) TO WS-TEMP
        IF WS-TEMP = "Y" THEN
            GO TO 001-START
        ELSE
            DISPLAY "The game is now closing.."
        EXIT
        
        WHEN WS-NUM > 25 AND < 99
        DISPLAY "Wrong guess, lower please!"
        DISPLAY " "
        DISPLAY "Do you want to continue playing? " WITH NO ADVANCING
        ACCEPT WS-ANSWER
        MOVE FUNCTION UPPER-CASE(WS-ANSWER) TO WS-TEMP
        IF WS-TEMP = "Y" THEN
            GO TO 001-START
        ELSE
            DISPLAY "The game is now closing.."
        EXIT
        
    END-EVALUATE
    EXIT.
    
STOP RUN.