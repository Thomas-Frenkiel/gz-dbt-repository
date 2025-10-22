select 
date_date,
paid_source,
campaign_key,
camPGN_name AS campaign_name,
CAST( ads_cost as FLOAT64) AS ads_cost,
impression,
click,

 from {{ source('raw', 'gz_adwords') }}
