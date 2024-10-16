-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products__options__values` as DBT_INTERNAL_DEST
        using (/* Table: products__options__values */
/* Parent: products__options */

SELECT
    t.value,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products__options__values` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products__options` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`value`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)
    values
        (`value`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)


    