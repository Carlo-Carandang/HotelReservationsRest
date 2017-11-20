USE [HotelReserv]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2017-11-08 1:46:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[Id] [int] NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2017-11-08 1:46:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[StreetNumber] [varchar](10) NOT NULL,
	[StreetName] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
	[Province] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[PostalCode] [varchar](10) NOT NULL,
	[PhoneNumber] [varchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[CreditCardType] [varchar](50) NOT NULL,
	[CreditCardNumber] [varchar](50) NOT NULL,
	[CreditCardName] [varchar](50) NOT NULL,
	[ExpirationDate] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 2017-11-08 1:46:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CheckInDate] [date] NOT NULL,
	[CheckOutDate] [date] NOT NULL,
	[NumberOfRoom] [int] NOT NULL,
	[NumberOfGuest] [int] NOT NULL,
	[Cid] [int] NULL,
 CONSTRAINT [PK_Reservation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 2017-11-08 1:46:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[CountryName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Country] ([Id], [CountryName]) VALUES (1, N'Canada')
INSERT [dbo].[Country] ([Id], [CountryName]) VALUES (2, N'USA')
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1, N'User1', N'User1', N'1234', N'User1', N'Halifax', N'Nova Scotia', N'Canada', N'A2B3C4', N'2898287351', N'user1@gmail.com', N'user1', N'Visa', N'123423', N'User1', N'12/2012')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (2, N'User3', N'User3', N'1234', N'Streey', N'City', N'Alaska', N'USA', N'A2B3C4', N'1234567890', N'user3@gmail.com', N'user3', N'Visa', N'dbfhdsf', N'sadbhf', N'12/1214')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1002, N'Behl', N'Sahil', N'1333', N'South Park St', N'Halifax', N'Nova Scotia', N'Canada', N'B3J2K9', N'2898287351', N'sahil@gmail.com', N'sahil', N'Visa', N'23123123342123232', N'Sahil Behl', N'12/2012')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1003, N'User', N'User', N'1234', N'Street', N'City', N'Quebec', N'Canada', N'A2B3C4', N'2898287351', N'user8@gmail.com', N'user8', N'Visa', N'123143423432', N'Sahil Behl', N'12/2017')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1004, N'User', N'User', N'1234', N'Street', N'City', N'Alberta', N'Canada', N'A2B3C4', N'2898287351', N'sahi9l@gmail.com', N'sahil9', N'Visa', N'23454324', N'Sahil Behl', N'12/2016')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1005, N'Behl', N'Sahil', N'1333', N'South Park St', N'Halifax', N'Alberta', N'Canada', N'B3J 2K9', N'2898287351', N'sahil11@gmail.com', N'sahil11', N'Visa', N'1333', N'Sahil Behl', N'12/2016')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1006, N'Sahil', N'Sahil', N'1333', N'South Park St', N'Halifax', N'Alberta', N'Canada', N'B3J 2K9', N'2898287351', N'sahil12@gmail.com', N'sahil12', N'Visa', N'123123123123123', N'Sahil Behl', N'12/2016')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1007, N'Behl', N'Sahil', N'1333', N'South Park St', N'Halifax', N'Nunavut', N'Canada', N'B3J2K9', N'2898287351', N'sahil@gmail.com', N'sahil20', N'Visa', N'12323123', N'Sahil Behl', N'12/2016')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1008, N'Behl', N'Sahil', N'1333', N'South Park St', N'Halifax', N'Nova Scotia', N'Canada', N'B3J2K9', N'2898287351', N'sahil@gmail.com', N'sahil22', N'Visa', N'21313212', N'Sahil Behl', N'12/2016')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1009, N'Behl', N'Sahil', N'1333', N'South Park St', N'Halifax', N'Alberta', N'Canada', N'B3J2K9', N'2898287351', N'sahil30@gmail.com', N'sahil30', N'Visa', N'4123456789012345', N'Sahil Behl', N'12/2016')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1010, N'Behl', N'Sahil', N'1333', N'South Park St', N'Halifax', N'Colorado', N'USA', N'90210', N'2898287351', N'sahil110@gmail.com', N'sahil110', N'American Express', N'342345678901256', N'Sahil Behl', N'12/2016')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1011, N'Behl', N'Sahil', N'1333', N'South Park St', N'Halifax', N'Alberta', N'Canada', N'B3J2K9', N'2898287351', N'sahil55@gmail.com', N'sahil55', N'Visa', N'4123456789012345', N'Sahil Behl', N'12/2030')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1012, N'user', N'user', N'1234', N'South', N'Halifax', N'Georgia', N'USA', N'90210', N'2898287351', N'user100@gmail.com', N'user100', N'Master Card', N'5112345678901234', N'Sahil Behl', N'12/2016')
INSERT [dbo].[Customer] ([id], [LastName], [FirstName], [StreetNumber], [StreetName], [City], [Province], [Country], [PostalCode], [PhoneNumber], [Email], [Password], [CreditCardType], [CreditCardNumber], [CreditCardName], [ExpirationDate]) VALUES (1013, N'Admin', N'Admin', N'0000', N'street', N'city', N'Nova Scotia', N'Canada', N'B3J2K9', N'2898287351', N'administrator@mail.com', N'admin', N'Visa', N'1232313123', N'Admin', N'12/2016')
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Reservation] ON 

INSERT [dbo].[Reservation] ([Id], [CheckInDate], [CheckOutDate], [NumberOfRoom], [NumberOfGuest], [Cid]) VALUES (1, CAST(N'2012-12-12' AS Date), CAST(N'2012-12-13' AS Date), 3, 2, 1)
INSERT [dbo].[Reservation] ([Id], [CheckInDate], [CheckOutDate], [NumberOfRoom], [NumberOfGuest], [Cid]) VALUES (1002, CAST(N'2017-10-02' AS Date), CAST(N'2017-10-03' AS Date), 2, 2, 1)
INSERT [dbo].[Reservation] ([Id], [CheckInDate], [CheckOutDate], [NumberOfRoom], [NumberOfGuest], [Cid]) VALUES (1003, CAST(N'2017-10-31' AS Date), CAST(N'2017-11-06' AS Date), 2, 1, 1)
INSERT [dbo].[Reservation] ([Id], [CheckInDate], [CheckOutDate], [NumberOfRoom], [NumberOfGuest], [Cid]) VALUES (1004, CAST(N'2017-11-03' AS Date), CAST(N'2017-11-10' AS Date), 2, 3, 1)
INSERT [dbo].[Reservation] ([Id], [CheckInDate], [CheckOutDate], [NumberOfRoom], [NumberOfGuest], [Cid]) VALUES (1006, CAST(N'2017-11-09' AS Date), CAST(N'2017-11-17' AS Date), 4, 5, 1012)
SET IDENTITY_INSERT [dbo].[Reservation] OFF
SET IDENTITY_INSERT [dbo].[State] ON 

INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (1, N'Alberta', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (2, N'British Columbia', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (3, N'Manitoba', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (4, N'New Brunswick', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (5, N'Newfoundland and Labrador', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (6, N'Northwest Territorie', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (7, N'Nova Scotia', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (8, N'Nunavut', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (9, N'Ontario', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (10, N'Prince Edward Island', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (11, N'Quebec', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (12, N'Saskatchewan', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (13, N'Yukon', N'Canada')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (14, N'Alaska', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (15, N'Arizona', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (16, N'Arkansas', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (17, N'California', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (18, N'Colorado', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (19, N'Connecticut', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (20, N'Delaware', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (21, N'District of Columbia', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (22, N'Florida', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (23, N'Georgia', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (24, N'Hawaii', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (25, N'Idaho', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (26, N'Illinois', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (27, N'Indiana', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (28, N'Iowa', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (29, N'Kansas', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (30, N'Kentucky', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (31, N'Louisiana', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (32, N'Maine', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (33, N'Maryland', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (34, N'Massachusetts', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (35, N'Michigan', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (36, N'Minnesota', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (37, N'Mississippi', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (38, N'Missouri', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (39, N'Montana', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (40, N'Nebraska', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (41, N'Nevada', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (42, N'New Hampshire', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (43, N'New Jersey', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (44, N'New Mexico', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (45, N'New York', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (46, N'North Carolina', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (47, N'North Dakota', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (48, N'Ohio', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (49, N'Oklahoma', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (50, N'Oregon', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (51, N'Pennsylvania', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (52, N'Puerto Rico', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (53, N'Rhode Island', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (54, N'South Carolina', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (55, N'South Dakota', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (56, N'Tennessee', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (57, N'Texas', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (58, N'Utah', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (59, N'Vermont', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (60, N'Virginia', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (61, N'Washington', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (62, N'West Virginia', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (63, N'Wisconsin', N'USA')
INSERT [dbo].[State] ([Id], [State], [CountryName]) VALUES (64, N'Wyoming', N'USA')
SET IDENTITY_INSERT [dbo].[State] OFF
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_Customer] FOREIGN KEY([Cid])
REFERENCES [dbo].[Customer] ([id])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_Customer]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_Country] FOREIGN KEY([CountryName])
REFERENCES [dbo].[Country] ([CountryName])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_Country]
GO