select

    order_id,
    customer_id,
    product_id,
    revenue,
    order_date

from {{ ref('stg_sales') }}
