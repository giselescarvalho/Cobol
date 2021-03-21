       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB14.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 21/03/2021
      * Purpose: PERFOM TIMES
      *           Receber um número e gerar a tabuada
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO   PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR PIC 9(02) VALUE 1.
       77 WRK-RESUL    PIC 9(03) VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
            PERFORM 0100-INICIALIZAR.
             IF WRK-NUMERO > 0
               PERFORM 0200-PROCESSAR
            END-IF.
               PERFORM 0300-FINALIZAR
            STOP RUN.
       0100-INICIALIZAR.
            DISPLAY 'DIGITE O NUMERO..... : '.
            ACCEPT WRK-NUMERO.
       0200-PROCESSAR.
            PERFORM 10 TIMES
                 COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
                 DISPLAY '-----------'
                  DISPLAY WRK-NUMERO ' x ' WRK-CONTADOR ' = ' WRK-RESUL
                   ADD 1 TO WRK-CONTADOR
            END-PERFORM.
       0300-FINALIZAR.
           DISPLAY '-----------'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.


      *END PROGRAM COB14.
