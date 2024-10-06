/* Table: orders__tax_lines */
/* Parent: orders */
{{
    config(
        materialized='incremental'
    )
}}
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
FROM  {{ ref('stg_orders__tax_lines') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_orders') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)