/* ===============================================================
This script create tables, populates them and create a view of the 
employee data after it is imported using the import wizard 
   ===============================================================*/

   --- Creating the 4 tables i.e EmployeeDetails, EmployeeJobDetails, EmployeeCosts and SurveyInformation
   --- EmployeeDetails Table
   DROP TABLE dbo.EmployeeJobDetails
   DROP TABLE dbo.EmployeeCosts
   DROP TABLE dbo.SurveyInformation
   DROP TABLE dbo.EmployeeDetails
CREATE TABLE dbo.EmployeeDetails(
	EmployeeNumber int PRIMARY KEY,
	Age int NOT NULL,
	Education int NOT NULL,
	EducationField nvarchar(50) NOT NULL,
	Gender nvarchar(50) NOT NULL,
	MaritalStatus nvarchar(50) NOT NULL,
	DistanceFromHome decimal(18, 0) NOT NULL,
	Over18 bit NOT NULL)

    --- EmployeeJobDetails Table
CREATE TABLE dbo.EmployeeJobDetails (
	JobDetID int IDENTITY(1,1),
	Department nvarchar(50) NOT NULL,
	JobLevel int NOT NULL,
	JobRole nvarchar(50) NOT NULL,
	JobInvolvement int NOT NULL,
	NumCompaniesWorked int NOT NULL,
	StockOptionLevel int NOT NULL,
	TotalWorkingYears decimal NOT NULL,
	YearsAtCompany decimal NOT NULL,
	YearsInCurrentRole decimal NOT NULL,
	YearsWithCurrManager decimal NOT NULL,
	StandardHours int NOT NULL,
	Attrition bit NOT NULL,
	EmployeeNumber int FOREIGN KEY REFERENCES EmployeeDetails(EmployeeNumber))

	--- EmployeeCosts Table
CREATE TABLE dbo.EmployeeCosts(
	CostsID int IDENTITY(1,1) NOT NULL,
	DailyRate decimal NOT NULL,
	HourlyRate decimal NOT NULL,
	MonthlyRate decimal NOT NULL,
	MonthlyIncome int NOT NULL,
	OverTime bit NOT NULL,
	PercentSalaryHike decimal NOT NULL,
	BusinessTravel nvarchar(50) NOT NULL,
	EmployeeNumber int FOREIGN KEY REFERENCES EmployeeDetails(EmployeeNumber))

	--- SurveyInformation Table
CREATE TABLE dbo.SurveyInformation(
	SurveyID int IDENTITY(1,1) NOT NULL,
	EnvironmentSatisfaction int NOT NULL,
	JobSatisfaction int NOT NULL,
	PerformanceRating int NOT NULL,
	RelationshipSatisfaction int NOT NULL,
	TrainingTimesLastYear int NOT NULL,
	WorkLifeBalance int NOT NULL,
	EmployeeNumber int FOREIGN KEY REFERENCES EmployeeDetails(EmployeeNumber))

	--- Populating the tables with relevant data
	--- Populate EmployeeDetails
INSERT  dbo.EmployeeDetails SELECT
        EmployeeNumber
        ,Age
        ,Education
        ,EducationField
        ,Gender
        ,MaritalStatus
        ,DistanceFromHome
        ,Over18
FROM	Employee

	--- Populate EmployeeDetails
INSERT  dbo.EmployeeJobDetails SELECT
		Department,
		JobLevel,
		JobRole,
		JobInvolvement,
		NumCompaniesWorked,
		StockOptionLevel,
		TotalWorkingYears,
		YearsAtCompany,
		YearsInCurrentRole,
		YearsWithCurrManager,
		StandardHours,
		Attrition,
		EmployeeNumber 
FROM    Employee

	--- Populate EmployeeCosts
INSERT  dbo.EmployeeCosts  SELECT
         DailyRate
        ,HourlyRate
        ,MonthlyRate
        ,MonthlyIncome
        ,OverTime
        ,PercentSalaryHike
        ,BusinessTravel
        ,EmployeeNumber
FROM    Employee

	--- Populate SurveyInformation
INSERT  dbo.SurveyInformation  SELECT
        EnvironmentSatisfaction
        ,JobSatisfaction
        ,PerformanceRating
        ,RelationshipSatisfaction
        ,TrainingTimesLastYear
        ,WorkLifeBalance
        ,EmployeeNumber
FROM    Employee


	--- Create a view of the whole data
select* from EmployeeDetails
select* from EmployeeCosts
select* from EmployeeJobDetails
select* from SurveyInformation

CREATE VIEW VwEmployeeData
AS 
SELECT
     E.EmployeeNumber
    ,E.Age
    ,E.Education
    ,E.EducationField
    ,E.Gender
    ,E.MaritalStatus
    ,E.DistanceFromHome
    ,E.Over18,
	D.Department,
	D.JobLevel,
	D.JobRole,
	D.JobInvolvement,
	D.NumCompaniesWorked,
	D.StockOptionLevel,
	D.TotalWorkingYears,
	D.YearsAtCompany,
	D.YearsInCurrentRole,
	D.YearsWithCurrManager,
	D.StandardHours,
	D.Attrition, 
	S.EnvironmentSatisfaction,
	S.JobSatisfaction,
	S.PerformanceRating,
	S.RelationshipSatisfaction,
	S.TrainingTimesLastYear,
	S.WorkLifeBalance,
	C.DailyRate
    ,C.HourlyRate
    ,C.MonthlyRate
    ,C.MonthlyIncome
    ,C.OverTime
    ,C.PercentSalaryHike
    ,C.BusinessTravel

	FROM EmployeeDetails E join EmployeeJobDetails D ON E.EmployeeNumber = D.EmployeeNumber
	join SurveyInformation S ON E.EmployeeNumber = S.EmployeeNumber
	join EmployeeCosts C ON E.EmployeeNumber = C.EmployeeNumber

	SELECT* FROM VwEmployeeData
	

	