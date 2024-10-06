-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products__images` as DBT_INTERNAL_DEST
        using (/* Table: products__images */
/* Parent: products */

SELECT
    t.id,
    t.alt,
    t.position,
    t.product_id,
    t.created_at,
    t.updated_at,
    t.admin_graphql_api_id,
    t.width,
    t.height,
    t.src,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products__images` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `alt`, `position`, `product_id`, `created_at`, `updated_at`, `admin_graphql_api_id`, `width`, `height`, `src`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)
    values
        (`id`, `alt`, `position`, `product_id`, `created_at`, `updated_at`, `admin_graphql_api_id`, `width`, `height`, `src`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`)


    