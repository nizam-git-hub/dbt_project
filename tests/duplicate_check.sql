select listings_id, count(*) from {{ ref('dim_listings') }}
group by 1
having count(*) > 1