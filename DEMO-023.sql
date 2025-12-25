alter table Inventory
modify column item_id int not null primary key,
modify column quantity int not null default 0,
modify column unit_price decimal(10,2) not null default 0,
modify column status enum('IN_STOCK','OUT_OF_STOCK','STOPPED') not null default 'IN_STOCK',
modify column last_updated datetime default current_timestamp,
add column note varchar(255),
drop column temp_col;