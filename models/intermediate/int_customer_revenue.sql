select

    customer_id,
    sum(revenue) as total_revenue,
    avg(revenue) as average_order_value

from {{ ref('stg_sales') }}

group by customer_id
