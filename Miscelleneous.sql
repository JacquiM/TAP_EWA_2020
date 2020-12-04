USE [Project]
GO

/****** Object:  Table [dbo].[Miscelleneous]    Script Date: 13/11/2020 12:04:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Miscelleneous](
	[MiscId] [int] IDENTITY(1,1) NOT NULL,
	[BusinessTravel] [varchar](60) NOT NULL,
	[TrainingTimesLastYear] [int] NOT NULL,
	[StockOptionLevel] [int] NOT NULL,
	[OverTime] [bit] NOT NULL,
	[EmployeeNumber] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Miscelleneous]  WITH CHECK ADD  CONSTRAINT [FK_Miscelleneous] FOREIGN KEY([EmployeeNumber])
REFERENCES [dbo].[EmployeeBio] ([EmployeeNumber])
GO

ALTER TABLE [dbo].[Miscelleneous] CHECK CONSTRAINT [FK_Miscelleneous]
GO


