WITH step AS(
SELECT
    orders_id,
    date_date,
    revenue,
    quantity,
    ROUND(revenue - purchase_price) AS margin,
    ROUND (quantity * purchase_price) AS purchase_cost

FROM {{ ref('stg_sales') }} AS s
LEFT JOIN {{ ref('stg_product') }} AS p
USING(products_id) 
)

SELECT
    orders_id,
    date_date,
    revenue,
    quantity,
    margin,
    purchase_cost,
    {{ margin_percent(  'margin',  'revenue') }} AS margin_percent
FROM step
