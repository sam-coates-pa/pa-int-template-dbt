select

    customer_id,
    trim(customer_name) as customer_name,
    upper(status) as customer_status,
    created_at,
    updated_at

from {{ source('customers', 'customers') }}
