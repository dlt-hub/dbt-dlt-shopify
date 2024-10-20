# Shopify dlt-dbt Package

### Overview
The Shopify dbt package offers data models to help you transform and analyze Shopify data. It's designed to integrate seamlessly with the dlt Shopify pipeline, which extracts and loads Shopify data into your data warehouse.

### Who is this for?
This package is perfect for dbt users who want to integrate Shopify data into their analytics workflows without building models from scratch.

### Key Features
- **Staging Models:** Clean and prepare raw Shopify data for downstream analysis.
- **Mart Models:** Pre-built dimension and fact tables for key Shopify entities like products, orders and customers.
- **Incremental Loading:** Supports incremental data processing to optimize performance.
- **Easy Integration:** Designed to work out-of-the-box with the dlt Shopify pipeline.

### Setup Instructions

#### Prerequisites
- dbt Core installed in your environment.
- Access to a supported data warehouse: BigQuery, Snowflake, Redshift, Athena, or PostgreSQL.
- The dlt Shopify pipeline is set up and running.

### Step 1: Set Up the dlt Shopify Pipeline
1. **Install dlt:**
   ``` 
   pip install dlt
   ```
2. **Configure the Pipeline:**
   Follow the dlt [Shopify pipeline documentation](https://dlthub.com/docs/dlt-ecosystem/verified-sources/shopify) to set up your pipeline. Ensure you have your Shopify API key and destination credentials configured.

3. **Run the Pipeline:**
   Extract and load data from Shopify into your data warehouse by running the pipeline.

### Step 2: Install and Configure the dbt Project

1. Install the Shopify dbt package into your dbt environment.
2. Configure your 'dbt_project.yml' file with the appropriate connection details for your data warehouse.
3. Ensure the data from your dlt Shopify pipeline is available in your warehouse.

This is how the tables in dbt package look like:
```text
dbt_<pipeline-name>/
├── analysis/
├── macros/
├── models/
│   ├── marts/
│   │   ├── dim_dlt_loads.sql
│   │   ├── dim_customers__addresses.sql
│   │   ├── dim_customers.sql
│   │   ├── dim_orders__fulfillments__line_items__tax_lines.sql
│   │   ├── dim_orders__fulfillments__receipt__gift_cards.sql
│   │   ├── dim_orders__line_items__tax_lines.sql
│   │   ├── dim_orders__tax_lines.sql
│   │   ├── dim_orders__payment_gateway_names.sql
│   │   ├── dim_products__image__variant_ids.sql
│   │   ├── dim_products__images__variant_ids.sql
│   │   ├── dim_products__images.sql
│   │   ├── dim_products__options__values.sql
│   │   ├── dim_products__options.sql
│   │   ├── dim_products__variants.sql
│   │   ├── dim_products.sql
│   │   ├── fact_orders__fulfillments.sql
│   │   ├── fact_orders__line_items.sql
│   │   ├── fact_orders.sql
│   ├── staging/
│   │   ├── stg_dlt_loads.sql
│   │   ├── stg_customers__addresses.sql
│   │   ├── stg_customers.sql
│   │   ├── stg_orders__fulfillments__line_items__tax_lines.sql
│   │   ├── stg_orders__fulfillments__line_items.sql
│   │   ├── stg_orders__fulfillments__receipt__gift_cards.sql
│   │   ├── stg_orders__fulfillments.sql
│   │   ├── stg_orders__line_items__tax_lines.sql
│   │   ├── stg_orders__line_items.sql
│   │   ├── stg_orders__payment_gateway_names.sql
│   │   ├── stg_orders__tax_lines.sql
│   │   ├── stg_orders.sql
│   │   ├── stg_products__image__variant_ids.sql
│   │   ├── stg_products__images__variant_ids.sql
│   │   ├── stg_products__images.sql
│   │   ├── stg_products__options__values.sql
│   │   ├── stg_products__options.sql
│   │   ├── stg_products__variants.sql
│   │   ├── stg_products.sql
│   ├── dlt_active_load_ids.sql
│   └── dlt_processed_load.sql
├── tests/
├── dbt_project.yml
└── requirements.txt
```

### Step 3: Run dbt
Execute the dbt models to transform the raw Shopify data into useful tables:

```sh
dbt build
```

>You can use the 'run_shopify_dbt.py' script to execute your dbt transformations and load the results into a 
>new dataset named `<original-dataset>_transformed` and runs the dbt tests.To use, please ensure you configure 
>your dlt pipeline name and destination correctly.


### Customization
While this package provides a solid foundation, you can customize it to suit your specific needs:

- Modify the models to align with your business logic.
- Add relationships between tables by modifying your dlt pipeline schema.
> The dimensional modelling part of the package was created with a declarative code generator and suffers from 
> limitations inherent to modelling raw data directly. We advise you consider the raw data tables and adjust 
> the modelled layer as needed.
### Schema diagram
The dbt model above can be further customized according to the requirements. Using this package you'll get a basic template
for data model which can be further modified as required.

1. The schema of data modelled above using dlt-dbt-generator:
    
   ![picture1](https://storage.googleapis.com/dlt-blog-images/shopify-dlt-dbt-package.png)

> Please note that this is a starting template for your data model and is not the final product. It is advised to customize the
> data model as per your needs.

Here's the link to the DB diagram: [link](https://dbdiagram.io/d/shopify-dlt-dbt-package-66fb8f4df9b1444815fc3c88).

#### Optional: Advanced Usage (Generator and Licensing)

This package was created using the dlt-dbt-generator by dlt-plus. For more information about dlt-plus, refer to the 
[dlt-plus documentation.](https://dlt-plus.netlify.app/docs/plus/intro/) To learn more about the dlt-dbt-generator, 
consult the [dlt-dbt-generator](https://dlt-plus.netlify.app/docs/plus/dlt_dbt_generator/#5-running-dbt-package-directly) documentation.

> The dimensional modelling part of the package was created with a declarative code generator and suffers from 
> limitations inherent to modelling raw data directly. We advise you consider the raw data tables and adjust 
> the modelled layer as needed