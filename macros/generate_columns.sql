{% macro generate_columns() %}

   {% set columns = ['HOST_ID', 'NAME', 'IS_SUPERHOST'] %}

    {% for columns in columns %}

        {{columns}},

    {% endfor %}

{% endmacro %}