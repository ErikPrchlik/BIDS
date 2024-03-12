USE [AW_DWH_xprchlik]
GO

/****** Object:  Table [dbo].[dimChannel]    Script Date: 15. 1. 2023 18:47:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dimChannel](
	[ChannelKey] [int] IDENTITY(1,1) NOT NULL,
	[ChannelId] [nvarchar](100) NULL,
	[ChannelTitle] [nvarchar](500) NULL,
	[Username] [nvarchar](500) NULL,
	[YoutubeUrl] [nvarchar](100) NULL,
 CONSTRAINT [PK_dimChannel] PRIMARY KEY CLUSTERED 
(
	[ChannelKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

