      *Author: Renato D. Mejilla
      *Date: May 21, 2024
      *Description: Demo of a string concatenation using STRING and UNSTRING

       IDENTIFICATION DIVISION.
       PROGRAM-ID. concatenate.
       
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-EMPLOYEE-NAME.
           05 WS-FNAME       PIC X(15).
           05 WS-LNAME       PIC X(15).
       01  WS-EMP-NAME       PIC X(30).

      *This will separate the WS-EMP-NAME into two. 
       01  WS-CUT-NAME.
           05 WS-CUT-FNAME   PIC X(15).
           05 WS-CUT-LNAME   PIC X(15).
           
       PROCEDURE DIVISION.
           DISPLAY "Enter your first name: " WITH NO ADVANCING.
           ACCEPT WS-FNAME.
           DISPLAY " ".
           DISPLAY "Enter your last name: " WITH NO ADVANCING.
           ACCEPT WS-LNAME.

      *This will join the 2 variables with a space in between them.
           STRING WS-FNAME DELIMITED BY ' '
                  ' ' DELIMITED BY SIZE
                  WS-LNAME DELIMITED BY ' '
                  INTO WS-EMP-NAME.
           DISPLAY "First name: ", WS-FNAME.
           DISPLAY "Last name: ", WS-LNAME.
           DISPLAY "Employee Name: ", WS-EMP-NAME.
      
      *This will cut the WS-EMP-NAME into two separate variables.
           UNSTRING WS-EMP-NAME
                    DELIMITED BY SPACE
                    INTO WS-CUT-FNAME WS-CUT-LNAME 
           END-UNSTRING.  

           DISPLAY WS-CUT-FNAME.
           DISPLAY WS-CUT-LNAME.

           STOP RUN.  

OUTPUT:

C:\gnuCobol>cobc test.cob
C:\gnuCobol>cobcrun test
Enter your first name: Renato
 
Enter your last name: Mejilla
First name: Renato
Last name: Mejilla
Employee Name: Renato Mejilla
Renato
Mejilla

*You may freely copy all my codes and this is tested using the GNUCOBOL.
      
