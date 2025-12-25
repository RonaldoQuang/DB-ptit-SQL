create table LOAN(
  LoanID int primary key,
  MemberID int not null,
  BookID int not null,
  LoanDate date not null,
  DueDate date not null,
  ReturnDate date,
  Status enum('BORROWED','RETURNED','OVERDUE') not null default 'BORROWED',
  Fine decimal(8,2) not null default 0,
  foreign key (MemberID) references MEMBER (MemberID),
  foreign key (BookID) references BOOK (BookID)
);