create table REVIEW (
    ReviewID int primary key,
    CustID int not null,
    ProductID int not null,
    Rating int not null check (Rating >= 1 and Rating <= 5),
    Comment varchar(500),
    CreatedAt datetime2 not null default sysdatetime(),
    unique (CustID, ProductID),
    foreign key (CustID) references CUSTOMER(CustID),
    foreign key (ProductID) references PRODUCT(ProductID)
);
