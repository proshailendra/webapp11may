CREATE TABLE [dbo].[Orders] (
    [OrderID]        INT           NOT NULL,
    [CustomerID]     NVARCHAR (5)  NOT NULL,
    [EmployeeID]     INT           NULL,
    [ShipName]       NVARCHAR (40) NULL,
    [ShipAddress]    NVARCHAR (60) NULL,
    [ShipCity]       NVARCHAR (15) NULL,
    [ShipRegion]     NVARCHAR (15) NULL,
    [ShipPostalCode] NVARCHAR (10) NULL,
    [ShipCountry]    NVARCHAR (15) NULL,
    [ShipVia]        INT           NULL,
    [OrderDate]      DATETIME      NULL,
    [RequiredDate]   DATETIME      NULL,
    [ShippedDate]    DATETIME      NULL,
    [Freight]        MONEY         NULL,
    CONSTRAINT [Orders_PK] PRIMARY KEY CLUSTERED ([OrderID] ASC),
    CONSTRAINT [Orders_FK00] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]) ON UPDATE CASCADE,
    CONSTRAINT [Orders_FK01] FOREIGN KEY ([ShipVia]) REFERENCES [dbo].[Shippers] ([ShipperID]) ON UPDATE CASCADE,
    CONSTRAINT [Orders_FK02] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([EmployeeID])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [aaaaa_5]
    ON [dbo].[Orders]([OrderID] ASC);


GO
CREATE NONCLUSTERED INDEX [Customer ID]
    ON [dbo].[Orders]([CustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [Employee ID]
    ON [dbo].[Orders]([EmployeeID] ASC);


GO
CREATE NONCLUSTERED INDEX [Order Date]
    ON [dbo].[Orders]([OrderDate] ASC);


GO
CREATE NONCLUSTERED INDEX [Reference]
    ON [dbo].[Orders]([CustomerID] ASC);


GO
CREATE NONCLUSTERED INDEX [Reference3]
    ON [dbo].[Orders]([ShipVia] ASC);


GO
CREATE NONCLUSTERED INDEX [Reference5]
    ON [dbo].[Orders]([EmployeeID] ASC);

