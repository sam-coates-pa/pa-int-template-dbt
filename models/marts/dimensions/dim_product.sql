select distinct

    product_id,

    concat('Product ', product_id)
        as product_name

from {{ ref('stg_sales') }}
