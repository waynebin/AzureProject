-- Calculate the poverty rate and join with median household income
WITH PovertyRates AS (
    SELECT 
        usd.State_Postal_Code,
        usd.District_ID,
        usd.School_District,
        usd.Estimated_Population_5_17,
        usd.ChildrenInPoverty,
        (usd.ChildrenInPoverty * 1.0 / usd.Estimated_Population_5_17) * 100 AS PovertyRate,
        inc.Median_Household_Income
    FROM 
        dbo.USSchoolDistrict usd
    JOIN 
        dbo.[2022_income_Estimate] inc
    ON 
        usd.State_Postal_Code = inc.Postal_Code
    WHERE 
        usd.Estimated_Population_5_17 > 0 -- To avoid division by zero
)


SELECT 
    Median_Household_Income,
    PovertyRate,
    State_Postal_Code
FROM 
    PovertyRates;