SELECT 

date_date,
--  AS ads_margin,
SUM(average_basket) AS average_basket,
SUM(operational_margin) AS operational_margin,
SUM(ads_cost) AS ads_cost,
SUM(impression) AS impression,
SUM(click) AS click,
SUM(quantity) AS quantity,
SUM(revenue) AS revenue,
SUM(purchase_cost) AS purchase_cost,
-- SUM(margin) AS margin,
SUM(shipping_fee) AS shipping_fee,
SUM(log_cost) AS log_cost,
SUM(ship_cost) AS ship_cost,

FROM {{ ref('int_campaigns') }}
LEFT JOIN {{ ref('finance_days') }}
USING(date_date)
GROUP BY date_date