select 
    {{dbt_utils.generate_surrogate_key(['host_id','name'])}} as sur,
    host_id,
    name,
    is_superhost,
    created_at,
    updated_at
from {{ ref('stg_hosts') }} 