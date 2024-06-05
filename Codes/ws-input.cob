IDENTIFICATION DIVISION.
PROGRAM-ID.     WS-INPUT.

ENVIRONMENT DIVISION.

DATA DIVISION.
    WORKING-STORAGE SECTION.
    01 WS-EMP-REC.
        05 WS-EMP-ID        PIC 9(6)     VALUE ZEROES.
        05 WS-EMP-NAME      PIC X(15).
        05 WS-EMP-SURNAME   PIC X(15).
        05 WS-PHONE         PIC X(11).
        05 WS-LOCATION      PIC X(15).
        05 WS-DOB.
            10 WS-DOB-MM    PIC 99.
            10 WS-DOB-DD    PIC 99.
            10 WS-DOB-YY    PIC 9999.
    01 WS-TRIM              PIC X(30).
    01 WS-HEADING.
        05 WS-HEADING-ID    PIC X(6)     VALUE "EMP-ID".
        05 WS-FILLER        PIC X        VALUE SPACE.
        05 WS-HEADING-NAME  PIC X(10)    VALUE "FIRST NAME".
        05 WS-FILLER        PIC X(6)     VALUE SPACES.
        05 WS-HEADING-SUR   PIC X(7)     VALUE "SURNAME".
        05 WS-FILLER        PIC X(9)     VALUE SPACES.
        05 WS-HEADING-PH    PIC X(7)     VALUE "PHONE #".
        05 WS-FILLER        PIC X(5)     VALUE SPACES.
        05 WS-HEADING-LOC   PIC X(8)     VALUE "LOCATION".
        05 WS-FILLER        PIC X(8)     VALUE SPACES.
        05 WS-HEADING-DOB   PIC X(3)     VALUE "DOB".
    01 WS-DATA.
        05 DATA-EMP-ID        PIC 9(6).
        05 FILLER             PIC X      VALUE SPACE.
        05 DATA-EMP-NAME      PIC X(15).
        05 FILLER             PIC X      VALUE SPACE.
        05 DATA-EMP-SURNAME   PIC X(15).
        05 FILLER             PIC X      VALUE SPACE.
        05 DATA-PHONE         PIC X(11).
        05 FILLER             PIC X      VALUE SPACE.
        05 DATA-LOCATION      PIC X(15).
        05 FILLER             PIC X      VALUE SPACE.
        05 DATA-DOB.
            10 WS-DATA-MM     PIC 99.
            10 FILLER         PIC X      VALUE "-".
            10 WS-DATA-DD     PIC 99.
            10 FILLER         PIC X      VALUE "-".
            10 WS-DATE-YY     PIC 99.
    01 WS-DECIMAL             PIC X      VALUE ",".
            
PROCEDURE DIVISION.
001-MAIN.
    DISPLAY "Employee ID: " WITH NO ADVANCING.
    ACCEPT WS-EMP-ID.
    
    DISPLAY "Employee Name: " WITH NO ADVANCING.
    ACCEPT WS-EMP-NAME.
    
    DISPLAY "Employee Surname: " WITH NO ADVANCING.
    ACCEPT WS-EMP-SURNAME.
    
    DISPLAY "Phone Number : " WITH NO ADVANCING.
    ACCEPT WS-PHONE.
    
    DISPLAY "Current Location: " WITH NO ADVANCING.
    ACCEPT WS-LOCATION.
    
    DISPLAY "Date of Birth (MMDDYYYY): " WITH NO ADVANCING.
    ACCEPT WS-DOB.
    
    MOVE WS-EMP-ID      TO DATA-EMP-ID.
    MOVE WS-EMP-NAME    TO DATA-EMP-NAME.
    MOVE WS-EMP-SURNAME TO DATA-EMP-SURNAME.
    MOVE WS-PHONE       TO DATA-PHONE. 
    MOVE WS-LOCATION    TO DATA-LOCATION.
    MOVE WS-DOB         TO DATA-DOB.
    
    STRING WS-EMP-NAME DELIMITED BY ' '
           ' ' DELIMITED BY SIZE
           INTO WS-TRIM.
           
    DISPLAY " ".
    DISPLAY "Hi, ", WS-TRIM, " you can check your records below.".
    DISPLAY " ".
    
    DISPLAY " ".
    DISPLAY "**************************EMPLOYEE RECORD**********************************"
    DISPLAY "Employee ID:              ", WS-EMP-ID.
    DISPLAY "Employee Name:            ", WS-EMP-NAME.
    DISPLAY "Employee Surname:         ", WS-EMP-SURNAME.
    DISPLAY "Phone Number :            ", WS-PHONE.
    DISPLAY "Current Location:         ", WS-LOCATION.
    DISPLAY "Date of Birth (MMDDYYYY): ", WS-DOB. 
    DISPLAY "***************************************************************************"
    DISPLAY " ".
    DISPLAY "***************************************************************************".
    DISPLAY WS-HEADING.
    DISPLAY "***************************************************************************".
    DISPLAY WS-DATA.
    
STOP RUN.


==========================================================
OUTPUT

Employee ID: 369654
Employee Name: RENATO
Employee Surname: MEJILLA
Phone Number : 09196581475
Current Location: MANILA
Date of Birth (MMDDYYYY): 12261969
 
Hi, RENATO MEJILLA                 you can check your records below.
 
 
**************************EMPLOYEE RECORD**********************************
Employee ID:              369654
Employee Name:            RENATO         
Employee Surname:         MEJILLA        
Phone Number :            09196581475
Current Location:         MANILA         
Date of Birth (MMDDYYYY): 12261969
***************************************************************************
 
***************************************************************************
EMP-ID FIRST NAME      SURNAME         PHONE #     LOCATION        DOB
***************************************************************************
369654 RENATO          MEJILLA         09196581475 MANILA          12261969

