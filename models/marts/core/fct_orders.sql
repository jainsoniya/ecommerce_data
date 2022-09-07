select customer_id, order_id, total_price as amount
    from {{ ref('stg_orders')}}
    where order_status = 'F'