-- back compat for old kwarg name
  
  
        
    

    

    merge into `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_products` as DBT_INTERNAL_DEST
        using (/* Table: products */

SELECT
    t.id,
    t.title,
    t.vendor,
    t.product_type,
    t.created_at,
    t.handle,
    t.updated_at,
    t.published_scope,
    t.tags,
    t.status,
    t.admin_graphql_api_id,
    t._dlt_load_id,
    t._dlt_id,
    t.image__id,
    t.image__alt,
    t.image__position,
    t.image__product_id,
    t.image__created_at,
    t.image__updated_at,
    t.image__admin_graphql_api_id,
    t.image__width,
    t.image__height,
    t.image__src,
    t.published_at,
    t.body_html,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products` as t
        ) as DBT_INTERNAL_SOURCE
        on (FALSE)

    

    when not matched then insert
        (`id`, `title`, `vendor`, `product_type`, `created_at`, `handle`, `updated_at`, `published_scope`, `tags`, `status`, `admin_graphql_api_id`, `_dlt_load_id`, `_dlt_id`, `image__id`, `image__alt`, `image__position`, `image__product_id`, `image__created_at`, `image__updated_at`, `image__admin_graphql_api_id`, `image__width`, `image__height`, `image__src`, `published_at`, `body_html`)
    values
        (`id`, `title`, `vendor`, `product_type`, `created_at`, `handle`, `updated_at`, `published_scope`, `tags`, `status`, `admin_graphql_api_id`, `_dlt_load_id`, `_dlt_id`, `image__id`, `image__alt`, `image__position`, `image__product_id`, `image__created_at`, `image__updated_at`, `image__admin_graphql_api_id`, `image__width`, `image__height`, `image__src`, `published_at`, `body_html`)


    