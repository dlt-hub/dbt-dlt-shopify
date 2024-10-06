-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dlt_processed_load_ids` as DBT_INTERNAL_DEST
        using (
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim__dlt_loads`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`fact_orders`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_customers`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_customers__addresses`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__payment_gateway_names`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__tax_lines`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`fact_orders__fulfillments`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__fulfillments__line_items`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__fulfillments__line_items__tax_lines`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__fulfillments__receipt__gift_cards`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`fact_orders__line_items`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__line_items__tax_lines`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products__variants`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products__options`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products__options__values`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products__images`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products__images__variant_ids`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products__image__variant_ids`
/* we save all currently active load ids into the processed ids table */
select load_id, current_timestamp() as inserted_at FROM `dlt-dev-external`.`shopify_data_tst45_transformed`.`dlt_active_load_ids`
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`load_id`, `inserted_at`)
    values
        (`load_id`, `inserted_at`)


    