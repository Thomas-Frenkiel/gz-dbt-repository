SELECT 
orders_id,
date_date,
ROUND(SUM (margin + shipping_fee - logCost - ship_cost)) AS operational_margin,
SUM(revenue) AS revenue,
SUM(shipping_fee) AS shipping_fee,
SUM(purchase_cost) AS purchase_cost,
SUM(logCost) AS log_cost,
FROM {{ ref('int_orders_margin') }}
INNER JOIN {{ ref('stg_ship') }}
USING (orders_id)
GROUP BY orders_id, date_date
ORDER BY date_date DESC, orders_id
