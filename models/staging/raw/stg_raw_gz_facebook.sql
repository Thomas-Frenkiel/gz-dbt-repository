
select * from {{ source('raw', 'raw_gz_facebook') }}
