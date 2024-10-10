CLASS zcl_36_rls_path_expr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_36_RLS_PATH_EXPR IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    SELECT
*    FROM /LRN/C_Employee_Ann
      FROM /lrn/c_employee_qry
    FIELDS employeeid,
           firstname,
           lastname,
           departmentid,

           departmentdescription,
           assistantname,
           \_department\_head-lastname AS headname

    INTO TABLE @DATA(result).

    out->write( result ).

  ENDMETHOD.
ENDCLASS.
