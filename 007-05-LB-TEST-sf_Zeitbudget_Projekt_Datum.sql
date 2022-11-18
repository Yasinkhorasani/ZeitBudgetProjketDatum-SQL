USE [FirmaUebung];
GO
SELECT dbo.sf_Zeitbudget_Projekt_Datum (70, '2020-03-18'); -- Abendkleid designen, 20 Std.
SELECT dbo.sf_Zeitbudget_Projekt_Datum (70, '2020-03-22'); -- 20 Std.
SELECT dbo.sf_Zeitbudget_Projekt_Datum (70, '2020-11-26') AS 'Zeitbudget';  --0 

PRINT dbo.sf_Zeitbudget_Projekt_Datum (50, '2021-11-18'); 

PRINT dbo.sf_Zeitbudget_Projekt_Datum (50, '2022-07-18'); 

PRINT dbo.sf_Zeitbudget_Projekt_Datum (50, '2022-10-22'); 