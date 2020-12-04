USE [Project]
GO

/****** Object:  Table [dbo].[EmployeeBio]    Script Date: 13/11/2020 12:03:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EmployeeBio](
	[EmployeeNumber] [int] NOT NULL,
	[MaritalStatus] [varchar](50) NOT NULL,
	[Gender] [varchar](50) NOT NULL,
	[Age] [float] NOT NULL,
	[DistanceFromHome] [float] NOT NULL,
	[EducationField] [varchar](50) NOT NULL,
	[Education] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


