with payements as (

    select
        id as id_payements,
        order_id,
        payment_method,
        case 
        when amount < 0 then amount * (-1)
        else amount
        end as amount,
        amount as amount_base
    from {{ source('raw', 'raw_payments') }}

)

select * from payements
