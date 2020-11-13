USE [Project]
GO

/****** Object:  Table [dbo].[CompanyRate]    Script Date: 13/11/2020 12:04:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CompanyRate](
	[Rate_Id] [int] IDENTITY(1,1) NOT NULL,
	[HourlyRate] [decimal](18, 0) NOT NULL,
	[DailyRate] [decimal](18, 0) NOT NULL,
	[MonthlyRate] [decimal](18, 0) NOT NULL,
	[PercentSalaryHike] [decimal](18, 0) NOT NULL,
	[EmployeeNumber] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CompanyRate]  WITH CHECK ADD  CONSTRAINT [FK_CompanyRate] FOREIGN KEY([EmployeeNumber])
REFERENCES [dbo].[EmployeeBio] ([EmployeeNumber])
GO

ALTER TABLE [dbo].[CompanyRate] CHECK CONSTRAINT [FK_CompanyRate]
GO


