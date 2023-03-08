-- 코드를 입력하세요
SELECT CATEGORY, sum(sales) as TOTAL_SALES
from book_sales s left join book b on s.book_id=b.book_id
where sales_date like '2022-01%'
group by category
order by category