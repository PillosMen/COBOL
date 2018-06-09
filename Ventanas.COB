      ******************************************************************
      * Author: pillos
      * Date: 08/06/18
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       identification division.
       program-id. Ventanas.

       environment division.
       data division.
       working-storage section.
       77  CONTRASE pic x(10).
       77  OPCION pic x.
       PROCEDURE DIVISION.
       Inicio.
       display "Hello Fucking World!!!" AT LINE 01 COL 01
       display "LOGIN " AT LINE 05 COL 10
       ACCEPT CONTRASE AT LINE 07 COL 10


         IF CONTRASE = "PASO"

           DISPLAY " CONTRASEÑA CORRECTA, ENTER PARA CONTINUAR"
           AT LINE 10 COL 10
           ACCEPT OPCION AT LINE 11 COL 10


           ELSE
                  DISPLAY "CONTRASE#A INCORRECTA"
                  AT LINE 10 COL 10
           ACCEPT OPCION AT LINE 11 COL 10
              STOP RUN
           END-IF
       STOP RUN.
