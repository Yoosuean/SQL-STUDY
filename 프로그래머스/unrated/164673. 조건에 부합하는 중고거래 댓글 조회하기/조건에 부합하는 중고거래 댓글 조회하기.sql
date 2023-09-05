SELECT b.TITLE, b.BOARD_ID, r.REPLY_ID, r.WRITER_ID, r.CONTENTS, DATE_FORMAT(r.CREATED_DATE,'%Y-%m-%d') AS CREATED_DATE
from USED_GOODS_BOARD b join USED_GOODS_REPLY r on b.board_id=r.board_id
where b.CREATED_DATE like "2022-10%"
order by r.CREATED_DATE asc, b.TITLE asc