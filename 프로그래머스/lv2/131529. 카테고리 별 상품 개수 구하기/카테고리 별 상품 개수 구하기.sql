-- 코드를 입력하세요
SELECT LEFT(product_code,2) as category, count(*) as products
from product
group by LEFT(product_code,2)
order by category