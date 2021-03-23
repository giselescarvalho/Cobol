       IDENTIFICATION DIVISION.
       PROGRAM-ID. COB19.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 23/03/2021
      * Purpose: Redefinindo uma variável com índice - REDEFINES
      *          Final do curso COBOL Primeiros passos
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *WRK-MESES-EXTENSO eh uma variavel de 36 elementos,
      *             ex: = [jan, fev...]
       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(3) VALUE 'JAN' .
           02 FILLER PIC X(3) VALUE 'FEV'.
           02 FILLER PIC X(3) VALUE 'MAR'.
           02 FILLER PIC X(3) VALUE 'ABR'.
           02 FILLER PIC X(3) VALUE 'MAI'.
           02 FILLER PIC X(3) VALUE 'JUN'.
           02 FILLER PIC X(3) VALUE 'JUL'.
           02 FILLER PIC X(3) VALUE 'AGO'.
           02 FILLER PIC X(3) VALUE 'SET'.
           02 FILLER PIC X(3) VALUE 'OUT'.
           02 FILLER PIC X(3) VALUE 'NOV'.
           02 FILLER PIC X(3) VALUE 'DEZ'.

       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(3) OCCURS 12 TIMES.

       01 DATASYS.
           02 WRK-ANOSYS PIC 9(04) VALUE ZEROS.
           02 WRK-MESSYS PIC 9(02) VALUE ZEROS.
           02 WRK-DIASYS PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT DATASYS FROM DATE YYYYMMDD.
           DISPLAY  '------------------------'.
           DISPLAY  'DATA ATUAL: ' WRK-DIASYS ' DE ' WRK-MES(WRK-MESSYS)
           ' DE ' WRK-ANOSYS.
           STOP RUN.


      *END PROGRAM COB19
