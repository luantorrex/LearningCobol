       IDENTIFICATION DIVISION.
       PROGRAM-ID. learning8.
      ********************************************************
      *    Tomadas de decisão
      * *******************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           ACCEPT WRK-NOTA2 FROM CONSOLE.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

           DISPLAY WRK-MEDIA.
           EVALUATE WRK-MEDIA
               WHEN 6 THRU 10 DISPLAY 'APROVADO'
               WHEN 2 THRU 5,9 DISPLAY 'RECUPERACAO'
               WHEN OTHER DISPLAY 'REPROVADO'
           END-EVALUATE.

           STOP RUN.
