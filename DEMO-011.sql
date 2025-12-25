create table ENROLL(
  SID int not null,
  CID int not null,
  EnrollmentDate date not null,
  primary key (SID,CID),
  foreign key (SID) references STUDENT (SID),
  foreign key (CID) references COURSE (CID)
);