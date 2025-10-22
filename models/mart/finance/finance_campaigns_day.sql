SELECT 

date_date,
--  AS ads_margin,
SUM(average_basket),
SUM(operational_margin),
SUM(ads_cost),
SUM(impression),
SUM(click),
SUM(quantity),
SUM(revenue),
SUM(purchase_cost),
SUM(margin),
SUM(shipping_fee),
SUM(log_cost),
SUM(ship_cost),

FROM {{ ref('int_campaigns') }}
LEFT JOIN {{ ref('finance_days') }}
USING(date_date)
GROUP BY date_date