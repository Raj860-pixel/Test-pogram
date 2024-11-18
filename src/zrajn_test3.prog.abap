*&---------------------------------------------------------------------*
*& Report ZRAJN_TEST3
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZRAJN_TEST3.

DATA: lv_vbeln TYPE vbak-vbeln.

SELECT SINGLE *
  FROM vbak
  INTO @data(ls_vbak)
 WHERE vbeln = @lv_vbeln.

lv_vbeln = '0000001184'.


IF sy-subrc = 0.
  WRITE: / 'Sales Document:', ls_vbak-vbeln,
         / 'Document Type:', ls_vbak-auart,
         / 'Sales Org:', ls_vbak-vkorg.
ELSE.
  WRITE: / 'Sales document not found.'.
ENDIF.
