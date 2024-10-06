-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products__variants` as DBT_INTERNAL_DEST
        using (/* Table: products__variants */
/* Parent: products */

SELECT
    t.id,
    t.product_id,
    t.title,
    t.price,
    t.position,
    t.inventory_policy,
    t.option1,
    t.created_at,
    t.updated_at,
    t.taxable,
    t.fulfillment_service,
    t.grams,
    t.inventory_management,
    t.requires_shipping,
    t.sku,
    t.weight,
    t.weight_unit,
    t.inventory_item_id,
    t.inventory_quantity,
    t.old_inventory_quantity,
    t.admin_graphql_api_id,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
    t.image_id,
    t.compare_at_price,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products__variants` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products` as pt
ON (t._dlt_parent_id = pt._dlt_id)
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `product_id`, `title`, `price`, `position`, `inventory_policy`, `option1`, `created_at`, `updated_at`, `taxable`, `fulfillment_service`, `grams`, `inventory_management`, `requires_shipping`, `sku`, `weight`, `weight_unit`, `inventory_item_id`, `inventory_quantity`, `old_inventory_quantity`, `admin_graphql_api_id`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`, `image_id`, `compare_at_price`)
    values
        (`id`, `product_id`, `title`, `price`, `position`, `inventory_policy`, `option1`, `created_at`, `updated_at`, `taxable`, `fulfillment_service`, `grams`, `inventory_management`, `requires_shipping`, `sku`, `weight`, `weight_unit`, `inventory_item_id`, `inventory_quantity`, `old_inventory_quantity`, `admin_graphql_api_id`, `_dlt_root_id`, `_dlt_parent_id`, `_dlt_list_idx`, `_dlt_id`, `image_id`, `compare_at_price`)


    