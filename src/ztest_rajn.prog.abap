*&---------------------------------------------------------------------*
*& Report ZTEST_RAJN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTEST_RAJN.

select * from mara into table @data(lt_mara).
  IF sy-subrc IS INITIAL.
    LOOP AT lt_mara ASSIGNING FIELD-SYMBOL(<fs_mara>).
      WRITE:/ <fs_mara>-matnr.
    ENDLOOP.
  ENDIF.
