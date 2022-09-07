    select 
        O_ORDERKEY as order_id, 
        O_CUSTKEY as customer_id, 
        O_ORDERSTATUS as order_status, 
        O_ORDERDATE as order_date, 
        O_TOTALPRICE as total_price, 
        O_ORDERPRIORITY as order_priority
    from {{ source('ecommerce_data', 'orders') }}