USE [AW_DWH_xprchlik]
GO

/****** Object:  Table [dbo].[dimCategoryType]    Script Date: 15. 1. 2023 18:44:26 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dimCategoryType](
	[CategoryTypeKey] [int] IDENTITY(1,1) NOT NULL,
	[CategoryTypeName] [dbo].[Name] NULL,
 CONSTRAINT [PK_dimCategoryType] PRIMARY KEY CLUSTERED 
(
	[CategoryTypeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

