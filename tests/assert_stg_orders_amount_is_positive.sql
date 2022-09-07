with 
payments as (
    select *
    from {{ ref('stg_orders') }}
)
select 
    order_id,
    sum(total_price) as amount
    from payments
    group by 1
    having amount <0