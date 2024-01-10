select 
*,
purchase_price*quantity as purchase_cost,
{{margin_percent('revenue','purchase_price*quantity')}} as margin_percent

from {{ref("stg_raw__sales")}}
join {{ref("stg_raw__product")}}
using (products_id)
