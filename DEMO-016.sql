alter table Orders
modify column order_id int not null auto_increment primary key,
modify column customer_name varchar(100) not null,
modify column order_date date,
modify column status enum('PENDING','PAID','SHIPPED','CANCELLED') not null default 'PENDING',
modify column total_amount decimal(10,2),
add column payment_method enum('CASH','CARD','TRANSFER') not null default 'CASH';

