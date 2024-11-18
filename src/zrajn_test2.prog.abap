*&---------------------------------------------------------------------*
*& Report ZRAJN_TEST2
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZRAJN_TEST2.

DATA: lv_matnr TYPE mara-matnr,
      ls_mara  TYPE mara.

" Fetch data from MARA table
SELECT SINGLE *
  FROM mara
  INTO ls_mara
 WHERE matnr = lv_matnr.


IF sy-subrc = 0.
  WRITE: / 'Material:', ls_mara-matnr,
         / 'Description:', ls_mara-mtart,
         / 'Industry Sector:', ls_mara-mbrsh.
ELSE.
  WRITE: / 'Material not found.'.
ENDIF.
