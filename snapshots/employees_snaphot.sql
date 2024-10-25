{% snapshot employees_snapshot %}

    {{ config(
            target_schema = 'snapshots',
            unique_key = 'employee_id',
            strategy = 'check',
            check_cols = ['first_name', 'last_name', 'department', 'title', 'salary']
    ) }}

    SELECT * FROM {{source('raw','employees')}}

{% endsnapshot %}