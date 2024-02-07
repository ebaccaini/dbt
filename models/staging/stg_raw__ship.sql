with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logCost,
        CAST(ship_cost AS int64) AS ship_cost

    from source

)

select * from renamed