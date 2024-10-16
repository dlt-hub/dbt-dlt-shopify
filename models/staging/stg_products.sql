/* Table: products */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'products' */
    id,
    title,
    vendor,
    product_type,
    created_at,
    handle,
    updated_at,
    published_scope,
    tags,
    status,
    admin_graphql_api_id,
    _dlt_load_id,
    _dlt_id,
    image__id,
    image__alt,
    image__position,
    image__product_id,
    image__created_at,
    image__updated_at,
    image__admin_graphql_api_id,
    image__width,
    image__height,
    image__src,
    published_at,
    body_html,
FROM {{ source('raw_data', 'products') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )