-- Dim_Csstomer Table Cleaned and and Joined 'City' From Dim_Geography Table [Concat , Case , Join, OrderBy]
SELECT 
  c.[CustomerKey] --,g.[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.[FirstName] as First_Name --,[MiddleName]
  , 
  c.[LastName] as Last_Name, 
  CONCAT(FirstName, ' ', LastName) as [Full Name] --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  --,c.[Gender]
  , 
  Case c.gender When 'M' Then 'Male' when 'F' then 'Female' End as Gender 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  --,[DateFirstPurchase]
  --,[CommuteDistance]
  , 
  g.[City] as [Customer City] -- getting date from Geography table for location
FROM 
  [dbo].[DimCustomer] as c 
  Left Join [dbo].[DimGeography] as g on g.[GeographyKey] = c.[GeographyKey] 
Order By 
  c.CustomerKey; -- ordering the table for neatness
