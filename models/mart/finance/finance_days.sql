SELECT
date_date,
COUNT(DISTINCT(orders_id)) AS transactions,
SUM(revenue) AS revenue,
-- #AVG
ROUND(AVG(revenue)) AS average_basket,

ROUND(SUM(operational_margin)) AS operational_margin,
ROUND(SUM(purchase_cost)) AS purchase_cost,
ROUND(SUM(shipping_fee)) AS shipping_fee,
ROUND(SUM(log_cost)) AS log_cost,
SUM(quantity) AS quantity,
SUM(ship_cost) AS ship_cost

FROM {{ ref('int_orders_operational') }}
GROUP BY date_date
ORDER BY date_date DESC