{% test min_value(model, column_name, min_val) %}

select {{ column_name }}
from {{ model }}
where {{ column_name }} is not null 
  and {{ column_name }} <= {{ min_val }}

{% endtest %}
