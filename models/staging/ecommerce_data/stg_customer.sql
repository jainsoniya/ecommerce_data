select 
        C_CUSTKEY as customer_id, 
        C_NAME as name, 
        C_ACCTBAL as account_balance, 
        C_NATIONKEY as nation_id, 
        C_MKTSEGMENT as market_segment
    from {{ source('ecommerce_data', 'customer') }}