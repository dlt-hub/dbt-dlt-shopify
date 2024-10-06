
  
    

    create or replace table `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_customers__addresses`
      
    
    

    OPTIONS()
    as (
      /* Table: customers__addresses */
/* Parent: { parent }} */


-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`dlt_active_load_ids`
-- depends_on: `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_customers`

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
FROM `dlt-dev-external`.`shopify_data_tst45`.`customers__addresses`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_customers` )
    );
  