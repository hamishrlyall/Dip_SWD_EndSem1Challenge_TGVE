﻿CREATE TABLE [dbo].[Clients]
(
	[ClientID] INT NOT NULL,
	[Surname] NVARCHAR(100) NULL,
	[GivenName] NVARCHAR(100) NOT NULL,
	[Gender] NVARCHAR(3) NOT NULL,
	CONSTRAINT PK_ClientID PRIMARY KEY (ClientID)
)
