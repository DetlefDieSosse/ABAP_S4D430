CLASS zcl_36_intro DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_36_intro IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data var type /lrn/s4d430_ind.
    SELECT FROM /lrn/s4d430_ind
      FIELDS *
        INTO TABLE @DATA(result).

  ENDMETHOD.
ENDCLASS.
