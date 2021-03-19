       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB9-1.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 19/03/2021
      * Purpose: Comando EVALUATE e dentro dele contem WHEN
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1   PIC 9(02)V99 VALUE ZEROS.
       77 WRK-NOTA2   PIC 9(02)V99 VALUE ZEROS.
       77 WRK-MEDIA   PIC 9(04)V99 VALUE ZEROS.
       77 WRK-RESUL-ED  PIC S9(04) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           ACCEPT WRK-NOTA2 FROM CONSOLE.

           DISPLAY  '---------------------'.
               COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2)/2
      *-----------------*
      *   CALC MÉDIA    *
      *-----------------*
               DISPLAY  ' ------ MEDIA ------'.
                   EVALUATE WRK-MEDIA
                   WHEN 6,0 THRU 10
                       DISPLAY 'APROVADO'
                   WHEN 2 THRU 5,9
                       DISPLAY 'RECUPERACAO'
                   WHEN OTHER
                        DISPLAY 'REPROVADO'
                   END-EVALUATE.
           STOP RUN.
       END PROGRAM COB9-1.
