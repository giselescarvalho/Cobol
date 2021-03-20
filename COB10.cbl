       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB10.
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
       77 WRK-PRODUTO PIC X(20) VALUE SPACES.
       77 WRK-VALOR   PIC 9(06)V99 VALUE ZEROS.
       77 WRK-UF      PIC X(02) VALUE SPACES.
       77 WRK-FRETE   PIC 9(06)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY  'Digite Produto'
           ACCEPT WRK-PRODUTO FROM CONSOLE.
           DISPLAY  'Digite Valor do Produto'
           ACCEPT WRK-VALOR FROM CONSOLE.
           DISPLAY  'Digite UF com dois digitos'
           ACCEPT WRK-UF FROM CONSOLE.
           DISPLAY  '---------------------'.
      *--------------------*
      * LOGICA CONDICIONAL *
      *--------------------*
           EVALUATE WRK-UF
             WHEN 'SP'
              COMPUTE WRK-FRETE = WRK-VALOR * 1,05
             WHEN 'RJ'
              COMPUTE WRK-FRETE = WRK-VALOR * 1,10
             WHEN 'MG'
              COMPUTE WRK-FRETE = WRK-VALOR * 1,15
             WHEN OTHER
              DISPLAY 'ENTREGA NAO EH POSSIVEL'
           END-EVALUATE.

           IF WRK-FRETE NOT EQUAL 0
             DISPLAY 'VALOR DO FRETE COM PRODUTO: ' WRK-FRETE
           END-IF.
           STOP RUN.
       END PROGRAM COB10.
