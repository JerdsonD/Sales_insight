--Create DIM_Date_table  Cleansed and renamed the rows
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date, 
  --,[DayNumberOfWeek]
  [EnglishDayNameOfWeek] as Day --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] as WeekNr, 
  [EnglishMonthName] as Month, 
  LEFT([EnglishMonthName], 3) as MonthShort 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] as MonthNr, 
  [CalendarQuarter] as Quarter, 
  [CalendarYear] as year 
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
where 
  CalendarYear >= 2021
  ;