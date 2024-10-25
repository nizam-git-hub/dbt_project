{% snapshot employees_snapshot3 %}

{{
    config(
        strategy = 'timestamp',
        updated_at = 'updated_at',
        unique_key = 'employee_id',
        target_schema = 'snapshots',
        invalidate_hard_deletes = true
    )
}}

select * from {{source('raw', 'employees')}}

{% endsnapshot %}