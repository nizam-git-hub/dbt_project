{% macro ifs(color) %}

    {% if color == 'Red' %}

        'Yes, You are selected Red color'

        {% elif color == 'Green' %}

            'Yes, You are selected Green Color'

        {% elif color == 'Blue' %}

            'Yes, You are selected Blue Color'

        {% else %}

            'You are selected other colors not RGB'
            
    {% endif %} 

{% endmacro %}