SELECT
date_date,
orders_id,
SUM(revenue),
#AVG
SUM(operational_margin) AS operational_margin,
SUM(purchase_cost) AS purchase_cost,
SUM(shipping_fee) AS shipping_fee,
SUM(logCost) AS log_cost,
COUNT(products_id)

FROM {{ ref('int_orders_operational') }}
GROUP BY date_date, orders_id
ORDER BY date_date DESC, orders_id