CREATE TABLE Country(
	`Id` int NOT NULL,
	`CountryName` varchar(50) NOT NULL,
 CONSTRAINT `PK_Country` PRIMARY KEY 
(
	`CountryName` ASC
) 
);

CREATE TABLE Customer(
	`id` int AUTO_INCREMENT NOT NULL,
	`LastName` varchar(50) NOT NULL,
	`FirstName` varchar(50) NOT NULL,
	`StreetNumber` varchar(10) NOT NULL,
	`StreetName` varchar(50) NOT NULL,
	`City` varchar(50) NOT NULL,
	`Province` varchar(50) NOT NULL,
	`Country` varchar(50) NOT NULL,
	`PostalCode` varchar(10) NOT NULL,
	`PhoneNumber` varchar(10) NOT NULL,
	`Email` varchar(50) NOT NULL,
	`Password` varchar(50) NOT NULL,
	`CreditCardType` varchar(50) NOT NULL,
	`CreditCardNumber` varchar(50) NOT NULL,
	`CreditCardName` varchar(50) NOT NULL,
	`ExpirationDate` varchar(50) NOT NULL,
 CONSTRAINT `PK_Customer` PRIMARY KEY 
(
	`id` ASC
) 
);

CREATE TABLE Reservation(
	`Id` int AUTO_INCREMENT NOT NULL,
	`CheckInDate` date NOT NULL,
	`CheckOutDate` date NOT NULL,
	`NumberOfRoom` int NOT NULL,
	`NumberOfGuest` int NOT NULL,
	`Cid` int NULL,
 CONSTRAINT `PK_Reservation` PRIMARY KEY 
(
	`Id` ASC
) 
);

CREATE TABLE State(
	`Id` int AUTO_INCREMENT NOT NULL,
	`State` varchar(50) NOT NULL,
	`CountryName` varchar(50) NOT NULL,
 CONSTRAINT `PK_State` PRIMARY KEY 
(
	`Id` ASC
) 
);

INSERT Country (`Id`, `CountryName`) SELECT (1, N'Canada');
INSERT Country (`Id`, `CountryName`) SELECT (2, N'USA');

INSERT Customer (`id`, `LastName`, `FirstName`, `StreetNumber`, `StreetName`, `City`, `Province`, `Country`, `PostalCode`, `PhoneNumber`, `Email`, `Password`, `CreditCardType`, `CreditCardNumber`, `CreditCardName`, `ExpirationDate`) VALUES
    (1, 'User1', 'User1', '1234', 'User1', 'Halifax', 'Nova Scotia', 'Canada', 'A2B3C4', '2898287351', 'user1@gmail.com', 'user1', 'Visa', '123423', 'User1', '12/2012'),
    (2, 'User3', 'User3', '1234', 'Streey', 'City', 'Alaska', 'USA', 'A2B3C4', '1234567890', 'user3@gmail.com', 'user3', 'Visa', 'dbfhdsf', 'sadbhf', '12/1214'),
    (1002, 'Behl', 'Sahil', '1333', 'South Park St', 'Halifax', 'Nova Scotia', 'Canada', 'B3J2K9', '2898287351', 'sahil@gmail.com', 'sahil', 'Visa', '23123123342123232', 'Sahil Behl', '12/2012'),
    (1003, 'User', 'User', '1234', 'Street', 'City', 'Quebec', 'Canada', 'A2B3C4', '2898287351', 'user8@gmail.com', 'user8', 'Visa', '123143423432', 'Sahil Behl', '12/2017'),
    (1004, 'User', 'User', '1234', 'Street', 'City', 'Alberta', 'Canada', 'A2B3C4', '2898287351', 'sahi9l@gmail.com', 'sahil9', 'Visa', '23454324', 'Sahil Behl', '12/2016'),
    (1005, 'Behl', 'Sahil', '1333', 'South Park St', 'Halifax', 'Alberta', 'Canada', 'B3J 2K9', '2898287351', 'sahil11@gmail.com', 'sahil11', 'Visa', '1333', 'Sahil Behl', '12/2016'),
    (1006, 'Sahil', 'Sahil', '1333', 'South Park St', 'Halifax', 'Alberta', 'Canada', 'B3J 2K9', '2898287351', 'sahil12@gmail.com', 'sahil12', 'Visa', '123123123123123', 'Sahil Behl', '12/2016'),
    (1007, 'Behl', 'Sahil', '1333', 'South Park St', 'Halifax', 'Nunavut', 'Canada', 'B3J2K9', '2898287351', 'sahil@gmail.com', 'sahil20', 'Visa', '12323123', 'Sahil Behl', '12/2016'),
    (1008, 'Behl', 'Sahil', '1333', 'South Park St', 'Halifax', 'Nova Scotia', 'Canada', 'B3J2K9', '2898287351', 'sahil@gmail.com', 'sahil22', 'Visa', '21313212', 'Sahil Behl', '12/2016'),
    (1009, 'Behl', 'Sahil', '1333', 'South Park St', 'Halifax', 'Alberta', 'Canada', 'B3J2K9', '2898287351', 'sahil30@gmail.com', 'sahil30', 'Visa', '4123456789012345', 'Sahil Behl', '12/2016'),
    (1010, 'Behl', 'Sahil', '1333', 'South Park St', 'Halifax', 'Colorado', 'USA', '90210', '2898287351', 'sahil110@gmail.com', 'sahil110', 'American Express', '342345678901256', 'Sahil Behl', '12/2016'),
    (1011, 'Behl', 'Sahil', '1333', 'South Park St', 'Halifax', 'Alberta', 'Canada', 'B3J2K9', '2898287351', 'sahil55@gmail.com', 'sahil55', 'Visa', '4123456789012345', 'Sahil Behl', '12/2030'),
    (1012, 'user', 'user', '1234', 'South', 'Halifax', 'Georgia', 'USA', '90210', '2898287351', 'user100@gmail.com', 'user100', 'Master Card', '5112345678901234', 'Sahil Behl', '12/2016'),
    (1013, 'Admin', 'Admin', '0000', 'street', 'city', 'Nova Scotia', 'Canada', 'B3J2K9', '2898287351', 'administrator@mail.com', 'admin', 'Visa', '1232313123', 'Admin', '12/2016');
    
INSERT Reservation (`Id`, `CheckInDate`, `CheckOutDate`, `NumberOfRoom`, `NumberOfGuest`, `Cid`) VALUES
    (1, CAST('2012-12-12' AS Date), CAST('2012-12-13' AS Date), 3, 2, 1),
    (1002, CAST('2017-10-02' AS Date), CAST('2017-10-03' AS Date), 2, 2, 1),
    (1003, CAST('2017-10-31' AS Date), CAST('2017-11-06' AS Date), 2, 1, 1),
    (1004, CAST('2017-11-03' AS Date), CAST('2017-11-10' AS Date), 2, 3, 1),
    (1006, CAST('2017-11-09' AS Date), CAST('2017-11-17' AS Date), 4, 5, 1012);
    
INSERT State (`Id`, `State`, `CountryName`) VALUES 
    (1, 'Alberta', 'Canada'),
    (2, 'British Columbia', 'Canada'),
    (3, 'Manitoba', 'Canada'),
    (4, 'New Brunswick', 'Canada'),
    (5, 'Newfoundland and Labrador', 'Canada'),
    (6, 'Northwest Territories', 'Canada'),
    (7, 'Nova Scotia', 'Canada'),
    (8, 'Nunavut', 'Canada'),
    (9, 'Ontario', 'Canada'),
    (10, 'Prince Edward Island', 'Canada'),
    (11, 'Quebec', 'Canada'),
    (12, 'Saskatchewan', 'Canada'),
    (13, 'Yukon', 'Canada'),
    (14, 'Alaska', 'USA'),
    (15, 'Arizona', 'USA'),
    (16, 'Arkansas', 'USA'),
    (17, 'California', 'USA'),
    (18, 'Colorado', 'USA'),
    (19, 'Connecticut', 'USA'),
    (20, 'Delaware', 'USA'),
    (21, 'District of Columbia', 'USA'),
    (22, 'Florida', 'USA'),
    (23, 'Georgia', 'USA'),
    (24, 'Hawaii', 'USA'),
    (25, 'Idaho', 'USA'),
    (26, 'Illinois', 'USA'),
    (27, 'Indiana', 'USA'),
    (28, 'Iowa', 'USA'),
    (29, 'Kansas', 'USA'),
    (30, 'Kentucky', 'USA'),
    (31, 'Louisiana', 'USA'),
    (32, 'Maine', 'USA'),
    (33, 'Maryland', 'USA'),
    (34, 'Massachusetts', 'USA'),
    (35, 'Michigan', 'USA'),
    (36, 'Minnesota', 'USA'),
    (37, 'Mississippi', 'USA'),
    (38, 'Missouri', 'USA'),
    (39, 'Montana', 'USA'),
    (40, 'Nebraska', 'USA'),
    (41, 'Nevada', 'USA'),
    (42, 'New Hampshire', 'USA'),
    (43, 'New Jersey', 'USA'),
    (44, 'New Mexico', 'USA'),
    (45, 'New York', 'USA'),
    (46, 'North Carolina', 'USA'),
    (47, 'North Dakota', 'USA'),
    (48, 'Ohio', 'USA'),
    (49, 'Oklahoma', 'USA'),
    (50, 'Oregon', 'USA'),
    (51, 'Pennsylvania', 'USA'),
    (52, 'Puerto Rico', 'USA'),
    (53, 'Rhode Island', 'USA'),
    (54, 'South Carolina', 'USA'),
    (55, 'South Dakota', 'USA'),
    (56, 'Tennessee', 'USA'),
    (57, 'Texas', 'USA'),
    (58, 'Utah', 'USA'),
    (59, 'Vermont', 'USA'),
    (60, 'Virginia', 'USA'),
    (61, 'Washington', 'USA'),
    (62, 'West Virginia', 'USA'),
    (63, 'Wisconsin', 'USA'),
    (64, 'Wyoming', 'USA');

ALTER TABLE Reservation WITH CHECK ADD CONSTRAINT FK_Reservation_Customer FOREIGN KEY(`Cid`) REFERENCES Customer (`id`);

ALTER TABLE Reservation CHECK CONSTRAINT FK_Reservation_Customer;

ALTER TABLE State WITH CHECK ADD CONSTRAINT FK_State_Country FOREIGN KEY(`CountryName`) REFERENCES Country (`CountryName`);

ALTER TABLE State CHECK CONSTRAINT FK_State_Country;