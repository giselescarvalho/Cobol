       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB2.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 16/03/2021
      * Purpose: Entender as vari�veis PIC X � alfan�merico
      *                                PIC 9 � n�merico
      *                                PIC A � de letras
      *          Ao lado do PIC tem-se os valores aceitos, por exemplo,
      *          PIC 9 (2), ou PIC 99, a vari�vel � n�merica e aceita dois
      *          n�meros de 00 at� 99.
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
      *FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(20) VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            ACCEPT WRK-NOME FROM CONSOLE.
            DISPLAY 'NOME: ' WRK-NOME(1:10)
            STOP RUN.
       END PROGRAM COB2.

      *VALUE SPACES aceita espa�os na entrada
      * ACCEPT l� o que foi inserido no console
      *DISPLAY imprimir� e (1:10) mostra apenas os 10 primeiros caracteres
