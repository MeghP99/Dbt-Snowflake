Select orders.order_id
     , orders.customer_id
     , payments.amount
from {{ ref('stg_orders') }} as orders

left join {{ ref('stg_payments') }} as payments
        on payments.orderid = orders.order_id