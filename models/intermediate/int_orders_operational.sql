select 
orders_id,
date_date,
margin+shipping_fee-logcost-ship_cost AS operational_margin,
margin,
revenue
from {{ref("int_orders_margin")}}
left join {{ref("stg_raw__ship")}}
using(orders_id)