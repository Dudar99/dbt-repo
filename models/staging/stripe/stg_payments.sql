with payments as (
    
    select 
        id as payment_id,
        orderid as order_id,
        amount/100 as amount,
        paymentmethod as paymentmethod,
        status as status

    from {{ source('stripe','payment') }}
)

select * from payments