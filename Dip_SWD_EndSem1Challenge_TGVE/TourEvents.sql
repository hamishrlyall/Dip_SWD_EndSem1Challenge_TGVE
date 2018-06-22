CREATE TABLE [dbo].[TourEvents]
(
	[EventMonth] NVARCHAR(5) NOT NULL,
	[EventDay] INT NOT NULL,
	[EventYear] INT NOT NULL,
	[Fee] INT NOT NULL,
	[TourName] NVARCHAR(100) NOT NULL,
	CONSTRAINT PK_EventID PRIMARY KEY (EventMonth, EventDay, EventYear, TourName),
	CONSTRAINT FK_TourName FOREIGN KEY (TourName) REFERENCES Tours (TourName)


)
