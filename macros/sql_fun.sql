{% macro sql_fun(a, b) %}
    UPPER({{a}}) || ' ' || {{b}}
{% endmacro %}