/* Table: products__options */
/* Parent: products */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.product_id,
    t.name,
    t.position,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  {{ ref('stg_products__options') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_products') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)