-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_customers` as DBT_INTERNAL_DEST
        using (/* Table: customers */

SELECT
    t.id,
    t.email,
    t.created_at,
    t.updated_at,
    t.first_name,
    t.last_name,
    t.orders_count,
    t.state,
    t.total_spent,
    t.verified_email,
    t.tax_exempt,
    t.tags,
    t.currency,
    t.phone,
    t.accepts_marketing,
    t.marketing_opt_in_level,
    t.email_marketing_consent__state,
    t.email_marketing_consent__opt_in_level,
    t.sms_marketing_consent__state,
    t.sms_marketing_consent__opt_in_level,
    t.sms_marketing_consent__consent_collected_from,
    t.admin_graphql_api_id,
    t._dlt_load_id,
    t._dlt_id,
    t.note,
    t.default_address__id,
    t.default_address__customer_id,
    t.default_address__first_name,
    t.default_address__last_name,
    t.default_address__company,
    t.default_address__address1,
    t.default_address__city,
    t.default_address__country,
    t.default_address__zip,
    t.default_address__name,
    t.default_address__country_code,
    t.default_address__country_name,
    t.default_address__default,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_customers` as t
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `email`, `created_at`, `updated_at`, `first_name`, `last_name`, `orders_count`, `state`, `total_spent`, `verified_email`, `tax_exempt`, `tags`, `currency`, `phone`, `accepts_marketing`, `marketing_opt_in_level`, `email_marketing_consent__state`, `email_marketing_consent__opt_in_level`, `sms_marketing_consent__state`, `sms_marketing_consent__opt_in_level`, `sms_marketing_consent__consent_collected_from`, `admin_graphql_api_id`, `_dlt_load_id`, `_dlt_id`, `note`, `default_address__id`, `default_address__customer_id`, `default_address__first_name`, `default_address__last_name`, `default_address__company`, `default_address__address1`, `default_address__city`, `default_address__country`, `default_address__zip`, `default_address__name`, `default_address__country_code`, `default_address__country_name`, `default_address__default`)
    values
        (`id`, `email`, `created_at`, `updated_at`, `first_name`, `last_name`, `orders_count`, `state`, `total_spent`, `verified_email`, `tax_exempt`, `tags`, `currency`, `phone`, `accepts_marketing`, `marketing_opt_in_level`, `email_marketing_consent__state`, `email_marketing_consent__opt_in_level`, `sms_marketing_consent__state`, `sms_marketing_consent__opt_in_level`, `sms_marketing_consent__consent_collected_from`, `admin_graphql_api_id`, `_dlt_load_id`, `_dlt_id`, `note`, `default_address__id`, `default_address__customer_id`, `default_address__first_name`, `default_address__last_name`, `default_address__company`, `default_address__address1`, `default_address__city`, `default_address__country`, `default_address__zip`, `default_address__name`, `default_address__country_code`, `default_address__country_name`, `default_address__default`)


    