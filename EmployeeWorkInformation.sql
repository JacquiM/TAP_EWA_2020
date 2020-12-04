USE [Project]
GO

/****** Object:  Table [dbo].[EmployeeWorkInformation]    Script Date: 13/11/2020 12:02:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeeWorkInformation](
	[Work_Id] [int] IDENTITY(1,1) NOT NULL,
	[JobLevel] [int] NOT NULL,
	[NumCompaniesWorked] [int] NOT NULL,
	[TotalWorkingYears] [int] NOT NULL,
	[YearsAtCompany] [int] NOT NULL,
	[YearsWithCurrManager] [int] NOT NULL,
	[YearsSinceLastPromotion] [int] NOT NULL,
	[YearsInCurrentRole] [int] NOT NULL,
	[WorkLifeBalance] [int] NOT NULL,
	[StandardHours] [float] NOT NULL,
	[MonthlyIncome] [float] NOT NULL,
	[EmployeeNumber] [int] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EmployeeWorkInformation]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeWorkInformation] FOREIGN KEY([EmployeeNumber])
REFERENCES [dbo].[EmployeeBio] ([EmployeeNumber])
GO

ALTER TABLE [dbo].[EmployeeWorkInformation] CHECK CONSTRAINT [FK_EmployeeWorkInformation]
GO


