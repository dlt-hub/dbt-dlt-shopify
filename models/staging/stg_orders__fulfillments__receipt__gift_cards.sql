/* Table: orders__fulfillments__receipt__gift_cards */
/* Parent: { parent }} */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}
-- depends_on: {{ ref('stg_orders__fulfillments') }}

SELECT
/* select which columns will be available for table 'orders__fulfillments__receipt__gift_cards' */
    id,
    line_item_id,
    masked_code,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM {{ source('raw_data', 'orders__fulfillments__receipt__gift_cards') }}

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM {{ ref('stg_orders__fulfillments') }} )
