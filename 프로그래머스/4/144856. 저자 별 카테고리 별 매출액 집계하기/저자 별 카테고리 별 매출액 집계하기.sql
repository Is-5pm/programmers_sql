-- 코드를 입력하세요
SELECT a.AUTHOR_ID,	AUTHOR_NAME,	CATEGORY,	sum(b.price*s.sales) as TOTAL_SALES
from book b join author a 
        on b.author_id=a.author_id
    join book_sales s
        on b.book_id= s.book_id
where date_format(sales_date,'%Y-%m')='2022-01'
group by a.author_id, category
order by a.author_id, category desc;