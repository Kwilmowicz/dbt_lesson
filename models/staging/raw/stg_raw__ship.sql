with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        CAST(shipping_fee AS float64) as shipping_fee,
        CAST(logcost as float64) as logcost,
        cast(ship_cost as float64) as ship_cost,

    from source

)

select * from renamed
