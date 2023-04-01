-- Cleaning Dim_product Table (
SELECT 
       [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
      ,[SalesOrderNumber]
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
        ,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
     -- ,[DiscountAmount]
      --,[ProductStandardCost]
    --  ,[TotalProductCost]
      ,[SalesAmount]
     --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
  FROM
    [AdventureWorksDW2019].[dbo].[FactInternetSales]
  where
    LEFT ([OrderDateKey] , 4) >= '2011'    -- ensures we always on bring two years of date from extraction,Not enough data so adding it to 2014
Order By
    OrderDateKey asc