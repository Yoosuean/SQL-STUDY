-- 코드를 입력하세요

SELECT  Year(sales_date) as year, Month(sales_date) as month, count(distinct o.user_id) as puchased_users, round(count(distinct u.user_id)/(select distinct count(user_id) from user_info where Year(joined) = '2021'),1) as puchased_ratio
from user_info u right join online_sale o on u.user_id=o.user_id
where joined like "2021%"
group by Month(o.sales_date)
order by year, month