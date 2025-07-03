      * Author     : Renato D. Mejilla
      * Date       : July 3, 2025
      * Description: A demo of a COBOL program that uses SCREEN SECTION
      *              to display a message in the screen and accept user
      *              input. 
      *              The message is also displayed on a specific screen
      *              area using the LINE and COLUMN statement.

      *              This program is compiled and tested using a 
      *              GnuCOBOL compiler.

       IDENTIFICATION DIVISION.
       PROGRAM-ID.    SCREEN.

       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NUM1    PIC 99.
       01  WS-NUM2    PIC 99.
       01  WS-TOT     PIC 9(3).
       01  WS-TOTAL   PIC Z(3).
       
       SCREEN SECTION.
       01  WS-MENU.
      * This will clear the entire screen. 
           05 BLANK SCREEN.

      * Display the message beginning at line 2 column 1.     
           05 LINE 2 COL 1 VALUE "Enter a number:".

      * Accept user input.      
           05 LINE 2 COL 17 PIC 99 TO WS-NUM1.

      * Display the message beginning at line 4 column 1.     
           05 LINE 4 COL 1 VALUE "Enter another number:".

      * Accept user input.     
           05 LINE 4 COL 23 PIC 99 TO WS-NUM2.
       
       01  WS-DISP-LINE.
           05 BLANK SCREEN.
           05 LINE 2 COL 1 VALUE "The sum of ".
           05 LINE 2 COL 12 FROM WS-NUM1.
           05 LINE 2 COL 15 VALUE "and".
           05 LINE 2 COL 19 FROM WS-NUM2.
           05 LINE 2 COL 22 VALUE "is".
           05 LINE 2 COL 25 FROM WS-TOTAL.
           05 LINE 2 COL 28 VALUE ".".
           
       PROCEDURE DIVISION.
           DISPLAY WS-MENU.
           ACCEPT WS-MENU.

           COMPUTE WS-TOT = WS-NUM1 + WS-NUM2.
           MOVE WS-TOT TO WS-TOTAL.
           
           DISPLAY WS-DISP-LINE.

      *     DISPLAY "The sum is " WS-TOTAL AT LINE 6 COL 1.
      *     DISPLAY WS-TOTAL AT LINE 6 COL 21.

           DISPLAY "Press ENTER to exit." AT LINE 24 COL 1.

      * This will pause the program execution, and the cursor will be
      * displayed at line 24 column 22.     
           ACCEPT OMITTED AT LINE 24 COL 22. 

           STOP RUN.

