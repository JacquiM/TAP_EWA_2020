USE [Project]
GO

/****** Object:  Table [dbo].[Department]    Script Date: 13/11/2020 12:03:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Department](
	[DepId] [int] IDENTITY(1,1) NOT NULL,
	[Department] [varchar](25) NOT NULL,
	[EmployeeNumber] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department] FOREIGN KEY([EmployeeNumber])
REFERENCES [dbo].[EmployeeBio] ([EmployeeNumber])
GO

ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department]
GO

ALTER TABLE [dbo].[Department]  WITH CHECK ADD  CONSTRAINT [FK_Department2] FOREIGN KEY([EmployeeNumber])
REFERENCES [dbo].[EmployeeBio] ([EmployeeNumber])
GO

ALTER TABLE [dbo].[Department] CHECK CONSTRAINT [FK_Department2]
GO


