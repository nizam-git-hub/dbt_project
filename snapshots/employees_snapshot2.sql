{% snapshot employees_snapshot2 %}

{{
    config(
        strategy = 'timestamp',
        updated_at = 'updated_at',
        unique_key = 'employee_id',
        target_schema = 'snapshots'
    )
}}

select * from {{source('raw', 'employees')}}

{% endsnapshot %}