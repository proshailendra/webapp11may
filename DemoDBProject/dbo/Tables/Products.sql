CREATE TABLE [dbo].[Products] (
    [ProductID]       INT           IDENTITY (78, 1) NOT NULL,
    [SupplierID]      INT           NULL,
    [CategoryID]      INT           NULL,
    [ProductName]     NVARCHAR (40) NOT NULL,
    [EnglishName]     NVARCHAR (40) NULL,
    [QuantityPerUnit] NVARCHAR (20) NULL,
    [UnitPrice]       MONEY         NULL,
    [UnitsInStock]    SMALLINT      NULL,
    [UnitsOnOrder]    SMALLINT      NULL,
    [ReorderLevel]    SMALLINT      NULL,
    [Discontinued]    BIT           NOT NULL,
    CONSTRAINT [Products_PK] PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [Products_FK00] FOREIGN KEY ([SupplierID]) REFERENCES [dbo].[Suppliers] ([SupplierID]) ON UPDATE CASCADE,
    CONSTRAINT [Products_FK01] FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Categories] ([CategoryID]) ON UPDATE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [aaaaa_6]
    ON [dbo].[Products]([ProductID] ASC);


GO
CREATE NONCLUSTERED INDEX [Category ID]
    ON [dbo].[Products]([CategoryID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product Name]
    ON [dbo].[Products]([ProductName] ASC);


GO
CREATE NONCLUSTERED INDEX [Reference1]
    ON [dbo].[Products]([SupplierID] ASC);


GO
CREATE NONCLUSTERED INDEX [Reference1_Products]
    ON [dbo].[Products]([CategoryID] ASC);


GO
CREATE NONCLUSTERED INDEX [Supplier ID]
    ON [dbo].[Products]([SupplierID] ASC);

