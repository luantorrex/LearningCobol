       IDENTIFICATION DIVISION.
       PROGRAM-ID. learning11.
      ********************************************************
      *    Trabalhando com variavel tipo tabela - redefines
      * *******************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 WRK-MESES-EXTENSO.
           02 FILLER PIC X(03) VALUE 'JAN'.
           02 FILLER PIC X(03) VALUE 'FEV'.
           02 FILLER PIC X(03) VALUE 'MAR'.
           02 FILLER PIC X(03) VALUE 'ABR'.
           02 FILLER PIC X(03) VALUE 'MAI'.
           02 FILLER PIC X(03) VALUE 'JUN'.
           02 FILLER PIC X(03) VALUE 'JUL'.
           02 FILLER PIC X(03) VALUE 'AGO'.
           02 FILLER PIC X(03) VALUE 'SET'.
           02 FILLER PIC X(03) VALUE 'OUT'.
           02 FILLER PIC X(03) VALUE 'NOV'.
           02 FILLER PIC X(03) VALUE 'DEZ'.

       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
           02 WRK-MES PIC X(3) OCCURS 12 TIMES.

       01 DATA-SYS.
           02 ANO-SYS PIC 9(04) VALUE ZEROS.
           02 MES-SYS PIC 9(02) VALUE ZEROS.
           02 DIA-SYS PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
           ACCEPT DATA-SYS FROM DATE YYYYMMDD.
           DISPLAY DIA-SYS ' DE ' WRK-MES(MES-SYS) ' DE ' ANO-SYS.
           STOP RUN.
