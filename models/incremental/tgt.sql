{{
    config(
        materialized = 'incremental',
        unique_key = 'eid',
        merge_update_columns = ['DESIGNATION']
    )
}}

SELECT * FROM AIRBNB.RAW.SRC
{% if is_incremental() %}
WHERE CREATED_AT > (SELECT MAX(CREATED_AT) FROM AIRBNB.DEV.TGT)
{% endif %}