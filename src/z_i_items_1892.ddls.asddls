@AbapCatalog.sqlViewName: 'ZV_ITEMS_1892'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Order Items'
@Metadata.ignorePropagatedAnnotations: true


define view Z_I_ITEMS_1892 
    as select from zitems_1892 as Item
    
    association to parent Z_I_ORDERS_1892 as _Order 
    on $projection.order_id = _Order.order_id
    
{
     key order_id,
      key item_id,
      
  name,             
  description,      
  release_date,     
  discontinued_date,
  @Semantics.amount.currencyCode : 'currency_code'
  price, 
  @Semantics.currencyCode: true           
  currency_code,  
  @Semantics.quantity.unitOfMeasure : 'unit_of_measure'  
  height,   
  @Semantics.quantity.unitOfMeasure : 'unit_of_measure'          
  width,           
  unit_of_measure,
  depth,
  quantity,
  
  _Order   
      
      
}
