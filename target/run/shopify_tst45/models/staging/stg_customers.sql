
  
    

    create or replace table `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_customers`
      
    
    

    OPTIONS()
    as (
      /* Table: customers */


-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'customers' */
    id,
    email,
    created_at,
    updated_at,
    first_name,
    last_name,
    orders_count,
    state,
    total_spent,
    verified_email,
    tax_exempt,
    tags,
    currency,
    phone,
    accepts_marketing,
    marketing_opt_in_level,
    email_marketing_consent__state,
    email_marketing_consent__opt_in_level,
    sms_marketing_consent__state,
    sms_marketing_consent__opt_in_level,
    sms_marketing_consent__consent_collected_from,
    admin_graphql_api_id,
    _dlt_load_id,
    _dlt_id,
    note,
    default_address__id,
    default_address__customer_id,
    default_address__first_name,
    default_address__last_name,
    default_address__company,
    default_address__address1,
    default_address__city,
    default_address__country,
    default_address__zip,
    default_address__name,
    default_address__country_code,
    default_address__country_name,
    default_address__default,
FROM `dlt-dev-external`.`shopify_data_tst45`.`customers`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`dlt_active_load_ids` )
    );
  