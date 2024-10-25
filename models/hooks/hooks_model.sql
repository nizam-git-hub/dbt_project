{{
    config(
        materialized = 'table',
        
        pre_hook =
        "insert into airbnb.raw.logs(message, time) values('Starting Model',current_timestamp)",

        post_hook = 
        "insert into airbnb.raw.logs(message, time) values('Finishing Model', current_timestamp)"
    )
}}

SELECT
    ID
    , NAME
    , EMAIL
    , CREATED_AT
FROM {{source('raw','users')}} 