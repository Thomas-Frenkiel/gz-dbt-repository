SELECT
    products_id,
    purchSE_PRICE AS purchase_price

FROM {{ source('raw', 'product') }}