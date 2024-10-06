-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`fact_orders` as DBT_INTERNAL_DEST
        using (/* Fact Table: orders */


SELECT
    ---- main table orders
    orders.id,
    orders.admin_graphql_api_id,
    orders.app_id,
    orders.browser_ip,
    orders.buyer_accepts_marketing,
    orders.checkout_id,
    orders.checkout_token,
    orders.client_details__browser_ip,
    orders.client_details__user_agent,
    orders.closed_at,
    orders.confirmation_number,
    orders.confirmed,
    orders.created_at,
    orders.currency,
    orders.current_subtotal_price,
    orders.current_subtotal_price_set__shop_money__amount,
    orders.current_subtotal_price_set__shop_money__currency_code,
    orders.current_subtotal_price_set__presentment_money__amount,
    orders.current_subtotal_price_set__presentment_money__currency_code,
    orders.current_total_discounts,
    orders.current_total_discounts_set__shop_money__amount,
    orders.current_total_discounts_set__shop_money__currency_code,
    orders.current_total_discounts_set__presentment_money__amount,
    orders.current_total_discounts_set__presentment_money__currency_code,
    orders.current_total_price,
    orders.current_total_price_set__shop_money__amount,
    orders.current_total_price_set__shop_money__currency_code,
    orders.current_total_price_set__presentment_money__amount,
    orders.current_total_price_set__presentment_money__currency_code,
    orders.current_total_tax,
    orders.current_total_tax_set__shop_money__amount,
    orders.current_total_tax_set__shop_money__currency_code,
    orders.current_total_tax_set__presentment_money__amount,
    orders.current_total_tax_set__presentment_money__currency_code,
    orders.customer_locale,
    orders.email,
    orders.estimated_taxes,
    orders.financial_status,
    orders.fulfillment_status,
    orders.location_id,
    orders.name,
    orders.number,
    orders.order_number,
    orders.order_status_url,
    orders.presentment_currency,
    orders.processed_at,
    orders.reference,
    orders.source_identifier,
    orders.source_name,
    orders.subtotal_price,
    orders.subtotal_price_set__shop_money__amount,
    orders.subtotal_price_set__shop_money__currency_code,
    orders.subtotal_price_set__presentment_money__amount,
    orders.subtotal_price_set__presentment_money__currency_code,
    orders.tags,
    orders.tax_exempt,
    orders.taxes_included,
    orders.test,
    orders.token,
    orders.total_discounts,
    orders.total_discounts_set__shop_money__amount,
    orders.total_discounts_set__shop_money__currency_code,
    orders.total_discounts_set__presentment_money__amount,
    orders.total_discounts_set__presentment_money__currency_code,
    orders.total_line_items_price,
    orders.total_line_items_price_set__shop_money__amount,
    orders.total_line_items_price_set__shop_money__currency_code,
    orders.total_line_items_price_set__presentment_money__amount,
    orders.total_line_items_price_set__presentment_money__currency_code,
    orders.total_outstanding,
    orders.total_price,
    orders.total_price_set__shop_money__amount,
    orders.total_price_set__shop_money__currency_code,
    orders.total_price_set__presentment_money__amount,
    orders.total_price_set__presentment_money__currency_code,
    orders.total_shipping_price_set__shop_money__amount,
    orders.total_shipping_price_set__shop_money__currency_code,
    orders.total_shipping_price_set__presentment_money__amount,
    orders.total_shipping_price_set__presentment_money__currency_code,
    orders.total_tax,
    orders.total_tax_set__shop_money__amount,
    orders.total_tax_set__shop_money__currency_code,
    orders.total_tax_set__presentment_money__amount,
    orders.total_tax_set__presentment_money__currency_code,
    orders.total_tip_received,
    orders.total_weight,
    orders.updated_at,
    orders.user_id,
    orders.billing_address__first_name,
    orders.billing_address__address1,
    orders.billing_address__city,
    orders.billing_address__zip,
    orders.billing_address__province,
    orders.billing_address__country,
    orders.billing_address__last_name,
    orders.billing_address__address2,
    orders.billing_address__latitude,
    orders.billing_address__longitude,
    orders.billing_address__name,
    orders.billing_address__country_code,
    orders.billing_address__province_code,

    

FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders` as orders
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `admin_graphql_api_id`, `app_id`, `browser_ip`, `buyer_accepts_marketing`, `checkout_id`, `checkout_token`, `client_details__browser_ip`, `client_details__user_agent`, `closed_at`, `confirmation_number`, `confirmed`, `created_at`, `currency`, `current_subtotal_price`, `current_subtotal_price_set__shop_money__amount`, `current_subtotal_price_set__shop_money__currency_code`, `current_subtotal_price_set__presentment_money__amount`, `current_subtotal_price_set__presentment_money__currency_code`, `current_total_discounts`, `current_total_discounts_set__shop_money__amount`, `current_total_discounts_set__shop_money__currency_code`, `current_total_discounts_set__presentment_money__amount`, `current_total_discounts_set__presentment_money__currency_code`, `current_total_price`, `current_total_price_set__shop_money__amount`, `current_total_price_set__shop_money__currency_code`, `current_total_price_set__presentment_money__amount`, `current_total_price_set__presentment_money__currency_code`, `current_total_tax`, `current_total_tax_set__shop_money__amount`, `current_total_tax_set__shop_money__currency_code`, `current_total_tax_set__presentment_money__amount`, `current_total_tax_set__presentment_money__currency_code`, `customer_locale`, `email`, `estimated_taxes`, `financial_status`, `fulfillment_status`, `location_id`, `name`, `number`, `order_number`, `order_status_url`, `presentment_currency`, `processed_at`, `reference`, `source_identifier`, `source_name`, `subtotal_price`, `subtotal_price_set__shop_money__amount`, `subtotal_price_set__shop_money__currency_code`, `subtotal_price_set__presentment_money__amount`, `subtotal_price_set__presentment_money__currency_code`, `tags`, `tax_exempt`, `taxes_included`, `test`, `token`, `total_discounts`, `total_discounts_set__shop_money__amount`, `total_discounts_set__shop_money__currency_code`, `total_discounts_set__presentment_money__amount`, `total_discounts_set__presentment_money__currency_code`, `total_line_items_price`, `total_line_items_price_set__shop_money__amount`, `total_line_items_price_set__shop_money__currency_code`, `total_line_items_price_set__presentment_money__amount`, `total_line_items_price_set__presentment_money__currency_code`, `total_outstanding`, `total_price`, `total_price_set__shop_money__amount`, `total_price_set__shop_money__currency_code`, `total_price_set__presentment_money__amount`, `total_price_set__presentment_money__currency_code`, `total_shipping_price_set__shop_money__amount`, `total_shipping_price_set__shop_money__currency_code`, `total_shipping_price_set__presentment_money__amount`, `total_shipping_price_set__presentment_money__currency_code`, `total_tax`, `total_tax_set__shop_money__amount`, `total_tax_set__shop_money__currency_code`, `total_tax_set__presentment_money__amount`, `total_tax_set__presentment_money__currency_code`, `total_tip_received`, `total_weight`, `updated_at`, `user_id`, `billing_address__first_name`, `billing_address__address1`, `billing_address__city`, `billing_address__zip`, `billing_address__province`, `billing_address__country`, `billing_address__last_name`, `billing_address__address2`, `billing_address__latitude`, `billing_address__longitude`, `billing_address__name`, `billing_address__country_code`, `billing_address__province_code`)
    values
        (`id`, `admin_graphql_api_id`, `app_id`, `browser_ip`, `buyer_accepts_marketing`, `checkout_id`, `checkout_token`, `client_details__browser_ip`, `client_details__user_agent`, `closed_at`, `confirmation_number`, `confirmed`, `created_at`, `currency`, `current_subtotal_price`, `current_subtotal_price_set__shop_money__amount`, `current_subtotal_price_set__shop_money__currency_code`, `current_subtotal_price_set__presentment_money__amount`, `current_subtotal_price_set__presentment_money__currency_code`, `current_total_discounts`, `current_total_discounts_set__shop_money__amount`, `current_total_discounts_set__shop_money__currency_code`, `current_total_discounts_set__presentment_money__amount`, `current_total_discounts_set__presentment_money__currency_code`, `current_total_price`, `current_total_price_set__shop_money__amount`, `current_total_price_set__shop_money__currency_code`, `current_total_price_set__presentment_money__amount`, `current_total_price_set__presentment_money__currency_code`, `current_total_tax`, `current_total_tax_set__shop_money__amount`, `current_total_tax_set__shop_money__currency_code`, `current_total_tax_set__presentment_money__amount`, `current_total_tax_set__presentment_money__currency_code`, `customer_locale`, `email`, `estimated_taxes`, `financial_status`, `fulfillment_status`, `location_id`, `name`, `number`, `order_number`, `order_status_url`, `presentment_currency`, `processed_at`, `reference`, `source_identifier`, `source_name`, `subtotal_price`, `subtotal_price_set__shop_money__amount`, `subtotal_price_set__shop_money__currency_code`, `subtotal_price_set__presentment_money__amount`, `subtotal_price_set__presentment_money__currency_code`, `tags`, `tax_exempt`, `taxes_included`, `test`, `token`, `total_discounts`, `total_discounts_set__shop_money__amount`, `total_discounts_set__shop_money__currency_code`, `total_discounts_set__presentment_money__amount`, `total_discounts_set__presentment_money__currency_code`, `total_line_items_price`, `total_line_items_price_set__shop_money__amount`, `total_line_items_price_set__shop_money__currency_code`, `total_line_items_price_set__presentment_money__amount`, `total_line_items_price_set__presentment_money__currency_code`, `total_outstanding`, `total_price`, `total_price_set__shop_money__amount`, `total_price_set__shop_money__currency_code`, `total_price_set__presentment_money__amount`, `total_price_set__presentment_money__currency_code`, `total_shipping_price_set__shop_money__amount`, `total_shipping_price_set__shop_money__currency_code`, `total_shipping_price_set__presentment_money__amount`, `total_shipping_price_set__presentment_money__currency_code`, `total_tax`, `total_tax_set__shop_money__amount`, `total_tax_set__shop_money__currency_code`, `total_tax_set__presentment_money__amount`, `total_tax_set__presentment_money__currency_code`, `total_tip_received`, `total_weight`, `updated_at`, `user_id`, `billing_address__first_name`, `billing_address__address1`, `billing_address__city`, `billing_address__zip`, `billing_address__province`, `billing_address__country`, `billing_address__last_name`, `billing_address__address2`, `billing_address__latitude`, `billing_address__longitude`, `billing_address__name`, `billing_address__country_code`, `billing_address__province_code`)


    