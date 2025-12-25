create table SALE_TRANSACTION(
  TxnID int primary key,
  CustID int not null,
  ProductID int not null,
  EmpID int not null,
  TxnDate date not null,
  Quantity int not null,
  UnitPrice decimal(10,2) not null,
  Discount decimal(5,2) not null default 0,
  PaymentMethod enum('CASH','CARD','TRANSFER') not null,
  Notes varchar(255),
  foreign key (CustID) references CUSTOMER (CustID),
  foreign key (ProductID) references PRODUCT (ProductID),
  foreign key (EmpID) references EMPLOYEE (EmpID)
);