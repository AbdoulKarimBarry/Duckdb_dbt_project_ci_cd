select
    customer_id,
    count(*) as order_count
from {{ ref('stg_orders') }}
group by 1