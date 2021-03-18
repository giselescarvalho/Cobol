       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB8.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 16/03/2021
      * Purpose: A partir de duas notas, calcular a média
      *          Usando IF ELSE END-IF
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1   PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2   PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA   PIC 9(04) VALUE ZEROS.
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
                   IF WRK-MEDIA >= 6
                       DISPLAY 'APROVADO'
                   ELSE
                       IF WRK-MEDIA >= 2
                           DISPLAY 'RECUPERACAO'
                           ELSE
                        DISPLAY 'REPROVADO'
                        END-IF
                   END-IF.
           STOP RUN.
       END PROGRAM COB8.
