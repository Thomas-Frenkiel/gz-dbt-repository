SELECT * FROM {{ ref('stg_raw_gz_facebook') }}
UNION ALL
SELECT * FROM {{ ref('stg_raw_gz_criteo') }}
UNION ALL
SELECT * FROM {{ ref('stg_raw_gz_bing') }}
UNION ALL
SELECT * FROM {{ ref('stg_raw_gz_adwords') }}