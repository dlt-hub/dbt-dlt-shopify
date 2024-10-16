/* Table: orders__fulfillments__line_items */
/* Parent: orders__fulfillments */
{{
    config(
        materialized='incremental'
    )
}}
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
FROM  {{ ref('stg_orders__fulfillments__line_items') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_orders__fulfillments') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)