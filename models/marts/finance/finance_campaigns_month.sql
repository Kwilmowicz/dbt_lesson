select
extract(year from date_date)|| "-" || extract(month from date_date)||"-01" as date_month,
sum(ads_margin) as ads_margin,
sum(margin) as margin,
sum(operational_margin)as operational_margin
from {{ref("finance_campaign_days")}}
group by extract(year from date_date)|| "-" || extract(month from date_date)||"-01"