select
    customer_id,
    sum(total_paid) as lifetime_value
from {{ ref('fct_orders') }}
group by 1