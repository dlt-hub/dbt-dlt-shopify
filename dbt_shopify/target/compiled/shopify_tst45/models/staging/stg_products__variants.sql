/* Table: products__variants */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products`

SELECT
/* select which columns will be available for table 'products__variants' */
    id,
    product_id,
    title,
    price,
    position,
    inventory_policy,
    option1,
    created_at,
    updated_at,
    taxable,
    fulfillment_service,
    grams,
    inventory_management,
    requires_shipping,
    sku,
    weight,
    weight_unit,
    inventory_item_id,
    inventory_quantity,
    old_inventory_quantity,
    admin_graphql_api_id,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
    image_id,
    compare_at_price,
FROM `dlt-dev-external`.`shopify_data_tst45`.`products__variants`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products` )