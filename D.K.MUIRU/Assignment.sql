CREATE VIEW EmployeesView
AS
SELECT Ed.[EmployeeNumber], Ed.[Education], Ed.[EducationField],  Ed.[EducationId], 
Emp.[Gender],  Emp.[Age] , Emp.[MaritalStatus] , Emp.[DistanceFromHome],
Hist.[TotalWorkYears] , Hist.[YearsAtCompany]  , Hist.[YearWithCurrentManager], Hist.[JobRole], 
pa.[Attrition], 
wp.[BusinessTravel] ,wp.[Overtime] , wp.[TrainingTimesLastYear],
re.[HourlyRate], re.[DailyRate] ,re.[MonthlyRate] , re.[StockOptionLevel] , re.[PercentSalaryHike] , re.[MonthlyIncome]
,su.[EnvironmentSatisfaction] ,su.[JobInvolvement],su.[JobSatisfaction] , su.[WorkLifeBalance]

FROM Education Ed
JOIN EmployeeBio Emp
ON Ed.EmployeeNumber = Emp.EmployeeNumber
JOIN History_and_experience Hist 
ON  Hist.Employeenumber = Emp.EmployeeNumber
JOIN workPrivileges wp
ON wp.EmployeeNumber = Hist.Employeenumber
JOIN SurveyInformation su
ON su.EmployeeNumber =wp.EmployeeNumber
JOIN Renumerations re
ON re.EmployeeNumber = SU.EmployeeNumber
JOIN People_and_Analytics1 pa
ON pa.EmployeeNumber = re.EmployeeNumber


Select *
FROM EmployeesView