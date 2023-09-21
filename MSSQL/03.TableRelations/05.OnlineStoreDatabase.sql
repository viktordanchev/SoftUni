CREATE DATABASE [OnlineStore]

CREATE TABLE [ItemTypes] (
	[ItemTypeID] INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(20) NOT NULL
)

CREATE TABLE [Items] (
	[ItemID] INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(20) NOT NULL,
	[ItemTypeID] INT FOREIGN KEY REFERENCES [ItemTypes] ([ItemTypeID])
)

CREATE TABLE [Cities] (
	[CityID] INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(20) NOT NULL
)

CREATE TABLE [Customers] (
	[CustomerID] INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(20) NOT NULL,
	[Birthday] DATE NOT NULL,
	[CityID] INT FOREIGN KEY REFERENCES [Cities]([CityID])
)

CREATE TABLE [Orders] (
	[OrderID] INT PRIMARY KEY IDENTITY,
	[CustomerID] INT FOREIGN KEY REFERENCES [Customers]([CustomerID])
)

CREATE TABLE [OrderItems] (
	[OrderID] INT FOREIGN KEY REFERENCES [Orders]([OrderID]),
	[ItemID] INT FOREIGN KEY REFERENCES [Items]([ItemID])

	CONSTRAINT PK_OrderItems PRIMARY KEY ([OrderID], [ItemID])
)