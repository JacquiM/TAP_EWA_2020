USE [Project]
GO

/****** Object:  View [dbo].[vwEmployees]    Script Date: 13/11/2020 11:54:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[vwEmployees]
AS
SELECT B.[EmployeeNumber], B.[MaritalStatus], B.[Gender], B.[Age], B.[DistanceFromHome], B. [EducationField] , B. [Education],
D.[Department], 
R.[HourlyRate], R.[DailyRate], R.[MonthlyRate], R.[PercentSalaryHike],
W.[JobLevel], W.[NumCompaniesWorked], W.[TotalWorkingYears], W.[YearsAtCompany], W.[YearsWithCurrManager], W.[YearsSinceLastPromotion],
W.[YearsInCurrentRole], W.[WorkLifeBalance], W.[StandardHours], W.[MonthlyIncome],
M.[BusinessTravel], M.[TrainingTimesLastYear], M.[StockOptionLevel], M. [OverTime],
S.[PerformanceRating],S.[RelationshipSatisfaction] ,S.[JobSatisfaction] ,S.[EnvironmentSatisfaction],S.[JobInvolvement],S.[Attrition]
from EmployeeBio B
JOIN Department D
ON B.EmployeeNumber = D.EmployeeNumber
JOIN CompanyRate R
ON R.EmployeeNumber = D.EmployeeNumber
JOIN EmployeeWorkInformation W
ON W.EmployeeNumber = R.EmployeeNumber
JOIN Miscelleneous M
ON M.EmployeeNumber = W.EmployeeNumber
JOIN SurveyData S
ON S.EmployeeNumber = M.EmployeeNumber
GO


