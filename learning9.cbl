       IDENTIFICATION DIVISION.
       PROGRAM-ID. learning9.
      ********************************************************
      *    Calculo de frete
      * *******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-PDUTO PIC X(20) VALUE SPACES.
       77 WRK-STADO PIC X(02) VALUE SPACES.
       77 WRK-VALOR PIC 9(06)V99 VALUE ZEROS.
       77 WRK-FRETE PIC 9(04)V99 VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY 'PRODUTO '
           ACCEPT WRK-PDUTO FROM CONSOLE.

           DISPLAY 'VALOR '
           ACCEPT WRK-VALOR FROM CONSOLE.

           DISPLAY 'ESTADO '
           ACCEPT WRK-STADO FROM CONSOLE.

           EVALUATE WRK-STADO
               WHEN 'SP' COMPUTE WRK-FRETE = WRK-VALOR * 1,05
               WHEN 'RJ' COMPUTE WRK-FRETE = WRK-VALOR * 1,15
               WHEN 'MG' COMPUTE WRK-FRETE = WRK-VALOR * 1,25
               WHEN OTHER DISPLAY 'NAO ENTREGAMOS'
           END-EVALUATE.

           IF WRK-FRETE NOT EQUAL 0 DISPLAY 'VALOR FINAL ' WRK-FRETE
               END-IF.

           STOP RUN.
