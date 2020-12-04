USE [Project]
GO

/****** Object:  Table [dbo].[SurveyData]    Script Date: 13/11/2020 12:05:15 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SurveyData](
	[SurvID] [int] IDENTITY(1,1) NOT NULL,
	[PerformanceRating] [float] NOT NULL,
	[RelationshipSatisfaction] [float] NOT NULL,
	[JobSatisfaction] [float] NOT NULL,
	[EnvironmentSatisfaction] [float] NOT NULL,
	[JobInvolvement] [float] NOT NULL,
	[Attrition] [bit] NOT NULL,
	[EmployeeNumber] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SurveyData]  WITH CHECK ADD  CONSTRAINT [FK_SurveyData] FOREIGN KEY([EmployeeNumber])
REFERENCES [dbo].[EmployeeBio] ([EmployeeNumber])
GO

ALTER TABLE [dbo].[SurveyData] CHECK CONSTRAINT [FK_SurveyData]
GO


