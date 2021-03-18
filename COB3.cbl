       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB3.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 17/03/2021
      * Purpose:  Receber e Imprimir data do sistemas
      *           Vari�veis estruturadas (n�vel 01, 02...)
      *           Vari�vel 01 � pai, e nas demais s�o filhos
      *          .
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATA.
           02 WRK-ANO PIC 9(04) VALUE ZEROS.
           02 WRK-MES PIC 9(02) VALUE ZEROS.
           02 WRK-DIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'Insira a data no formato YYYYMMDD'
           ACCEPT WRK-DATA FROM CONSOLE.
           DISPLAY  '------------------------'.
           DISPLAY  'DATA ATUAL: ' WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.
           STOP RUN.
       END PROGRAM COB3.

      *VALUE ZEROS aceita ZEROS na entrada
      *ACCEPT l� o que foi inserido no console
      *DISPLAY imprimir� e (1:10) mostra apenas os 10 primeiros caracteres
