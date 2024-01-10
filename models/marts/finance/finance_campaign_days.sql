select
date_date,
avg_basket,
margin,
operational_margin,
operational_margin- ads_cost as ads_margin
from {{ref("finance_days")}}
join {{ref("int_campaigns_day")}}
using (date_date)
order by date_date desc