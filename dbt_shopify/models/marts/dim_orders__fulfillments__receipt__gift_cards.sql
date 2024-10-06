/* Table: orders__fulfillments__receipt__gift_cards */
/* Parent: orders__fulfillments */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.line_item_id,
    t.masked_code,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  {{ ref('stg_orders__fulfillments__receipt__gift_cards') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_orders__fulfillments') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)