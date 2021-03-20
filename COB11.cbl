       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB11.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 20/03/2021
      * Purpose: Usuário e nível 888 - Lógica
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO PIC X(20) VALUE SPACES.
       77 WRK-NIVEL   PIC 9(20) VALUE ZEROS.
           88 ADM     VALUE 02.
           88 USER    VALUE 01.
       PROCEDURE DIVISION.
           DISPLAY  'Digite USUARIO: '
           ACCEPT WRK-USUARIO FROM CONSOLE.

           DISPLAY  'NIVEL: '
           ACCEPT WRK-NIVEL FROM CONSOLE.

      *--------------------*
      * LOGICA CONDICIONAL *
      *--------------------*

           IF ADM
               DISPLAY 'NIVEL - ADM'
           ELSE
               IF USER
                   DISPLAY 'NIVEL - USUARIO'
               ELSE
                   DISPLAY 'USUARIO NAO AUTORIZADO'

                END-IF
           END-IF.

           DISPLAY  '---------------------'.


           STOP RUN.
       END PROGRAM COB11.
