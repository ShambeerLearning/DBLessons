select * from users;

select
	purchases.id,   
	users."name", 
	products."name",
	purchases.price 
from purchases
inner join users on purchases.user_id = users.id
inner join products on purchases.product_id = products.id;

select
    purchases.id,
    users.name
from purchases
inner join users on purchases.user_id = users.id;

select
    users.name
from purchases
inner join users on purchases.user_id = users.id;

select
    products.name
from purchases
inner join products on purchases.product_id = products.id;

select
    users.name
from purchases
inner join users on purchases.user_id = users.id
where users.name = 'Александр';