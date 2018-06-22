      ******************************************************************
      * Author: PILLOS
      * Date: 22/06/18
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOMBRE.

       ENVIRONMENT DIVISION.
           INPUT-OUTPUT SECTION.
                 FILE-CONTROL.
                      SELECT STUDENT ASSIGN TO 'CONES.DAT'
                      ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
           FILE SECTION.
           FD STUDENT.
           01 STUDENT-FILE.
                 05 STUDENT-ID PIC 9(5).
                 05 NAME PIC A(25).

       WORKING-STORAGE SECTION.
       01 WS-STUDENT.
           05 WS-STUDENT-ID PIC 9(5).
           05 WS-NAME PIC A(25).
       01 WS-EOF PIC A(1).
       77  PASS       PIC       X(10).
       77  OPCION     PIC       X.

       PROCEDURE DIVISION.
       INICIO.
       DISPLAY "Hello Fucking World!!!"
       DISPLAY "LOGIN "
       ACCEPT PASS

       OPEN INPUT STUDENT.
           IF PASS = "MAYASA"
               DISPLAY " CONTRASEÑA CORRECTA, ENTER PARA CONTINUAR"
               PERFORM UNTIL WS-EOF='Y'
                   READ STUDENT INTO WS-STUDENT
                           AT END MOVE 'Y' TO WS-EOF
                           NOT AT END DISPLAY WS-STUDENT
                   END-READ
               END-PERFORM
               ELSE
                    DISPLAY "CONTRASENA INCORRECTA"
           END-IF
       CLOSE STUDENT.

       STOP RUN.
