       IDENTIFICATION DIVISION.
       PROGRAM-ID. learning7.
      ********************************************************
      *    Tomadas de decisão
      * *******************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOTA1 FROM CONSOLE.
           ACCEPT WRK-NOTA2 FROM CONSOLE.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

           IF WRK-MEDIA >= 6
               DISPLAY 'APROVADO'
           ELSE
               IF WRK-MEDIA >= 2
                   DISPLAY 'RECUPERACAO'
               ELSE
                   DISPLAY 'REPROVADO'
               END-IF
           END-IF.

           DISPLAY WRK-MEDIA.
           STOP RUN.
