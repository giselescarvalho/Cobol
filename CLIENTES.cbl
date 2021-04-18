       IDENTIFICATION DIVISION.
       PROGRAM-ID. CLIENTES.
      ******************************************************************
      * Author: Gisele Carvalho
      * Date: 18/04/2021
      * Purpose: Cobol parte 2: Alura - Manutenção de Registros
      *           Alterando registros
      *           Modo Batch - diretamente acessado
      * Tectonics: cobc
      ******************************************************************
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT CLIENTES
             ASSIGN TO 'C:\Users\Gisele\Desktop\Cobol\CLIENTES.DAT'
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               FILE STATUS IS CLIENTES-STATUS
               RECORD KEY IS  CLIENTES-CHAVE.
       DATA DIVISION.
       FILE SECTION.
       FD CLIENTES.
       01 CLIENTES-REG.
            05 CLIENTES-CHAVE.
                10 CLIENTES-FONE PIC 9(09).
            05 CLIENTES-NOME     PIC X(30).
            05 CLIENTES-EMAIL    PIC X(40).



       WORKING-STORAGE SECTION.
       77 WRK-OPCAO       PIC X(1).
       77 WRK-MODULO      PIC X(25).
       77 WRK-TECLA       PIC X(1).
       77 CLIENTES-STATUS PIC 9(02).
       77 WRK-MSGERRO     PIC X(30).

       SCREEN SECTION.
       01 TELA.
            05 LIMPA-TELA.
                10 BLANK SCREEN.
                10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
                10 LINE 01 COLUMN 25 PIC X(20)
                   BACKGROUND-COLOR 3  FOREGROUND-COLOR 0
                              FROM 'SISTEMA DE CLIENTES '.
                10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.
       01 MENU.
            05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
            05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
            05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
            05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
            05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
            05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
            05 LINE 13 COLUMN 15 VALUE 'OPCAO......: ' .
            05 LINE 13 COLUMN 28 USING WRK-OPCAO.

       01 TELA-REGISTRO.
            05 CHAVE FOREGROUND-COLOR 2.
               10 LINE 10 COLUMN 10 VALUE 'TELEFONE '.
               10 COLUMN PLUS 2 PIC 9(09) USING CLIENTES-FONE
                   BLANK WHEN ZEROS.
            05 SS-DADOS.
               10 LINE 11 COLUMN 10 VALUE 'NOME.... '.
               10 COLUMN PLUS 2 PIC X(30) USING CLIENTES-NOME.
               10 LINE 12 COLUMN 10 VALUE 'EMAIL... '.
               10 COLUMN PLUS 2 PIC X(40) USING CLIENTES-EMAIL.
       01 MOSTRA-ERRO.
             02 MSG-ERRO.
               10 LINE 16 COLUMN 01 ERASE EOL
                             BACKGROUND-COLOR 3.
               10 LINE 16 COLUMN 10 PIC X(30)
                             BACKGROUND-COLOR 3
                             FROM WRK-MSGERRO.
               10 COLUMN PLUS 2 PIC X(01)
                             BACKGROUND-COLOR 3
                             USING WRK-TECLA.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
            PERFORM 1000-INICIAR THRU 1100-MONTATELA.
            PERFORM 2000-PROCESSAR UNTIL WRK-OPCAO = 'X'.
            PERFORM 3000-FINALIZAR.
            STOP RUN.

       1000-INICIAR.
            OPEN I-O CLIENTES
              IF CLIENTES-STATUS = 35 THEN
                  OPEN OUTPUT CLIENTES
                  CLOSE CLIENTES
                  OPEN I-O CLIENTES
               END-IF.

       1100-MONTATELA.
            DISPLAY TELA.
            ACCEPT MENU.

       2000-PROCESSAR.
            MOVE SPACES TO CLIENTES-NOME CLIENTES-EMAIL WRK-MSGERRO.
            EVALUATE WRK-OPCAO
              WHEN 1
               PERFORM 5000-INCLUIR
              WHEN 2
                PERFORM 6000-CONSULTAR
              WHEN 3
                PERFORM 7000-ALTERAR
              WHEN 4
                PERFORM 8000-EXCLUIR
              WHEN 5
                CONTINUE
              WHEN OTHER
                IF WRK-OPCAO NOT EQUAL 'X'
                    DISPLAY 'ENTRE COM OPCAO CORRETA'
                END-IF
            END-EVALUATE.
              PERFORM 1100-MONTATELA.



       3000-FINALIZAR.
             CLOSE CLIENTES.



       5000-INCLUIR.
             MOVE 'MODULO - INCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.
              ACCEPT TELA-REGISTRO.
                WRITE CLIENTES-REG
                 INVALID KEY
                   MOVE 'JA EXISTE ' TO WRK-MSGERRO
                   ACCEPT MOSTRA-ERRO
                END-WRITE.

       6000-CONSULTAR.
             MOVE 'MODULO - CONSULTA ' TO WRK-MODULO.
             DISPLAY TELA.
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                READ CLIENTES
                  INVALID KEY
                   MOVE 'NAO ENCONTRADO   '  TO WRK-MSGERRO
                  NOT INVALID KEY
                  MOVE '--  ENCONTRADO  --'  TO WRK-MSGERRO
                   DISPLAY SS-DADOS
                 END-READ.
                   ACCEPT MOSTRA-ERRO.

       7000-ALTERAR.
             MOVE 'MODULO - ALTERAR ' TO WRK-MODULO.
             DISPLAY TELA.
             DISPLAY TELA-REGISTRO.
              ACCEPT CHAVE.
                READ CLIENTES
                IF CLIENTES-STATUS = 0
                    ACCEPT SS-DADOS
                     REWRITE CLIENTES-REG
                       IF CLIENTES-STATUS = 0
                            MOVE 'REGISTRO ALTERADO ' TO WRK-MSGERRO
                            ACCEPT MOSTRA-ERRO
                       ELSE
                            MOVE 'REGISTRO NAO ALTERADO' TO WRK-MSGERRO
                            ACCEPT MOSTRA-ERRO
                       END-IF
                 ELSE
                      MOVE 'REGISTO NAO ENCONTRADO ' TO WRK-MSGERRO
                      ACCEPT MOSTRA-ERRO
                END-IF.


       8000-EXCLUIR.
             MOVE 'MODULO - EXCLUSAO ' TO WRK-MODULO.
             DISPLAY TELA.
               DISPLAY TELA-REGISTRO.
               ACCEPT CHAVE.
                READ CLIENTES
                  INVALID KEY
                   MOVE 'NAO ENCONTRADO   '  TO WRK-MSGERRO
                 NOT INVALID KEY
                  MOVE ' ENCONTRADO  (S/N) ? '  TO WRK-MSGERRO
                   DISPLAY SS-DADOS
                END-READ.
                  ACCEPT MOSTRA-ERRO.
                    IF WRK-TECLA = 'S' AND CLIENTES-STATUS = 0
                           DELETE CLIENTES
                            INVALID KEY
                            MOVE 'NAO EXCLUIDO ' TO WRK-MSGERRO
                            ACCEPT  MOSTRA-ERRO
                          END-DELETE
                     END-IF.
