/* Table: products__options */
/* Parent: products */

SELECT
    t.id,
    t.product_id,
    t.name,
    t.position,
    t._dlt_root_id,
    t._dlt_parent_id,
    t._dlt_list_idx,
    t._dlt_id,
FROM  `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products__options` as t
/* this join to the parent table is not necessarily needed for this template to work */
JOIN `dlt-dev-external`.`shopify_data_tst45_transformed`.`stg_products` as pt
ON (t._dlt_parent_id = pt._dlt_id)