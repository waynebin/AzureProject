IF OBJECT_ID('StatePopulationComparisonView', 'V') IS NOT NULL
   DROP VIEW StatePopulationComparisonView;
GO

CREATE VIEW StatePopulationComparisonView AS
SELECT 
    State_Postal_Code,
    SUM([ChildrenInPoverty]) AS Total_Estimated_Youth_Poverty,
    SUM(Estimated_Population_5_17) AS State_Children_Population
FROM 
    USSchoolDistrict
GROUP BY 
    State_Postal_Code;
GO

SELECT 
    State_Postal_Code, 
    Total_Estimated_Youth_Poverty,
    State_Children_Population
FROM 
    StatePopulationComparisonView;
GO
