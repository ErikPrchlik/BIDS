USE [AW_DWH_xprchlik]
GO

/****** Object:  Table [dbo].[factChannelDetail]    Script Date: 15. 1. 2023 18:49:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[factChannelDetail](
	[ChannelDetailKey] [int] IDENTITY(1,1) NOT NULL,
	[ChannelKey] [int] NOT NULL,
	[CountryAaudienceKey] [int] NOT NULL,
	[CategoryKey] [int] NOT NULL,
	[Rank] [int] NULL,
	[ElapsedTime] [int] NULL,
	[ViewCount] [bigint] NULL,
	[VideoCount] [int] NULL,
	[CommentCount] [int] NULL,
	[SubscriberCount] [int] NULL,
	[AvgViews] [float] NULL,
	[AvgLikes] [float] NULL,
	[AvgComments] [float] NULL,
 CONSTRAINT [PK_factChannelDetail] PRIMARY KEY CLUSTERED 
(
	[ChannelDetailKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[factChannelDetail]  WITH CHECK ADD  CONSTRAINT [FK_factChannelDetail_dimCategory] FOREIGN KEY([CategoryKey])
REFERENCES [dbo].[dimCategory] ([CategoryKey])
GO

ALTER TABLE [dbo].[factChannelDetail] CHECK CONSTRAINT [FK_factChannelDetail_dimCategory]
GO

ALTER TABLE [dbo].[factChannelDetail]  WITH CHECK ADD  CONSTRAINT [FK_factChannelDetail_dimCountry] FOREIGN KEY([CountryAaudienceKey])
REFERENCES [dbo].[dimCountry] ([CuontryKey])
GO

ALTER TABLE [dbo].[factChannelDetail] CHECK CONSTRAINT [FK_factChannelDetail_dimCountry]
GO

ALTER TABLE [dbo].[factChannelDetail]  WITH CHECK ADD  CONSTRAINT [FK_factChannelDetail_dimChannel] FOREIGN KEY([ChannelKey])
REFERENCES [dbo].[dimChannel] ([ChannelKey])
GO

ALTER TABLE [dbo].[factChannelDetail] CHECK CONSTRAINT [FK_factChannelDetail_dimChannel]
GO


