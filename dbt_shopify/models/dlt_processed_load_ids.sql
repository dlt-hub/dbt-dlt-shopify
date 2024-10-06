{{
    config(
        materialized='incremental'
    )
}}
-- depends_on: {{ ref('dim__dlt_loads') }}
-- depends_on: {{ ref('dim_products') }}
-- depends_on: {{ ref('fact_orders') }}
-- depends_on: {{ ref('dim_customers') }}
-- depends_on: {{ ref('dim_customers__addresses') }}
-- depends_on: {{ ref('dim_orders__payment_gateway_names') }}
-- depends_on: {{ ref('dim_orders__tax_lines') }}
-- depends_on: {{ ref('fact_orders__fulfillments') }}
-- depends_on: {{ ref('dim_orders__fulfillments__line_items') }}
-- depends_on: {{ ref('dim_orders__fulfillments__line_items__tax_lines') }}
-- depends_on: {{ ref('dim_orders__fulfillments__receipt__gift_cards') }}
-- depends_on: {{ ref('fact_orders__line_items') }}
-- depends_on: {{ ref('dim_orders__line_items__tax_lines') }}
-- depends_on: {{ ref('dim_products__variants') }}
-- depends_on: {{ ref('dim_products__options') }}
-- depends_on: {{ ref('dim_products__options__values') }}
-- depends_on: {{ ref('dim_products__images') }}
-- depends_on: {{ ref('dim_products__images__variant_ids') }}
-- depends_on: {{ ref('dim_products__image__variant_ids') }}
/* we save all currently active load ids into the processed ids table */
select load_id, {{ current_timestamp() }} as inserted_at FROM {{ ref('dlt_active_load_ids') }}