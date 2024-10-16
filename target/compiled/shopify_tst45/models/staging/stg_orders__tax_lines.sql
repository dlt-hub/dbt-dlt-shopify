/* Table: orders__tax_lines */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders`

SELECT
/* select which columns will be available for table 'orders__tax_lines' */
    price,
    rate,
    title,
    price_set__shop_money__amount,
    price_set__shop_money__currency_code,
    price_set__presentment_money__amount,
    price_set__presentment_money__currency_code,
    channel_liable,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlt-dev-external`.`shopify_data_tst45`.`orders__tax_lines`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders` )