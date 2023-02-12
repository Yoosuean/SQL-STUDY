-- 코드를 입력하세요
SELECT car_id, round(avg(datediff(end_date,start_date)+1),1) as average_duration
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by car_id
having 7 <= avg(datediff(end_date,start_date)+1)
order by average_duration desc, car_id desc