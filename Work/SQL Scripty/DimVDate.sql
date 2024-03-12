USE [AW_DWH_xprchlik]
GO

/****** Object:  Table [dbo].[dimVDate]    Script Date: 15. 1. 2023 18:48:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dimVDate](
	[DateKey] [int] IDENTITY(1,1) NOT NULL,
	[FullDateAlternateKey] [date] NOT NULL,
	[DayNumberOfWeek] [tinyint] NULL,
	[EnglishDayNameOfWeek] [nvarchar](10) NULL,
	[DayNumberOfMonth] [tinyint] NULL,
	[DayNumberOfYear] [smallint] NULL,
	[WeekNumberOfYear] [tinyint] NULL,
	[EnglishMonthName] [nvarchar](10) NULL,
	[MonthNumberOfYear] [tinyint] NULL,
	[CalendarQuarter] [tinyint] NULL,
	[CalendarYear] [smallint] NULL,
	[CalendarSemester] [tinyint] NULL,
	[FiscalQuarter] [tinyint] NULL,
	[FiscalYear] [smallint] NULL,
	[FiscalSemester] [tinyint] NULL,
 CONSTRAINT [PK_dimVDate] PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


