-- 코드를 입력하세요
SELECT USER_ID, NICKNAME, sum(price) as TOTAL_SALES
FROM USED_GOODS_BOARD b JOIN USED_GOODS_USER u on b.WRITER_ID=u.USER_ID
WHERE STATUS='DONE'
group by WRITER_ID
having  total_sales>=700000
order by total_sales