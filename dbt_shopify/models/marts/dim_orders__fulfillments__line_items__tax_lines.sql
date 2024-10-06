/* Table: orders__fulfillments__line_items__tax_lines */
/* Parent: orders__fulfillments__line_items */
{{
    config(
        materialized='incremental'
    )
}}
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
FROM  {{ ref('stg_orders__fulfillments__line_items__tax_lines') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_orders__fulfillments__line_items') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)