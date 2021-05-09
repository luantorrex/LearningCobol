       IDENTIFICATION DIVISION.
       PROGRAM-ID. learning5.
      ********************************************************
      *    Operações matemáticas
      * *******************************************************
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1 PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2 PIC 9(02) VALUE ZEROS.
       77 WRK-RESU PIC 9(03) VALUE ZEROS.
       77 WRK-REST PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY 'DIGITE DOIS NUMEROS'.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '========================================='.

      *************************************** SOMA
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESU.
            DISPLAY 'SOMA: ' WRK-RESU.

      *************************************** SUBTRACAO
           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESU.
            DISPLAY 'SUBTRACAO: ' WRK-RESU.

      *************************************** DIVISAO
           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESU
               REMAINDER WRK-REST.
            DISPLAY 'DIVISAO: ' WRK-RESU ' / RESTO: ' WRK-REST.

      *************************************** MULTIPLICACAO
           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESU.
            DISPLAY 'MULTIPLICACAO: ' WRK-RESU.

      *************************************** EXPRESSOES COMPLEXAS
           COMPUTE WRK-RESU = (WRK-NUM1 + WRK-NUM2) / 2.
            DISPLAY 'MEDIA: ' WRK-RESU.

           STOP RUN.
