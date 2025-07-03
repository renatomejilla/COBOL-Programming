      * Author      : Renato D. Mejilla
      * Date        : July 3, 2025
      * Description : A demo of a COBOL proram to check whether a given
      *               number is odd or even from the user input.
      *               This program were compiled and tested using 
      *               Gnu COBOL compiler.
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID.     WS-ODDEVEN.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NUMBER        PIC ZZ9.
       01 WS-REMAINDER     PIC 9.
       01 WS-RESULT        PIC ZZ9.
       01 CLEAR-LINE       PIC X(80) VALUE " ".

       SCREEN SECTION.
       01  WS-MAIN-DISPLAY.
           05 BLANK SCREEN.
           05 LINE 3 COL 10 VALUE 
               "<<<<<< ODD/EVEN Number Checker >>>>>>".
           05 LINE 4 COL 10 VALUE 
               "=====================================".
           05 LINE 6 COL 10 VALUE "Enter a 2 digit number to check:".
           05 LINE 6 COL 42 VALUE "[".
           05 LINE 6 COL 43 PIC 99 TO WS-NUMBER.
           05 LINE 6 COL 45 VALUE "]".

       01  WS-EVEN.
           05 LINE 8 COL 10 VALUE "The number".
           05 LINE 8 COL 20 FROM WS-NUMBER.
           05 LINE 8 COL 24 VALUE "is even!".
           
       01  WS-ODD.
           05 LINE 8 COL 10 VALUE "The number".
           05 LINE 8 COL 20 FROM WS-NUMBER.
           05 LINE 8 COL 24 VALUE "is odd!".
        
       PROCEDURE DIVISION.
       001-MAIN.
           DISPLAY WS-MAIN-DISPLAY.
           ACCEPT WS-MAIN-DISPLAY.
    
           DIVIDE WS-NUMBER BY 2 GIVING WS-RESULT REMAINDER WS-REMAINDER.
    
           IF WS-REMAINDER = 0 THEN
               DISPLAY WS-EVEN
           ELSE
               DISPLAY WS-ODD

           DISPLAY CLEAR-LINE AT LINE 24 COL 1.
           DISPLAY "Press any key to exit the program.."
                   AT LINE 24 COL 10.
           
           ACCEPT OMITTED AT LINE 24 COL 46.           
           STOP RUN.
