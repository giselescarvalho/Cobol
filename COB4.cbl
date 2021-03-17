       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB4.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 17/03/2021
      * Purpose: Imprimir formatado com uso de vírgula
      *           Criação de máscara SALARIO-ED
      *           MOVE TO é basicamente = (atribuir um valor à variável)
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME       PIC X(20)    VALUE SPACES.
       77 WRK-SALARIO    PIC 9(06)V99 VALUE ZEROS.
       77 WRK-SALARIO-ED PIC $ZZZ.ZZ9,99 VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME    FROM CONSOLE.
           ACCEPT WRK-SALARIO FROM CONSOLE.
      *-----------------*
      *ÁREA MOSTRA DADOS*
      *-----------------*
           DISPLAY  '---------------------'.
           DISPLAY 'NOME : ' WRK-NOME.
           MOVE WRK-SALARIO TO WRK-SALARIO-ED.
           DISPLAY 'SALARIO : '  WRK-SALARIO-ED.
           DISPLAY  '--------- SAIDA DE DADOS ------------'.
           STOP RUN.
       END PROGRAM COB4.
