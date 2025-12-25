create table SUPPLY(
  SID int not null,
  PID int not null,
  Price decimal(10,2) not null check (Price>0),
  primary key (SID,PID),
  foreign key (SID) references SUPPLIER (SID),
  foreign key (PID) references PART (PID)
);