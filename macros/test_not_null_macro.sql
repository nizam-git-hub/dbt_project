{% macro test_not_null_macro(model, column) %}

    SELECT {{column}}
    FROM {{ ref(model) }}
    WHERE {{column}} IS NULL

{% endmacro %}