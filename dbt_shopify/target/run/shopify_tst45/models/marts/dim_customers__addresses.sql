-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_customers__addresses` as DBT_INTERNAL_DEST
        using (/* Table: customers__addresses */
/* Parent: customers */

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
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_customers__addresses` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_customers` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `customer_id`, `first_name`, `last_name`, `company`, `address1`, `city`, `country`, `zip`, `name`, `country_code`, `country_name`, `default`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)
    values
        (`id`, `customer_id`, `first_name`, `last_name`, `company`, `address1`, `city`, `country`, `zip`, `name`, `country_code`, `country_name`, `default`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)


    