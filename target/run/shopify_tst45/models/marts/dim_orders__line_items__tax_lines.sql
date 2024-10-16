-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__line_items__tax_lines` as DBT_INTERNAL_DEST
        using (/* Table: orders__line_items__tax_lines */
/* Parent: orders__line_items */

SELECT
    t.channel_liable,
    t.price,
    t.price_set__shop_money__amount,
    t.price_set__shop_money__currency_code,
    t.price_set__presentment_money__amount,
    t.price_set__presentment_money__currency_code,
    t.rate,
    t.title,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__line_items__tax_lines` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__line_items` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`channel_liable`, `price`, `price_set__shop_money__amount`, `price_set__shop_money__currency_code`, `price_set__presentment_money__amount`, `price_set__presentment_money__currency_code`, `rate`, `title`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)
    values
        (`channel_liable`, `price`, `price_set__shop_money__amount`, `price_set__shop_money__currency_code`, `price_set__presentment_money__amount`, `price_set__presentment_money__currency_code`, `rate`, `title`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)


    