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
(1, 'North', 'Jan', 9, 2016, 200, '2015/12/10'),
(2, 'North', 'Jan', 9, 2016, 200, '2015/12/16'),
(1, 'North', 'Feb', 13, 2016, 225, '2016/01/08'),
(2, 'North', 'Feb', 13, 2016, 225, '2016/01/14'),
(3, 'North', 'Feb', 13, 2016, 225, '2016/02/03'),
(1, 'South', 'Jan', 16, 2016, 200, '2015/12/10'),
(2, 'South', 'Jan', 16, 2016, 200, '2015/12/18'),
(3, 'South', 'Jan', 16, 2016, 200, '2016/01/09'),
(2, 'West', 'Jan', 29, 2016, 200, '2015/12/17'),
(3, 'West', 'Jan', 29, 2016, 200, '2015/12/18');


END;