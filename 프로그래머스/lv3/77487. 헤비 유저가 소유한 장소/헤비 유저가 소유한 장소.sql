-- 코드를 입력하세요
SELECT ID,NAME,HOST_ID
FROM PLACES
WHERE HOST_ID in (SELECT HOST_ID FROM PLACES GROUP BY HOST_ID HAVING count(host_id)>=2)
ORDER BY ID