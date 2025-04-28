@AbapCatalog.sqlViewName: 'ZV_ORDERS_1892'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface - Orders'


define root view Z_I_ORDERS_1892
  as select from zorders_1892 as Orders
  
  composition [0..*] of Z_I_ITEMS_1892 as _Item

{
  key order_id,
      email,
      first_name,
      last_name,
      country,
      delivery_date,
      order_status,
      image_url,
      @Semantics.systemDateTime.createdAt: true
      created_on, 
      
      _Item
}
