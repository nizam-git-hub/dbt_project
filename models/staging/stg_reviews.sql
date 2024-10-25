select
   listing_id
    , date::date as date
    , reviewer_name
    , initcap(comments) as comments
    , upper(sentiment) as sentiment
from {{ source('raw', 'raw_reviews') }}