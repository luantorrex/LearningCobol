       IDENTIFICATION DIVISION.
       PROGRAM-ID. learning10.
      ********************************************************
      *    Trabalhando com variavel tipo tabela - occurs
      * *******************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES.
           03 WRK-MES PIC X(09) OCCURS 12 TIMES.

       01 DATA-SYS.
           02 ANO-SYS PIC 9(04) VALUE ZEROS.
           02 MES-SYS PIC 9(02) VALUE ZEROS.
           02 DIA-SYS PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT DATA-SYS FROM DATE YYYYMMDD.
           PERFORM MONTAMES.
           DISPLAY DIA-SYS ' DE ' WRK-MES(MES-SYS) ' DE ' ANO-SYS.
           STOP RUN.

       MONTAMES.
           MOVE 'JANEIRO'      TO WRK-MES(01).
           MOVE 'FEVEREIRO'    TO WRK-MES(02).
           MOVE 'MARCO'        TO WRK-MES(03).
           MOVE 'ABRIL'        TO WRK-MES(04).
           MOVE 'MAIO'         TO WRK-MES(05).
           MOVE 'JUNHO'        TO WRK-MES(06).
           MOVE 'JULHO'        TO WRK-MES(07).
           MOVE 'AGOSTO'       TO WRK-MES(08).
           MOVE 'SETEMBRO'     TO WRK-MES(09).
           MOVE 'OUTUBRO'      TO WRK-MES(10).
           MOVE 'NOVEMBRO'     TO WRK-MES(11).
           MOVE 'DEZEMBRO'     TO WRK-MES(12).
