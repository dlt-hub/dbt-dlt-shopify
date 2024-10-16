/* Table: customers__addresses */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_customers') }}

SELECT
/* select which columns will be available for table 'customers__addresses' */
    id,
    customer_id,
    first_name,
    last_name,
    company,
    address1,
    city,
    country,
    zip,
    name,
    country_code,
    country_name,
    `default`,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM {{ source('raw_data', 'customers__addresses') }}

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM {{ ref('stg_customers') }} )
