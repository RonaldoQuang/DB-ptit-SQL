alter table Products
modify column id int not null auto_increment primary key,
modify column price decimal(10,2) not null check (price>=0),
modify column status enum('ACTIVE','INACTIVE','DISCONTINUED') not null default 'ACTIVE',
modify column created_at datetime default current_timestamp,
modify column category varchar(100) not null,
drop column temp_note;
