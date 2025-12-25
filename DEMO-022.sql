alter table LoyaltyPoints
modify column record_id int not null auto_increment primary key,
modify column customer_id int not null,
modify column points decimal(10,2) not null default 0,
modify column type enum('EARN','REDEEM','ADJUST') not null default 'EARN',
modify column created_at datetime default current_timestamp,
modify column expired_at date,
add column status enum('ACTIVE','EXPIRED','CANCELLED') not null default 'ACTIVE',
drop column note_temp;