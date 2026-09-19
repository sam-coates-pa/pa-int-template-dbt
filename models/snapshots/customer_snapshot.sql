{% snapshot customer_snapshot %}

{{
    config(
        target_schema='snapshots',
        strategy='check',
        unique_key='customer_id',
        check_cols=[
            'customer_name',
            'customer_status'
        ]
    )
}}

select *

from {{ ref('stg_customers') }}

{% endsnapshot %}
