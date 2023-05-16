-- 코드를 입력하세요
SELECT USER_ID, NICKNAME, concat(CITY,' ',STREET_ADDRESS1,' ',STREET_ADDRESS2) as '전체주소', concat(SUBSTR(tlno,1,3),'-',SUBSTR(tlno,4,4),'-',SUBSTR(tlno,8,4)) as '전화번호' 
FROM USED_GOODS_BOARD b join USED_GOODS_USER u on b.writer_id=u.user_id
group by writer_id
having count(*)>=3
order by user_id desc   