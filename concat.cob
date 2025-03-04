IDENTIFICATION DIVISION.
PROGRAM-ID. CONCAT.

ENVIRONMENT DIVISION.

DATA DIVISION.
WORKING-STORAGE SECTION.
 01 WS-CUSTNAME.
    02 WS-CUST-FNAME PIC X(20).
    02 WS-CUST-LNAME PIC X(30).
 01 WS-FULLNAME PIC X(50).

PROCEDURE DIVISION.
DISPLAY "PLEASE ENTER YOUR FIRST NAME: " WITH NO ADVANCING.
ACCEPT WS-CUST-FNAME.
DISPLAY " ".
DISPLAY "ENTER YOUR LAST NAME: " WITH NO ADVANCING.
ACCEPT WS-CUST-LNAME.
STRING WS-CUST-FNAME DELIMITED BY SPACES 
       SPACE DELIMITED BY SIZE
       WS-CUST-LNAME DELIMITED BY SPACES
       INTO WS-FULLNAME.

DISPLAY WS-FULLNAME.
DISPLAY FUNCTION UPPER-CASE(WS-FULLNAME).
DISPLAY FUNCTION LOWER-CASE(WS-FULLNAME).

STOP RUN.