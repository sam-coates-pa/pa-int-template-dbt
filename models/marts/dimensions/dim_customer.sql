select

    {{ generate_surrogate_key(['c.customer_id']) }}
        as customer_key,

    c.customer_id,
    c.customer_name,
    c.customer_status,

    o.order_count,

    r.total_revenue,
    r.average_order_value

from {{ ref('stg_customers') }} c

left join {{ ref('int_customer_orders') }} o
    on c.customer_id = o.customer_id

left join {{ ref('int_customer_revenue') }} r
    on c.customer_id = r.customer_id
