CLASS zcl_insert_data_1892 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_1892 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DATA: lt_orders TYPE TABLE OF zorders_1892.
    DATA: lt_items TYPE TABLE OF zitems_1892.

** ORDERS **
    lt_orders = VALUE #(
        ( order_id = 'RW7EW-01' email = 'mboni@gmail.com' first_name  = 'Marcelo' last_name = 'Bonini' country = 'Argentina' delivery_date = '20250611' order_status = 'P' image_url = '' created_on = '20241109235438.0000000' )
        ( order_id = 'GW2TB-06' email = 'feli78@gmail.com' first_name  = 'Felicitas' last_name = 'Perez' country = 'Uruguay' delivery_date = '20250613' order_status = 'T' image_url = '' created_on = '20241109235438.0000000')
    ).

    DELETE FROM zorders_1892.
    INSERT zorders_1892 FROM TABLE @lt_orders.
    SELECT * FROM zorders_1892 INTO TABLE
    @lt_orders.
    out->write( sy-dbcnt ).
    out->write( 'zorders data inserted successfully!' ).


** ITEMS **
    lt_items = VALUE #(
        ( order_id = 'RW7EW-01' item_id = 'SKU-109011' name = 'Carpa' description = 'Carpa para 4 Personas' release_date = '20200604'
          price = 2400  currency_code = 'ARS' height = '500' width = '600'  unit_of_measure = 'CM'   depth = 200  quantity = '1' )

        ( order_id = 'RW7EW-01' item_id = 'SKU-109024' name = 'Estacas' description = 'Estacas para clavar carpa' release_date = '20200604'
          price = 800  currency_code = 'ARS' height = '30' width = '70'  unit_of_measure = 'CM'   depth = 10  quantity = '8' )

        ( order_id = 'GW2TB-06' item_id = 'SKU-232018' name = 'iPad Air' description = 'Tablet Apple 13p' release_date = '20200812'
          price = 30000  currency_code = 'ARS' height = 30 width = 50  unit_of_measure = 'CM'   depth = 3  quantity = '1' )

        ( order_id = 'GW2TB-06' item_id = 'SKU-232019' name = 'Funda iPad' description = 'Funda con Teclado para iPad Air' release_date = '20200812'
          price = 40000  currency_code = 'ARS' height = 35 width = 55  unit_of_measure = 'CM'   depth = 1  quantity = '1' )
    ).

    DELETE FROM zitems_1892.
    INSERT zitems_1892 FROM TABLE @lt_items.
    SELECT * FROM zitems_1892 INTO TABLE
    @lt_items.
    out->write( sy-dbcnt ).
    out->write( 'zitems data inserted successfully!' ).

  ENDMETHOD.

ENDCLASS.



