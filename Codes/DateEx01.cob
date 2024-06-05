IDENTIFICATION DIVISION.
PROGRAM-ID.     WS-DATE01.

ENVIRONMENT DIVISION.

DATA DIVISION.
    WORKING-STORAGE SECTION.
    01 WS-DATE.
        05 WS-DATE-YY       PIC 9999.
        05 WS-DATE-MM       PIC 99.
        05 WS-DATE-DD       PIC 99.
    01 REN-DATE.
        05 REN-DATE-YY      PIC 9999.
        05 FILLER           PIC X VALUE "-".
        05 REN-DATE-MM      PIC 99.
        05 FILLER           PIC X VALUE "-".
        05 REN-DATE-DD      PIC 99.
    01 WS-REN-DATE.
        05 WS-REN-DATE-YY      PIC 9999.
        05 WS-FILLER           PIC X VALUE "/".
        05 WS-REN-DATE-MM      PIC 99.
        05 WS-FILLER           PIC X VALUE "/".
        05 WS-REN-DATE-DD      PIC 99.
    01 WS-HEAD-DATE.
        05 WS-HEADING-01        PIC X(7)    VALUE "MONTH  ".
        05 WS-HEADING-FILLER01  PIC X(3)    VALUE SPACES.
        05 WS-HEADING-02        PIC X(5)    VALUE "DAY  ".
        05 WS-HEADING-FILLER02  PIC X(3)    VALUE SPACES.
        05 WS-HEADING-03        PIC X(6)    VALUE "YEAR  ".
    01 WS-DATA-DATE.
        05 WS-DATA-DATE-MM      PIC 99.
        05 WS-FILLER01          PIC X(8)    VALUE SPACES.
        05 WS-DATA-DATE-DD      PIC 99.
        05 WS-FILLER02          PIC X(6)    VALUE SPACES.
        05 WS-DATA-DATE-YY      PIC 9999.
    01 HEADING-LINE-01          PIC X(24)   VALUE "************************".
    01 HEADING-LINE-02          PIC X(24)   VALUE "************************".
        
PROCEDURE DIVISION.
001-MAIN.
    ACCEPT WS-DATE FROM DATE YYYYMMDD.
    
    MOVE WS-DATE-YY     TO REN-DATE-YY.
    MOVE WS-DATE-MM     TO REN-DATE-MM.
    MOVE WS-DATE-DD     TO REN-DATE-DD.
    
    MOVE WS-DATE-YY     TO WS-REN-DATE-YY.
    MOVE WS-DATE-MM     TO WS-REN-DATE-MM.
    MOVE WS-DATE-DD     TO WS-REN-DATE-DD.
    
    MOVE WS-DATE-YY     TO WS-DATA-DATE-YY.
    MOVE WS-DATE-MM     TO WS-DATA-DATE-MM.
    MOVE WS-DATE-DD     TO WS-DATA-DATE-DD.
    
    DISPLAY "Sample #1: Today is ", REN-DATE.
    DISPLAY " ".
    DISPLAY "Sample #2: Today is ", WS-REN-DATE.
    DISPLAY " ".
    
    DISPLAY HEADING-LINE-01.
    DISPLAY WS-HEAD-DATE.
    DISPLAY WS-DATA-DATE.
    DISPLAY HEADING-LINE-02.

STOP RUN.



=========================================
OUTPUT:

Sample #1: Today is 2024-06-05
 
Sample #2: Today is 2024/06/05
 
************************
MONTH     DAY     YEAR  
06        05      2024
************************