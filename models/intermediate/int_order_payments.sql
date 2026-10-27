select
    order_id,
    sum(amount) as total_paid
from {{ ref('stg_payements') }}
group by 1