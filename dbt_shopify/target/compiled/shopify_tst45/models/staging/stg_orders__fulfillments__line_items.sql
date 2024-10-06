/* Table: orders__fulfillments__line_items */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__fulfillments`

SELECT
/* select which columns will be available for table 'orders__fulfillments__line_items' */
    id,
    admin_graphql_api_id,
    fulfillable_quantity,
    fulfillment_service,
    fulfillment_status,
    gift_card,
    grams,
    name,
    price,
    price_set__shop_money__amount,
    price_set__shop_money__currency_code,
    price_set__presentment_money__amount,
    price_set__presentment_money__currency_code,
    product_exists,
    product_id,
    quantity,
    requires_shipping,
    sku,
    taxable,
    title,
    total_discount,
    total_discount_set__shop_money__amount,
    total_discount_set__shop_money__currency_code,
    total_discount_set__presentment_money__amount,
    total_discount_set__presentment_money__currency_code,
    variant_id,
    variant_inventory_management,
    vendor,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
    variant_title,
FROM `dlt-dev-external`.`shopify_data_tst45`.`orders__fulfillments__line_items`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__fulfillments` )