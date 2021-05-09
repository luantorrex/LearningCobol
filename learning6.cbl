       IDENTIFICATION DIVISION.
       PROGRAM-ID. learning6.
      ********************************************************
      *    Uso do sinal (+ / -)
      * *******************************************************
       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1 PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2 PIC 9(02) VALUE ZEROS.
       77 WRK-RESU PIC S9(04) VALUE ZEROS.
       77 WRK-RESU-ED PIC -ZZ9 VALUE ZEROS.

       PROCEDURE DIVISION.
           DISPLAY 'DIGITE DOIS NUMEROS'.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY '========================================='.

      *************************************** SUBTRACAO
      ********** Subtrai num2 de num1
           SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESU.
            MOVE WRK-RESU TO WRK-RESU-ED.
            DISPLAY 'SUBTRACAO: ' WRK-RESU-ED.

           STOP RUN.
