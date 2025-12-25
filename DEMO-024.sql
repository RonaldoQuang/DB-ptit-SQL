alter table DeliveryOrders
modify column order_item_id int not null auto_increment primary key,
modify column order_id varchar(50) not null,
modify column customer_phone varchar(20) not null,
modify column address varchar(255) not null,
modify column shipping_method enum('STANDARD','EXPRESS','SAME_DAY') not null default 'STANDARD',
modify column shipping_fee decimal(10,2) not null default 0,
modify column cod_amount decimal(10,2) not null default 0,
modify delivery_status enum('PENDING','SHIPPING','DELIVERED','RETURNED','CANCELLED') not null default 'PENDING',
modify created_text datetime default current_timestamp,
add column updated_at datetime,
drop column temp_note;