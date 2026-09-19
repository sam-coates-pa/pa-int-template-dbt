select *

from {{ ref('stg_sales') }}

where order_status not in (
    'PENDING',
    'COMPLETE',
    'CANCELLED'
)
