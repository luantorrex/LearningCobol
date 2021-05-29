       IDENTIFICATION DIVISION.
       PROGRAM-ID. learning12.
      ********************************************************
      *    Trabalhando com books
      * *******************************************************
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           COPY 'book.cbl'.

       PROCEDURE DIVISION.
           ACCEPT CALENDARIO FROM DATE YYYYMMDD.
           DISPLAY WRK-DIA ' DE ' WRK-MES ' DE ' WRK-ANO.

       END PROGRAM learning12.
