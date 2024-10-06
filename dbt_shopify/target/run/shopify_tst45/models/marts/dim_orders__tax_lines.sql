-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__tax_lines` as DBT_INTERNAL_DEST
        using (/* Table: orders__tax_lines */
/* Parent: orders */

SELECT
    t.price,
    t.rate,
    t.title,
    t.price_set__shop_money__amount,
    t.price_set__shop_money__currency_code,
    t.price_set__presentment_money__amount,
    t.price_set__presentment_money__currency_code,
    t.channel_liable,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__tax_lines` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`price`, `rate`, `title`, `price_set__shop_money__amount`, `price_set__shop_money__currency_code`, `price_set__presentment_money__amount`, `price_set__presentment_money__currency_code`, `channel_liable`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)
    values
        (`price`, `rate`, `title`, `price_set__shop_money__amount`, `price_set__shop_money__currency_code`, `price_set__presentment_money__amount`, `price_set__presentment_money__currency_code`, `channel_liable`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)


    