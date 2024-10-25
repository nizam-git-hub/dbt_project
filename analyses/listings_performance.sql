SELECT
  name as hname,
  avg(price) AS avg_price
FROM {{ ref('dim_listings') }}
GROUP BY hname
ORDER BY avg_price DESC
