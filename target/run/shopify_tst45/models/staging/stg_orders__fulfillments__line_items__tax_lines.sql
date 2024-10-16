
  
    

    create or replace table `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__fulfillments__line_items__tax_lines`
      
    
    

    OPTIONS()
    as (
      /* Table: orders__fulfillments__line_items__tax_lines */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__fulfillments__line_items`

SELECT
/* select which columns will be available for table 'orders__fulfillments__line_items__tax_lines' */
    channel_liable,
    price,
    price_set__shop_money__amount,
    price_set__shop_money__currency_code,
    price_set__presentment_money__amount,
    price_set__presentment_money__currency_code,
    rate,
    title,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlt-dev-external`.`shopify_data_tst45`.`orders__fulfillments__line_items__tax_lines`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__fulfillments__line_items` )
    );
  