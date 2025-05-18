CREATE TABLE [dbo].[OrderDetails] (
    [OrderID]   INT      NOT NULL,
    [ProductID] INT      NOT NULL,
    [UnitPrice] MONEY    NOT NULL,
    [Quantity]  SMALLINT NOT NULL,
    [Discount]  REAL     NOT NULL,
    CONSTRAINT [Order Details_PK] PRIMARY KEY CLUSTERED ([OrderID] ASC, [ProductID] ASC),
    CONSTRAINT [Order Details_FK00] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ProductID]),
    CONSTRAINT [Order Details_FK01] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID]) ON DELETE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [aaaaa_4]
    ON [dbo].[OrderDetails]([OrderID] ASC, [ProductID] ASC);


GO
CREATE NONCLUSTERED INDEX [Product ID]
    ON [dbo].[OrderDetails]([ProductID] ASC);


GO
CREATE NONCLUSTERED INDEX [Reference2]
    ON [dbo].[OrderDetails]([ProductID] ASC);


GO
CREATE NONCLUSTERED INDEX [Reference4]
    ON [dbo].[OrderDetails]([OrderID] ASC);

