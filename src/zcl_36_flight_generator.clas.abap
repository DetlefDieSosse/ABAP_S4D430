CLASS zcl_36_flight_generator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_36_flight_generator IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " delete data
    DELETE FROM z36_flight.
    out->write( |Deleted: { sy-dbcnt }| ).

    " create data
    DATA flight  TYPE z36_flight.
    DATA flights TYPE TABLE OF z36_flight.

    flight-client        = sy-mandt.
    flight-airline_id    = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date   = '20241117'.
    flight-flight_price  = '325.88'.
    flight-currency_code = 'EUR'.
    flight-created_by    = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.

    APPEND flight TO flights.

    flight-client        = sy-mandt.
    flight-airline_id    = 'LH'.
    flight-connection_id = '0400'.
    flight-flight_date   = '20250104'.
    flight-flight_price  = '385.88'.
    flight-currency_code = 'EUR'.
    flight-created_by    = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.

    APPEND flight TO flights.

    flight-client        = sy-mandt.
    flight-airline_id    = 'LH'.
    flight-connection_id = '0402'.
    flight-flight_date   = '20241120'.
    flight-flight_price  = '420.69'.
    flight-currency_code = 'EUR'.
    flight-created_by    = sy-uname.
    GET TIME STAMP FIELD flight-created_at.
    flight-local_last_changed_by = sy-uname.
    GET TIME STAMP FIELD flight-local_last_changed_at.
    GET TIME STAMP FIELD flight-last_changed_at.

    APPEND flight TO flights.

    " insert data
    INSERT z36_flight FROM TABLE @flights.
    out->write( |Inserted: { sy-dbcnt }| ).
  ENDMETHOD.
ENDCLASS.
