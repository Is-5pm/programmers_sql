-- 코드를 입력하세요
SELECT TITLE,r.BOARD_ID,REPLY_ID,	r.WRITER_ID,r.CONTENTS,	date_format(r.CREATED_DATE,'%Y-%m-%d') 'CREATED_DATE'
from USED_GOODS_REPLY r join USED_GOODS_BOARD b on r.board_id=b.board_id
where date_format(b.CREATED_DATE,'%Y-%m')='2022-10'
order by r.created_date asc, b.title asc;