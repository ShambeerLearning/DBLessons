alter table users
add column if not exists phone varchar(20) default 'не указан' not null,
add column if not exists age int default 0 not null,
add column if not exists male varchar(20) default 'не указан' null;

create table if not exists product (
	id bigserial primary key unique not null,
	name varchar(100) not null,
    description text,
    price varchar(100) not null
);

alter table product rename to products;

create table if not exists purchases (
    id bigserial primary key unique not null,
    user_id bigint references users(id),
    product_id bigint references products(id),
    price varchar(100) not null
)