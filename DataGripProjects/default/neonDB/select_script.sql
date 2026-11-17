select * from users;

select *
from purchases
inner join users on purchases.user_id = users.id
inner join products on purchases.product_id = products.id;