create table TXN(
  TxnID int primary key,
  AccountID int not null,
  Amount decimal(12,2) not null check(Amount>0),
  Type enum('DEPOSIT','WITHDRAW') not null,
  TxnTime timestamp not null default current_timestamp,
  foreign key (AccountID) references ACCOUNT (AccountID)
);