       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB16.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 21/03/2021
      * Purpose: Seção Repetições e Reaproveitamento de Código
      *          PERFORM UNTIL
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VENDAS   PIC 9(06)V99 VALUE ZEROS.
       77 WRK-QT       PIC 9(03) VALUE 1.
       77 WRK-ACUM     PIC 9(04)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
             IF WRK-VENDAS > 0
               PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
            END-IF.
               PERFORM 0300-FINALIZAR
           STOP RUN.

       0100-INICIALIZAR.
           DISPLAY 'DIGITE AS VENDAS OU 0 PARA SAIR : '.
           ACCEPT WRK-VENDAS.

       0200-PROCESSAR.
               ADD 1 TO WRK-QT.
               ADD WRK-VENDAS TO WRK-ACUM.
               ACCEPT WRK-VENDAS.

       0300-FINALIZAR.
           DISPLAY '-----------'.
           DISPLAY 'ACUMULADO: ' WRK-ACUM.
           DISPLAY 'QUANTIDADE DE DADOS INSERIDOS INCLUI O 0: ' WRK-QT.
           DISPLAY 'FINAL DE PROCESSAMENTO'.


      *END PROGRAM COB15.
