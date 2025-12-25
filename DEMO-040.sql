create table ACTIVITY_LOG(
  LogID int primary key,
  Actor varchar(100) not null,
  Action varchar(100) not null,
  Detail text,
  CreatedAt timestamp not null default current_timestamp
);