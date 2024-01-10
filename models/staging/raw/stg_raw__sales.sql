with

    source as (select * from {{ source("raw", "sales") }}),

    renamed as (

        select date_date, orders_id, 
        pdt_id as products_id, 
        revenue, 
        Cast(quantity as int64) as quantity

        from source

    )

select *
from renamed
