       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB13.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 21/03/2021
      * Purpose: Lógica ESTRUTURADA - PARAGRAFOS
      *          PERFOM
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1   PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2   PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA   PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.

       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           IF WRK-NOTA1 > 0 AND WRK-NOTA2 > 0
               PERFORM 0200-PROCESSAR
           END-IF.
           PERFORM 0300-FINALIZAR
           STOP RUN.

      *PRIMEIRO PARAGRAFO
       0100-INICIALIZAR.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           ACCEPT WRK-NOTA2 FROM CONSOLE.

      *SEGUNDO PARAGRAFO
       0200-PROCESSAR.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) /  2.
             DISPLAY 'MEDIA ==' WRK-MEDIA.
              IF WRK-MEDIA >= 06
                DISPLAY 'APROVADO'
                  ELSE
                      IF WRK-MEDIA >= 02
                          DISPLAY 'RECUPERACAO'
                      ELSE
                          DISPLAY 'REPROVADO'
                      END-IF
              END-IF.
      *TERCEIRO PARAGRAFO
       0300-FINALIZAR.
           DISPLAY '-----------'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.


      *END PROGRAM COB13.
