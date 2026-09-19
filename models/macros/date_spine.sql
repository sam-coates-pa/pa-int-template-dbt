{% macro date_spine(start_date, end_date) %}

{{ dbt_utils.date_spine(
    datepart="day",
    start_date=start_date,
    end_date=end_date
) }}

{% endmacro %}
