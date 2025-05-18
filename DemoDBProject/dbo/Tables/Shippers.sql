﻿CREATE TABLE [dbo].[Shippers] (
    [ShipperID]   INT           IDENTITY (4, 1) NOT NULL,
    [CompanyName] NVARCHAR (40) NOT NULL,
    CONSTRAINT [Shippers_PK] PRIMARY KEY CLUSTERED ([ShipperID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [aaaaa_7]
    ON [dbo].[Shippers]([ShipperID] ASC);

