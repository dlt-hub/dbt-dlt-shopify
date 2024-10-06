/* Table: customers__addresses */
/* Parent: customers */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.customer_id,
    t.first_name,
    t.last_name,
    t.company,
    t.address1,
    t.city,
    t.country,
    t.zip,
    t.name,
    t.country_code,
    t.country_name,
    t.`default`,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  {{ ref('stg_customers__addresses') }} as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN {{ ref('stg_customers') }} as pt
ON (t._dlt_parent_id = pt._dlt_id)