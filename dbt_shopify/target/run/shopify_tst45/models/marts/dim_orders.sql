-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders` as DBT_INTERNAL_DEST
        using (/* Table: orders */

SELECT
    t.id,
    t.admin_graphql_api_id,
    t.app_id,
    t.browser_ip,
    t.buyer_accepts_marketing,
    t.checkout_id,
    t.checkout_token,
    t.client_details__browser_ip,
    t.client_details__user_agent,
    t.closed_at,
    t.confirmation_number,
    t.confirmed,
    t.created_at,
    t.currency,
    t.current_subtotal_price,
    t.current_subtotal_price_set__shop_money__amount,
    t.current_subtotal_price_set__shop_money__currency_code,
    t.current_subtotal_price_set__presentment_money__amount,
    t.current_subtotal_price_set__presentment_money__currency_code,
    t.current_total_discounts,
    t.current_total_discounts_set__shop_money__amount,
    t.current_total_discounts_set__shop_money__currency_code,
    t.current_total_discounts_set__presentment_money__amount,
    t.current_total_discounts_set__presentment_money__currency_code,
    t.current_total_price,
    t.current_total_price_set__shop_money__amount,
    t.current_total_price_set__shop_money__currency_code,
    t.current_total_price_set__presentment_money__amount,
    t.current_total_price_set__presentment_money__currency_code,
    t.current_total_tax,
    t.current_total_tax_set__shop_money__amount,
    t.current_total_tax_set__shop_money__currency_code,
    t.current_total_tax_set__presentment_money__amount,
    t.current_total_tax_set__presentment_money__currency_code,
    t.customer_locale,
    t.email,
    t.estimated_taxes,
    t.financial_status,
    t.fulfillment_status,
    t.location_id,
    t.name,
    t.number,
    t.order_number,
    t.order_status_url,
    t.presentment_currency,
    t.processed_at,
    t.reference,
    t.source_identifier,
    t.source_name,
    t.subtotal_price,
    t.subtotal_price_set__shop_money__amount,
    t.subtotal_price_set__shop_money__currency_code,
    t.subtotal_price_set__presentment_money__amount,
    t.subtotal_price_set__presentment_money__currency_code,
    t.tags,
    t.tax_exempt,
    t.taxes_included,
    t.test,
    t.token,
    t.total_discounts,
    t.total_discounts_set__shop_money__amount,
    t.total_discounts_set__shop_money__currency_code,
    t.total_discounts_set__presentment_money__amount,
    t.total_discounts_set__presentment_money__currency_code,
    t.total_line_items_price,
    t.total_line_items_price_set__shop_money__amount,
    t.total_line_items_price_set__shop_money__currency_code,
    t.total_line_items_price_set__presentment_money__amount,
    t.total_line_items_price_set__presentment_money__currency_code,
    t.total_outstanding,
    t.total_price,
    t.total_price_set__shop_money__amount,
    t.total_price_set__shop_money__currency_code,
    t.total_price_set__presentment_money__amount,
    t.total_price_set__presentment_money__currency_code,
    t.total_shipping_price_set__shop_money__amount,
    t.total_shipping_price_set__shop_money__currency_code,
    t.total_shipping_price_set__presentment_money__amount,
    t.total_shipping_price_set__presentment_money__currency_code,
    t.total_tax,
    t.total_tax_set__shop_money__amount,
    t.total_tax_set__shop_money__currency_code,
    t.total_tax_set__presentment_money__amount,
    t.total_tax_set__presentment_money__currency_code,
    t.total_tip_received,
    t.total_weight,
    t.updated_at,
    t.user_id,
    t.billing_address__first_name,
    t.billing_address__address1,
    t.billing_address__city,
    t.billing_address__zip,
    t.billing_address__province,
    t.billing_address__country,
    t.billing_address__last_name,
    t.billing_address__address2,
    t.billing_address__latitude,
    t.billing_address__longitude,
    t.billing_address__name,
    t.billing_address__country_code,
    t.billing_address__province_code,
    t._dlt_load_id,
    t._dlt_id,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders` as t
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `admin_graphql_api_id`, `app_id`, `browser_ip`, `buyer_accepts_marketing`, `checkout_id`, `checkout_token`, `client_details__browser_ip`, `client_details__user_agent`, `closed_at`, `confirmation_number`, `confirmed`, `created_at`, `currency`, `current_subtotal_price`, `current_subtotal_price_set__shop_money__amount`, `current_subtotal_price_set__shop_money__currency_code`, `current_subtotal_price_set__presentment_money__amount`, `current_subtotal_price_set__presentment_money__currency_code`, `current_total_discounts`, `current_total_discounts_set__shop_money__amount`, `current_total_discounts_set__shop_money__currency_code`, `current_total_discounts_set__presentment_money__amount`, `current_total_discounts_set__presentment_money__currency_code`, `current_total_price`, `current_total_price_set__shop_money__amount`, `current_total_price_set__shop_money__currency_code`, `current_total_price_set__presentment_money__amount`, `current_total_price_set__presentment_money__currency_code`, `current_total_tax`, `current_total_tax_set__shop_money__amount`, `current_total_tax_set__shop_money__currency_code`, `current_total_tax_set__presentment_money__amount`, `current_total_tax_set__presentment_money__currency_code`, `customer_locale`, `email`, `estimated_taxes`, `financial_status`, `fulfillment_status`, `location_id`, `name`, `number`, `order_number`, `order_status_url`, `presentment_currency`, `processed_at`, `reference`, `source_identifier`, `source_name`, `subtotal_price`, `subtotal_price_set__shop_money__amount`, `subtotal_price_set__shop_money__currency_code`, `subtotal_price_set__presentment_money__amount`, `subtotal_price_set__presentment_money__currency_code`, `tags`, `tax_exempt`, `taxes_included`, `test`, `token`, `total_discounts`, `total_discounts_set__shop_money__amount`, `total_discounts_set__shop_money__currency_code`, `total_discounts_set__presentment_money__amount`, `total_discounts_set__presentment_money__currency_code`, `total_line_items_price`, `total_line_items_price_set__shop_money__amount`, `total_line_items_price_set__shop_money__currency_code`, `total_line_items_price_set__presentment_money__amount`, `total_line_items_price_set__presentment_money__currency_code`, `total_outstanding`, `total_price`, `total_price_set__shop_money__amount`, `total_price_set__shop_money__currency_code`, `total_price_set__presentment_money__amount`, `total_price_set__presentment_money__currency_code`, `total_shipping_price_set__shop_money__amount`, `total_shipping_price_set__shop_money__currency_code`, `total_shipping_price_set__presentment_money__amount`, `total_shipping_price_set__presentment_money__currency_code`, `total_tax`, `total_tax_set__shop_money__amount`, `total_tax_set__shop_money__currency_code`, `total_tax_set__presentment_money__amount`, `total_tax_set__presentment_money__currency_code`, `total_tip_received`, `total_weight`, `updated_at`, `user_id`, `billing_address__first_name`, `billing_address__address1`, `billing_address__city`, `billing_address__zip`, `billing_address__province`, `billing_address__country`, `billing_address__last_name`, `billing_address__address2`, `billing_address__latitude`, `billing_address__longitude`, `billing_address__name`, `billing_address__country_code`, `billing_address__province_code`, `_dlt_load_id`, `_dlt_id`)
    values
        (`id`, `admin_graphql_api_id`, `app_id`, `browser_ip`, `buyer_accepts_marketing`, `checkout_id`, `checkout_token`, `client_details__browser_ip`, `client_details__user_agent`, `closed_at`, `confirmation_number`, `confirmed`, `created_at`, `currency`, `current_subtotal_price`, `current_subtotal_price_set__shop_money__amount`, `current_subtotal_price_set__shop_money__currency_code`, `current_subtotal_price_set__presentment_money__amount`, `current_subtotal_price_set__presentment_money__currency_code`, `current_total_discounts`, `current_total_discounts_set__shop_money__amount`, `current_total_discounts_set__shop_money__currency_code`, `current_total_discounts_set__presentment_money__amount`, `current_total_discounts_set__presentment_money__currency_code`, `current_total_price`, `current_total_price_set__shop_money__amount`, `current_total_price_set__shop_money__currency_code`, `current_total_price_set__presentment_money__amount`, `current_total_price_set__presentment_money__currency_code`, `current_total_tax`, `current_total_tax_set__shop_money__amount`, `current_total_tax_set__shop_money__currency_code`, `current_total_tax_set__presentment_money__amount`, `current_total_tax_set__presentment_money__currency_code`, `customer_locale`, `email`, `estimated_taxes`, `financial_status`, `fulfillment_status`, `location_id`, `name`, `number`, `order_number`, `order_status_url`, `presentment_currency`, `processed_at`, `reference`, `source_identifier`, `source_name`, `subtotal_price`, `subtotal_price_set__shop_money__amount`, `subtotal_price_set__shop_money__currency_code`, `subtotal_price_set__presentment_money__amount`, `subtotal_price_set__presentment_money__currency_code`, `tags`, `tax_exempt`, `taxes_included`, `test`, `token`, `total_discounts`, `total_discounts_set__shop_money__amount`, `total_discounts_set__shop_money__currency_code`, `total_discounts_set__presentment_money__amount`, `total_discounts_set__presentment_money__currency_code`, `total_line_items_price`, `total_line_items_price_set__shop_money__amount`, `total_line_items_price_set__shop_money__currency_code`, `total_line_items_price_set__presentment_money__amount`, `total_line_items_price_set__presentment_money__currency_code`, `total_outstanding`, `total_price`, `total_price_set__shop_money__amount`, `total_price_set__shop_money__currency_code`, `total_price_set__presentment_money__amount`, `total_price_set__presentment_money__currency_code`, `total_shipping_price_set__shop_money__amount`, `total_shipping_price_set__shop_money__currency_code`, `total_shipping_price_set__presentment_money__amount`, `total_shipping_price_set__presentment_money__currency_code`, `total_tax`, `total_tax_set__shop_money__amount`, `total_tax_set__shop_money__currency_code`, `total_tax_set__presentment_money__amount`, `total_tax_set__presentment_money__currency_code`, `total_tip_received`, `total_weight`, `updated_at`, `user_id`, `billing_address__first_name`, `billing_address__address1`, `billing_address__city`, `billing_address__zip`, `billing_address__province`, `billing_address__country`, `billing_address__last_name`, `billing_address__address2`, `billing_address__latitude`, `billing_address__longitude`, `billing_address__name`, `billing_address__country_code`, `billing_address__province_code`, `_dlt_load_id`, `_dlt_id`)


    