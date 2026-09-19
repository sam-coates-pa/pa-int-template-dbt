select

    order_id,
    customer_id,
    product_id,
    cast(order_date as date) as order_date,
    cast(revenue as numeric(18,2)) as revenue,
    upper(order_status) as order_status,
    created_at

from {{ source('sales', 'orders') }}
