-- 코드를 입력하세요

SELECT Hour(DateTime) as HOUR, count(*) as COUNT
from animal_outs
where Hour(DateTime) between 9 and 19
group by HOUR(Datetime)
order by HOUR
