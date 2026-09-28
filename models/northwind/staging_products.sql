WITH source_data AS (
    SELECT *
    FROM {{ source('northwind_data', 'products') }}
)
SELECT
    product_id
    ,product_name
    ,supplier_id
    ,category_id
--	,quantityperunit AS quantity_per_unit
    ,unit_price::NUMERIC AS unit_price
--	,unitsinstock::INT AS units_in_stock
--	,unitsonorder::INT AS units_on_order
--	,discontinued
FROM source_data