SELECT 'Mean_Median_Household_Income' AS Statistic, AVG(Median_Household_income) AS Value FROM [dbo].[2022_income_Estimate] WHERE Median_Household_income >= 100

UNION ALL

SELECT 'StdDev_Median_Household_Income' AS Statistic, STDEV(Median_Household_income) AS Value FROM [dbo].[2022_income_Estimate] WHERE Median_Household_income >= 100

UNION ALL

SELECT 'Min_Median_Household_Income' AS Statistic, MIN(Median_Household_income) AS Value FROM [dbo].[2022_income_Estimate] WHERE Median_Household_income NOT IN (0, 1)

UNION ALL

SELECT 'Max_Median_Household_Income' AS Statistic, MAX(Median_Household_income) AS Value FROM [dbo].[2022_income_Estimate] WHERE Median_Household_income NOT IN (0, 1)

UNION ALL

SELECT 'Total_Poverty_Estimate_Age_5_17' AS Statistic, SUM(ChildrenInPoverty) AS Value FROM USSchoolDistrict WHERE ChildrenInPoverty >= 100

UNION ALL

SELECT 'Mean_Poverty_Estimate_Age_5_17' AS Statistic, AVG(ChildrenInPoverty) AS Value FROM USSchoolDistrict WHERE ChildrenInPoverty >= 100

UNION ALL

SELECT 'StdDev_Poverty_Estimate_Age_5_17' AS Statistic, STDEV(ChildrenInPoverty) AS Value FROM USSchoolDistrict WHERE ChildrenInPoverty >= 100

UNION ALL

SELECT 'Min_Poverty_Estimate_Age_5_17' AS Statistic, MIN(ChildrenInPoverty) AS Value FROM USSchoolDistrict WHERE ChildrenInPoverty NOT IN (0, 1)

UNION ALL

SELECT 'Max_Poverty_Estimate_Age_5_17' AS Statistic, MAX(ChildrenInPoverty) AS Value FROM USSchoolDistrict WHERE ChildrenInPoverty NOT IN (0, 1);