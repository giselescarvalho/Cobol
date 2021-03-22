       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB17.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 22/03/2021
      * Purpose: Seção Repetições e Reaproveitamento de Código
      *          PERFORM UNTIL
      *          Usando o conceito de BOOK, utilizado para armazenar as
      *           variaveis
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'BOOK.COB'.
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


      *END PROGRAM COB17.
