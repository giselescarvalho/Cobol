       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB5.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 16/03/2021
      * Purpose: Operadores aritiméticos
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1   PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2   PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL  PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY  '---------------------'.
           DISPLAY 'PRIMEIRO NUMERO : ' WRK-NUM1.
           DISPLAY 'SEGUNDO NUMERO : '  WRK-NUM2.
           DISPLAY  '--------- SAIDA DE DADOS ------------'.
      *******************
      *ÁREA MOSTRA DADOS*
      *******************
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
            DISPLAY 'RESULTADO : ' WRK-RESUL.
           STOP RUN.
       END PROGRAM COB5.
