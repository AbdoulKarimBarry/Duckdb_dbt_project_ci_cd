select
    o.order_id,
    o.customer_id,
    o.order_date,
    p.total_paid
from {{ ref('stg_orders') }} o
left join {{ ref('int_order_payments') }} p
       on o.order_id = p.order_id