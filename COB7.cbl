       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB5.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 16/03/2021
      * Purpose: Uso do sinal com Operadores aritiméticos
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1   PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2   PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL  PIC S9(04) VALUE ZEROS.
       77 WRK-RESUL-ED  PIC S9(04) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY  '---------------------'.
           DISPLAY 'PRIMEIRO NUMERO : ' WRK-NUM1.
           DISPLAY 'SEGUNDO NUMERO : '  WRK-NUM2.
      *-----------------*
      *       SOMA      *
      *-----------------*
           DISPLAY  '--------- SOMA ------------'.
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
            DISPLAY 'ADICAO : ' WRK-RESUL.
      *-----------------*
      *     SUBTRACAO   *
      *-----------------*
           DISPLAY  '--------- SUBTRACAO ------------'.
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
            DISPLAY 'SUBTRACAO : ' WRK-RESUL.
            DISPLAY 'SUBTRACAO : ' WRK-RESUL-ED.

           STOP RUN.
       END PROGRAM COB5.
