select

    order_id,
    customer_id,
    product_id,
    order_date,
    order_status

from {{ ref('stg_sales') }}
