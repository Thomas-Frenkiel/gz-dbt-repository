SELECT 
orders_id,
date_date,
ROUND(SUM (margin + shipping_fee - logCost - ship_cost)) AS operational_margin

FROM {{ ref('int_orders_margin') }}
LEFT JOIN {{ ref('stg_ship') }}
USING (orders_id)
GROUP BY orders_id, date_date
ORDER BY date_date DESC, orders_id
