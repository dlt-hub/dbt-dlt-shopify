
  
    

    create or replace table `dlt-dev-external`.`shopify_data_tst45_transformed`.`dim_orders__fulfillments`
      
    
    

    OPTIONS()
    as (
      /* Table: orders__fulfillments */
/* Parent: orders */

SELECT
    t.id,
    t.admin_graphql_api_id,
    t.created_at,
    t.location_id,
    t.name,
    t.order_id,
    t.service,
    t.status,
    t.updated_at,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders__fulfillments` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_orders` as pt
ON (t._dlt_parent_id = pt._dlt_id)
    );
  