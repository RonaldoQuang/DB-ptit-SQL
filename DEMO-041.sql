create table RESERVATION(
  ReservationID int primary key,
  GuestID int not null,
  RoomID int not null,
  CheckIn date not null,
  CheckOut date not null,
  BookingDate date not null,
  NumGuests int not null,
  Status varchar(20) not null,
  Notes varchar(255),
  foreign key (GuestID) references GUEST (GuestID),
  foreign key (RoomID) references ROOM (RoomID)
);