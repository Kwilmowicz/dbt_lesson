select
orders_id,
date_date,
sum(revenue) as revenue,
sum(quantity) as quantity,
sum(purchase_cost) as purchase_cost,
sum(revenue-purchase_cost) as margin

from {{ref("int_sales_margin")}}
group by orders_id, date_date
order by orders_id desc