-- 코드를 입력하세요
SELECT book_id, author_name, date_format(published_date,'%Y-%m-%d') as published_date
from book b, author r
where b.author_id=r.author_id and category like '경제'
order by published_date