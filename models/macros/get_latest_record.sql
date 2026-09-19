{% macro get_latest_record(table_name, date_column) %}

select *

from {{ table_name }}

qualify row_number() over (
    order by {{ date_column }} desc
) = 1

{% endmacro %}
