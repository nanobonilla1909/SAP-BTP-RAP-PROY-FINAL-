@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Orders'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true

define root view entity Z_C_ORDERS_1892 as projection on Z_I_ORDERS_1892
{
    
    key order_id as OrderId,
    email as Email,
    first_name as FirstName,
    last_name as LastName,
    country as Country,
    delivery_date as DeliveryDate,
    order_status as OrderStatus,
    image_url as ImageUrl,
    created_on as CreatedOn,
   
    _Item : redirected to composition child Z_C_ITEMS_1892
    
}
