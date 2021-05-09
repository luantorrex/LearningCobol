       IDENTIFICATION DIVISION.
       PROGRAM-ID. learning2.
      ********************************************************
      *    Catching variables from system
      * *******************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-DATE.
           02 WRK-ANO PIC 9(04) VALUE ZEROS.
           02 WRK-MES PIC 9(02) VALUE ZEROS.
           02 WRK-DIA PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT WRK-DATE FROM DATE YYYYMMDD.
           DISPLAY WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.
           STOP RUN.
