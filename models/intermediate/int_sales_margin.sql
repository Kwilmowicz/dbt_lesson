select 
*,
purchase_price*quantity as purchase_cost

from {{ref("stg_raw__sales")}}
join {{ref("stg_raw__product")}}
using (products_id)
