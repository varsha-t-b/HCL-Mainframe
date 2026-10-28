       IDENTIFICATION DIVISION.
       PROGRAM-ID. WITHDRAWAL-TEST.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-INPUT-AMOUNT PIC X(10).
       01 WS-AMOUNT       PIC S9(9) VALUE ZERO.

       PROCEDURE DIVISION.
           DISPLAY "ENTER WITHDRAWAL AMOUNT: "
               WITH NO ADVANCING
           ACCEPT WS-INPUT-AMOUNT

           IF WS-INPUT-AMOUNT IS NUMERIC
               MOVE WS-INPUT-AMOUNT TO WS-AMOUNT

               IF WS-AMOUNT < 100
                   DISPLAY "REJECTED"
               ELSE
                   IF WS-AMOUNT > 50000
                       DISPLAY "REJECTED"
                   ELSE
                       DISPLAY "ACCEPTED"
                   END-IF
               END-IF
           ELSE
               DISPLAY "INVALID INPUT"
           END-IF

           STOP RUN.
