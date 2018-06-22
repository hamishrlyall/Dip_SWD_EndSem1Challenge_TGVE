/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF '$(LoadTestData)' = 'true'

BEGIN

INSERT INTO Clients (ClientID, Surname, GivenName, Gender) VALUES
(1, 'Price', 'Taylor', 'M'),
(2, 'Gamble', 'Ellyse', 'F'),
(3, 'Tan', 'Tilly', 'F');

INSERT INTO Tours (TourName, [Description]) VALUES
('West', 'Tour of wineries and outlets of the Geelong and Otways region'),
('East', 'Tour of wineries and outlets of the Yarra Valley'),
('South', 'Tour of wineries and outlets of Mornington Penisula'),
('North', 'Tour of wineries and outlets of the Bedigo and Castlemaine region');

INSERT INTO TourEvents (TourName, EventMonth, EventDay, EventYear, Fee) VALUES
('North', 'Jan', 9, 2016, 200),
('North', 'Feb', 13, 2016, 225),
('South', 'Jan', 16, 2016, 200),
('West', 'Jan', 29, 2016, 225);

INSERT INTO Bookings (ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES
(1, 'North', 'Jan', 9, 2016, 200, Convert(Date, '10/12/2015', 103)),
(2, 'North', 'Jan', 9, 2016, 200, Convert(Date, '16/12/2015', 103)),
(1, 'North', 'Feb', 13, 2016, 225, Convert(Date, '8/01/2016', 103)),
(2, 'North', 'Feb', 13, 2016, 225, Convert(Date, '14/01/2016', 103)),
(3, 'North', 'Feb', 13, 2016, 225, Convert(Date, '3/02/2016', 103)),
(1, 'South', 'Jan', 16, 2016, 200, Convert(Date, '10/12/2015', 103)),
(2, 'South', 'Jan', 16, 2016, 200, Convert(Date, '18/12/2015', 103)),
(3, 'South', 'Jan', 16, 2016, 200, Convert(Date, '9/01/2016', 103)),
(2, 'West', 'Jan', 29, 2016, 200, Convert(Date, '17/12,2015', 103)),
(3, 'West', 'Jan', 29, 2016, 200, Convert(Date, '18/12/2015', 103));


END;