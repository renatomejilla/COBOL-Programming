      *AUTHOR      : Renato D. Mejilla
      *DATE        : July 1, 2025
      *DESCRIPTION : A demo of a VSAM/ISAM style indexed file COBOL program

       IDENTIFICATION DIVISION.
       PROGRAM-ID. INDEXED-FILE-DEMO.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT USER-FILE ASSIGN TO "users.dat"
        ORGANIZATION IS INDEXED
        ACCESS MODE IS DYNAMIC
        RECORD KEY IS USER-ID
        FILE STATUS IS FILE-STATUS.

       DATA DIVISION.
       FILE SECTION.
       FD USER-FILE.
       01 USER-RECORD.
           05 USER-ID    PIC 9(5).
           05 USER-NAME  PIC X(50).

       WORKING-STORAGE SECTION.
       01 FILE-STATUS    PIC XX.
       01 MENU-OPTION    PIC 9.
       01 USER-ID-IN     PIC 9(5).
       01 USER-NAME-IN   PIC X(50).
       01 CONTINUE-LOOP  PIC X VALUE "Y".

       PROCEDURE DIVISION.
       MAIN-PARA.
           OPEN I-O USER-FILE
           IF FILE-STATUS = "35"
               OPEN OUTPUT USER-FILE
               CLOSE USER-FILE
               OPEN I-O USER-FILE
           END-IF

           PERFORM UNTIL CONTINUE-LOOP NOT = "Y"
               DISPLAY "======== MENU ======="
               DISPLAY "1 - Insert New User"
               DISPLAY "2 - Search User by ID"
               DISPLAY "3 - Update User Name"
               DISPLAY "4 - Delete User"
               DISPLAY "5 - List All Users"
               DISPLAY "6 - Exit"
               DISPLAY "====================="
               DISPLAY "Select Option: " WITH NO ADVANCING
               ACCEPT MENU-OPTION

               EVALUATE MENU-OPTION
                    WHEN 1
                        PERFORM INSERT-USER
                    WHEN 2
                        PERFORM SEARCH-USER
                    WHEN 3
                        PERFORM UPDATE-USER
                    WHEN 4
                        PERFORM DELETE-USER
                    WHEN 5
                        PERFORM LIST-USERS
                    WHEN 6
                        MOVE "N" TO CONTINUE-LOOP
                    WHEN OTHER
                        DISPLAY "Invalid Option."
               END-EVALUATE
           END-PERFORM

           CLOSE USER-FILE
           DISPLAY " "
           DISPLAY "Program Finished."
           STOP RUN.

       INSERT-USER.
           DISPLAY "Enter User ID (5 digits): " WITH NO ADVANCING
           ACCEPT USER-ID-IN
           DISPLAY "Enter User Name: " WITH NO ADVANCING
           ACCEPT USER-NAME-IN

           MOVE USER-ID-IN TO USER-ID
           MOVE USER-NAME-IN TO USER-NAME
           DISPLAY "New user added successfully!"

           WRITE USER-RECORD INVALID KEY
               DISPLAY "User ID already exists!"
           END-WRITE.

       SEARCH-USER.
           DISPLAY "Enter User ID to Search: " WITH NO ADVANCING
           ACCEPT USER-ID-IN

           MOVE USER-ID-IN TO USER-ID

           READ USER-FILE KEY IS USER-ID INVALID KEY
               DISPLAY "User not found!"
           NOT INVALID KEY
               DISPLAY "User Found:"
               DISPLAY "User ID   : " USER-ID
               DISPLAY "User Name : " USER-NAME
           END-READ.

       UPDATE-USER.
           DISPLAY "Enter User ID to Update: "
           ACCEPT USER-ID-IN

           MOVE USER-ID-IN TO USER-ID

           READ USER-FILE KEY IS USER-ID INVALID KEY
               DISPLAY "User not found!"
           NOT INVALID KEY
               DISPLAY "Enter New User Name: "
               ACCEPT USER-NAME-IN
               MOVE USER-NAME-IN TO USER-NAME
               REWRITE USER-RECORD
               DISPLAY "User updated successfully."
           END-READ.

       DELETE-USER.
           DISPLAY "Enter User ID to Delete: "
           ACCEPT USER-ID-IN

           MOVE USER-ID-IN TO USER-ID

           READ USER-FILE KEY IS USER-ID INVALID KEY
               DISPLAY "User not found!"
           NOT INVALID KEY
               DELETE USER-FILE
               DISPLAY "User deleted successfully."
           END-READ.

       LIST-USERS.
           DISPLAY "Listing All Users:"

           MOVE "00000" TO USER-ID

           START USER-FILE KEY IS NOT LESS THAN USER-ID
               INVALID KEY
                    DISPLAY "No records to list."
                    EXIT PARAGRAPH
           END-START

           PERFORM UNTIL FILE-STATUS = "10"
               READ USER-FILE NEXT RECORD
                    AT END
                        EXIT PERFORM
                    NOT AT END
                        DISPLAY "ID: " USER-ID " Name: " USER-NAME
               END-READ
           END-PERFORM.

