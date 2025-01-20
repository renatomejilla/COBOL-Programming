      ****************************************************************** 
      * Description:  This demo is to count the number of characters
      *               from the user input then display the output.
      * Author:       Renato D. Mejilla
      * Date Written: January 20, 2024
      * Compiler:     GnuCOBOL    
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Count-String.
       ENVIRONMENT DIVISION.
       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01 WS-FILLER-LINE            PIC X(80) VALUE ALL "*".
       01 WS-USER-INPUT.
           05 WS-INPUT-STRING       PIC X(50).
       01 WS-ACTUAL-LENGTH          PIC 99.
       01 WS-TEMP-INDEX             PIC 99.
       
       SCREEN SECTION.
       01  WS-INPUT-SCREEN.
           05 BLANK SCREEN.

           
       PROCEDURE DIVISION.
       DISPLAY WS-INPUT-SCREEN.

       DISPLAY WS-FILLER-LINE      LINE 1 COL 1.
       DISPLAY 
       "Description:   This demo is to count the number of characters"
                                   LINE 2 COL 1.
       DISPLAY         
       "               from the user input then display the output."
                                   LINE 3 COL 1.
       DISPLAY 
       "Author:        Renato D. Mejilla"
                                   LINE 4 COL 1.
       DISPLAY 
       "Date Written:  January 20, 2024"
                                   LINE 5 COL 1.                               
       DISPLAY WS-FILLER-LINE      LINE 6 COL 1.

       DISPLAY "Enter a string (up to 50 characters): " 
                                   LINE 8 COL 1.
       ACCEPT WS-INPUT-STRING      LINE 8 COL 39.

           MOVE 50 TO WS-TEMP-INDEX.

           PERFORM VARYING WS-TEMP-INDEX FROM 50 BY -1 UNTIL 
               WS-TEMP-INDEX = 0
               IF WS-INPUT-STRING(WS-TEMP-INDEX:1) NOT = SPACE
                   MOVE WS-TEMP-INDEX TO WS-ACTUAL-LENGTH
                   EXIT PERFORM
               END-IF
           END-PERFORM.

       DISPLAY "Number of characters in the string: "
                                   LINE 22 COL 1.
       DISPLAY WS-ACTUAL-LENGTH    LINE 22 COL 37.
       DISPLAY WS-FILLER-LINE      LINE 24 COL 1.

       STOP RUN.
