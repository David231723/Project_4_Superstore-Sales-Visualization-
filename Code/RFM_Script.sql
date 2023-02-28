USE superstore;

SELECT * 
FROM superstore_transactions
LIMIT 100;

select customer_id, 
       max(order_date) as last_order_date,
       count(*) as count_order,
       avg(sales) as avg_amount
from (select customer_id, order_id, order_date, sum(sales) as sales
FROM superstore_transactions
group by order_id) as group_table
group by customer_id;


-- Pre-group by order_id
select customer_id, order_id, order_date, sum(sales) as sales
FROM superstore_transactions
group by order_id



