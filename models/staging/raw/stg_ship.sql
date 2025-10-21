SELECT
    orders_id,
    shipping_fee,
    shipping_fee_1,
    logCost,
    ship_cost
FROM {{ source('raw', 'ship') }}