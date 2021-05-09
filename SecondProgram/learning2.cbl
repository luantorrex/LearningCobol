       IDENTIFICATION DIVISION.
       PROGRAM-ID. learning2.
      ********************************************************
      *    Receive and return a string
      * *******************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
      * 3 SECTIONS: WORKING, LOCAL AND LINKAGE
       WORKING-STORAGE SECTION.
      * COBOL TRABALHA COM TEXTO OU NUMERO
      * LEVEL 77: UNIQUE, LOCAL AND PUBLIC
      * WRK: CORPORATE'S PATTERN

      * PIC A: Letras
      * PIC X: Alfanumerico (caracteres especiais)
      * PIC 9: Numeros
       77 WRK-NOME PIC X(20) VALUE SPACES.
      *                9(03) VALUE ZEROS.
       PROCEDURE DIVISION.
           DISPLAY 'DIGITE UM NOME'
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY 'NOME: ' WRK-NOME(1:10).
           STOP RUN.
