USE [AW_DWH_xprchlik]
GO

/****** Object:  Table [dbo].[dimVideo]    Script Date: 15. 1. 2023 18:49:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dimVideo](
	[VideoKey] [int] IDENTITY(1,1) NOT NULL,
	[VideoId] [dbo].[Name] NULL,
	[VideoTitle] [nvarchar](200) NULL,
	[PublishedAtDateKey] [int] NOT NULL,
	[ThumbnailLink] [nvarchar](100) NULL,
	[CommentsDisabled] [bit] NULL,
	[RatingDisabled] [bit] NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_dimVideo] PRIMARY KEY CLUSTERED 
(
	[VideoKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[dimVideo]  WITH CHECK ADD  CONSTRAINT [FK_dimVideo_dimVDate] FOREIGN KEY([PublishedAtDateKey])
REFERENCES [dbo].[dimVDate] ([DateKey])
GO

ALTER TABLE [dbo].[dimVideo] CHECK CONSTRAINT [FK_dimVideo_dimVDate]
GO


