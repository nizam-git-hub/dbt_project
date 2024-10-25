select
    id as host_id
    , name
    , case 
        when is_superhost = 'f' then 'False'
        else 'True'
    end as is_superhost
    , created_at
    , updated_at
from {{ source('raw', 'raw_hosts') }} 


