-- cleaned Dim_Product table(is null , multiple join , order by)
SELECT  p.[ProductKey]
      ,p.[ProductAlternateKey] as Model_No
     -- ,[ProductSubcategoryKey]
     -- ,[WeightUnitMeasureCode]
    --  ,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as Prod_Name
	  , ps.[EnglishProductSubcategoryName] as Prod_sub_catagory
	  , pc.[EnglishProductCategoryName] as Prod_Catagory
    --  ,[SpanishProductName]
    --  ,[FrenchProductName]
    --  ,[StandardCost]
    --  ,[FinishedGoodsFlag]
     ,p.[Color] as Product_color
    --  ,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] as Product_Size
      --,[SizeRange]
      --,[Weight]
   --   ,[DaysToManufacture]
    ,p.[ProductLine] as Product_line
      -- ,P.[DealerPrice] as  Price
    --  ,[Class]
    --  ,[Style]
      ,p.[ModelName]
    --  ,[LargePhoto]
      ,p.[EnglishDescription]
    --  ,[FrenchDescription]
    --  ,[ChineseDescription]
    --  ,[ArabicDescription]
    --  ,[HebrewDescription]
    --  ,[ThaiDescription]
    --  ,[GermanDescription]
    --  ,[JapaneseDescription]
    --  ,[TurkishDescription]
   --   ,[StartDate]
   --   ,[EndDate]
      ,ISNULL(p.status , 'outdated') as product_status
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as p
  LEFT JOIN [AdventureWorksDW2019].[dbo].DimProductSubcategory as ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey
  left join [AdventureWorksDW2019].[dbo].DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey ;
 -- [AdventureWorksDW2019].