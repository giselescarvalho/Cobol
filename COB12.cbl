       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB12.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 20/03/2021
      * Purpose: Largura e comprimento
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-LARGURA     PIC 9(20)V99 VALUE ZEROS.
       77 WRK-COMPRIMENTO PIC 9(20)V99 VALUE ZEROS.
       77 WRK-AREA        PIC 9(06)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY  'Digite LARGURA: '
           ACCEPT WRK-LARGURA FROM CONSOLE.

           DISPLAY  'COMPRIMENTO: '
           ACCEPT WRK-COMPRIMENTO FROM CONSOLE.

      *--------------------*
      * LOGICA CONDICIONAL *
      *--------------------*

           IF WRK-LARGURA > 0 AND WRK-COMPRIMENTO > 0
               COMPUTE WRK-AREA = (WRK-LARGURA * WRK-COMPRIMENTO)
               DISPLAY '--------------------'
               DISPLAY 'AREA : ' WRK-AREA
           ELSE
               DISPLAY 'FALTA INFORMAR ALGO'

           END-IF.

           DISPLAY  '---------------------'.


           STOP RUN.
       END PROGRAM COB12.
