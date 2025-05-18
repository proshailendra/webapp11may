CREATE TABLE [dbo].[Categories] (
    [CategoryID]   INT           IDENTITY (9, 1) NOT NULL,
    [CategoryName] NVARCHAR (15) NOT NULL,
    [Description]  NTEXT         NULL,
    [Picture]      IMAGE         NULL,
    CONSTRAINT [Categories_PK] PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [aaaaa_1]
    ON [dbo].[Categories]([CategoryID] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [Category Name]
    ON [dbo].[Categories]([CategoryName] ASC);

