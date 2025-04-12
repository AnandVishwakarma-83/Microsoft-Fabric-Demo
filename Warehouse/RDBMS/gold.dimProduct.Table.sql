 IF OBJECT_ID('[warehouse_salesdata].[gold].[dimProduct]', 'U') IS NOT NULL
    DROP TABLE [warehouse_salesdata].[gold].[dimProduct];

CREATE TABLE [warehouse_salesdata].[gold].[dimProduct]
( 
    [Product_key] BIGINT not null, 
	[ProductID] INT NULL,
	[ProductName] varchar(8000) NULL,
	[Category] varchar(8000) NULL,
	[Price] real null,
	[RunId] varchar(8000) NULL,
	[LoadedDate] date NULL,
	[Effective_Date] datetime2(6) NULL, 	
	[End_Date]	datetime2(6) NULL,
	[Active_Flag] int NULL
)
GO

ALTER TABLE [warehouse_salesdata].[gold].[dimProduct] ADD CONSTRAINT PK_dimProduct_Product_key PRIMARY KEY NONCLUSTERED (Product_key) NOT ENFORCED;
