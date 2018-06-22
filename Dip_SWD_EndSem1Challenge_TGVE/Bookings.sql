﻿CREATE TABLE [dbo].[Bookings]
(
	[ClientID] INT NOT NULL,
	[TourName] NVARCHAR(100) NOT NULL,
	[EventMonth] NVARCHAR(5) NOT NULL,
	[EventDay] INT NOT NULL,
	[EventYear] INT NOT NULL,
	[Payment] INT NOT NULL,
	[DateBooked] DATE NOT NULL,
	CONSTRAINT PK_BookingID PRIMARY KEY (ClientID, TourName, DateBooked),
	CONSTRAINT FK_CLIENTS FOREIGN KEY (ClientID) REFERENCES Clients (ClientID),
	CONSTRAINT FK_TOUREVENTS FOREIGN KEY (EventMonth) REFERENCES TourEvents (EventMonth)
)
