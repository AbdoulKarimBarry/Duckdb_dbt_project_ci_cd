with customers as (

    select
        cast(id as integer) as customer_id,
        first_name,
        last_name 
    from {{ source('raw', 'raw_customers') }}

)

select * from customers