USE [AW_DWH_xprchlik]
GO

/****** Object:  Table [dbo].[factVideoDetail]    Script Date: 15. 1. 2023 18:57:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[factVideoDetail](
	[VideoDetailKey] [int] IDENTITY(1,1) NOT NULL,
	[VideoKey] [int] NOT NULL,
	[ChannelKey] [int] NOT NULL,
	[CountryTrendingKey] [int] NOT NULL,
	[CategoryKey] [int] NOT NULL,
	[TrendingDateKey] [int] NOT NULL,
	[ViewCount] [int] NULL,
	[Likes] [int] NULL,
	[Dislikes] [int] NULL,
	[CommentCount] [int] NULL,
 CONSTRAINT [PK_factVideoDetail] PRIMARY KEY CLUSTERED 
(
	[VideoDetailKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[factVideoDetail]  WITH CHECK ADD  CONSTRAINT [FK_factVideoDetail_dimCategory] FOREIGN KEY([CategoryKey])
REFERENCES [dbo].[dimCategory] ([CategoryKey])
GO

ALTER TABLE [dbo].[factVideoDetail] CHECK CONSTRAINT [FK_factVideoDetail_dimCategory]
GO

ALTER TABLE [dbo].[factVideoDetail]  WITH CHECK ADD  CONSTRAINT [FK_factVideoDetail_dimCountry] FOREIGN KEY([CountryTrendingKey])
REFERENCES [dbo].[dimCountry] ([CuontryKey])
GO

ALTER TABLE [dbo].[factVideoDetail] CHECK CONSTRAINT [FK_factVideoDetail_dimCountry]
GO

ALTER TABLE [dbo].[factVideoDetail]  WITH CHECK ADD  CONSTRAINT [FK_factVideoDetail_dimChannel] FOREIGN KEY([ChannelKey])
REFERENCES [dbo].[dimChannel] ([ChannelKey])
GO

ALTER TABLE [dbo].[factVideoDetail] CHECK CONSTRAINT [FK_factVideoDetail_dimChannel]
GO

ALTER TABLE [dbo].[factVideoDetail]  WITH CHECK ADD  CONSTRAINT [FK_factVideoDetail_dimVDate] FOREIGN KEY([TrendingDateKey])
REFERENCES [dbo].[dimVDate] ([DateKey])
GO

ALTER TABLE [dbo].[factVideoDetail] CHECK CONSTRAINT [FK_factVideoDetail_dimVDate]
GO

ALTER TABLE [dbo].[factVideoDetail]  WITH CHECK ADD  CONSTRAINT [FK_factVideoDetail_dimVideo] FOREIGN KEY([VideoKey])
REFERENCES [dbo].[dimVideo] ([VideoKey])
GO

ALTER TABLE [dbo].[factVideoDetail] CHECK CONSTRAINT [FK_factVideoDetail_dimVideo]
GO


