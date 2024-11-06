*&---------------------------------------------------------------------*
*& Report ZTEST_RAJN1
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTEST_RAJN1.

parameters : number1 type i,
            number2 type i.

data sum type i.

sum = number1 + number2.

write:/ sum.

write:text-001.
