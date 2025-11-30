create table products(
  product_id int auto_increment primary key,
  product_name varchar(255) not null,
  category varchar(100),
  price decimal(10,2),
  stock_quantity int,
  created_at timestamp default current_timestamp
)