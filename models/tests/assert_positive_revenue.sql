select *

from {{ ref('fct_sales') }}

where revenue < 0
