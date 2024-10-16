-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__fulfillments__receipt__gift_cards` as DBT_INTERNAL_DEST
        using (/* Table: orders__fulfillments__receipt__gift_cards */
/* Parent: orders__fulfillments */

SELECT
    t.id,
    t.line_item_id,
    t.masked_code,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__fulfillments__receipt__gift_cards` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__fulfillments` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `line_item_id`, `masked_code`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)
    values
        (`id`, `line_item_id`, `masked_code`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)


    