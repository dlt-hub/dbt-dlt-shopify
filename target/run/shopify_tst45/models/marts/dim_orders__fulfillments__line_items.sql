-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__fulfillments__line_items` as DBT_INTERNAL_DEST
        using (/* Table: orders__fulfillments__line_items */
/* Parent: orders__fulfillments */

SELECT
    t.id,
    t.admin_graphql_api_id,
    t.fulfillable_quantity,
    t.fulfillment_service,
    t.fulfillment_status,
    t.gift_card,
    t.grams,
    t.name,
    t.price,
    t.price_set__shop_money__amount,
    t.price_set__shop_money__currency_code,
    t.price_set__presentment_money__amount,
    t.price_set__presentment_money__currency_code,
    t.product_exists,
    t.product_id,
    t.quantity,
    t.requires_shipping,
    t.sku,
    t.taxable,
    t.title,
    t.total_discount,
    t.total_discount_set__shop_money__amount,
    t.total_discount_set__shop_money__currency_code,
    t.total_discount_set__presentment_money__amount,
    t.total_discount_set__presentment_money__currency_code,
    t.variant_id,
    t.variant_inventory_management,
    t.vendor,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
    t.variant_title,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__fulfillments__line_items` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__fulfillments` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `admin_graphql_api_id`, `fulfillable_quantity`, `fulfillment_service`, `fulfillment_status`, `gift_card`, `grams`, `name`, `price`, `price_set__shop_money__amount`, `price_set__shop_money__currency_code`, `price_set__presentment_money__amount`, `price_set__presentment_money__currency_code`, `product_exists`, `product_id`, `quantity`, `requires_shipping`, `sku`, `taxable`, `title`, `total_discount`, `total_discount_set__shop_money__amount`, `total_discount_set__shop_money__currency_code`, `total_discount_set__presentment_money__amount`, `total_discount_set__presentment_money__currency_code`, `variant_id`, `variant_inventory_management`, `vendor`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`, `variant_title`)
    values
        (`id`, `admin_graphql_api_id`, `fulfillable_quantity`, `fulfillment_service`, `fulfillment_status`, `gift_card`, `grams`, `name`, `price`, `price_set__shop_money__amount`, `price_set__shop_money__currency_code`, `price_set__presentment_money__amount`, `price_set__presentment_money__currency_code`, `product_exists`, `product_id`, `quantity`, `requires_shipping`, `sku`, `taxable`, `title`, `total_discount`, `total_discount_set__shop_money__amount`, `total_discount_set__shop_money__currency_code`, `total_discount_set__presentment_money__amount`, `total_discount_set__presentment_money__currency_code`, `variant_id`, `variant_inventory_management`, `vendor`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`, `variant_title`)


    