USE [AW_DWH_xprchlik]
GO

/****** Object:  Table [dbo].[dimCategory]    Script Date: 15. 1. 2023 18:43:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dimCategory](
	[CategoryKey] [int] IDENTITY(1,1) NOT NULL,
	[CategoryTypeKey] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[CategoryName] [dbo].[Name] NULL,
 CONSTRAINT [PK_dimCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[dimCategory]  WITH CHECK ADD  CONSTRAINT [FK_dimCategory_dimCategoryType] FOREIGN KEY([CategoryTypeKey])
REFERENCES [dbo].[dimCategoryType] ([CategoryTypeKey])
GO

ALTER TABLE [dbo].[dimCategory] CHECK CONSTRAINT [FK_dimCategory_dimCategoryType]
GO

