USE [FirmaUebung]
GO

SELECT ProjektZeitBudget.Jahr, ProjektZeitBudget.Monat, 
	   Projekt.ProjektID, Projekt.Projekt, 
	   Kunden.Nachname, Kunden.Vorname, 
	   ProjektZeitBudget.Budget
FROM ProjektZeitBudget 
	INNER JOIN Projekt 
		ON ProjektZeitBudget.ProjektID = Projekt.ProjektID 
	INNER JOIN Kunden 
		ON Projekt.KundenID = Kunden.KundenID
ORDER BY ProjektZeitBudget.Jahr DESC, ProjektZeitBudget.Monat DESC, Projekt;

SELECT ProjektZeitBudget.Jahr, ProjektZeitBudget.Monat, 
	   Projekt.ProjektID, Projekt.Projekt, 
	   Kunden.Nachname, Kunden.Vorname, 
	   ProjektZeitBudget.Budget
FROM ProjektZeitBudget 
	INNER JOIN Projekt 
		ON ProjektZeitBudget.ProjektID = Projekt.ProjektID 
	INNER JOIN Kunden 
		ON Projekt.KundenID = Kunden.KundenID
WHERE ProjektZeitBudget.ProjektID = 50 -- Pappa Mia
ORDER BY ProjektZeitBudget.Jahr DESC, ProjektZeitBudget.Monat DESC;

SELECT ProjektZeitBudget.Jahr, ProjektZeitBudget.Monat, 
	   Projekt.ProjektID, Projekt.Projekt,
	   Kunden.Nachname, Kunden.Vorname, 
	   ProjektZeitBudget.Budget
FROM ProjektZeitBudget 
	INNER JOIN Projekt 
		ON ProjektZeitBudget.ProjektID = Projekt.ProjektID 
	INNER JOIN Kunden 
		ON Projekt.KundenID = Kunden.KundenID
WHERE ProjektZeitBudget.ProjektID = 50 -- Pappa Mia
		AND Jahr = 2022
ORDER BY ProjektZeitBudget.Jahr DESC, ProjektZeitBudget.Monat DESC;


SELECT ProjektZeitBudget.Jahr, ProjektZeitBudget.Monat, 
	   Projekt.ProjektID, Projekt.Projekt,
	   Kunden.Nachname, Kunden.Vorname, 
	   ProjektZeitBudget.Budget
FROM ProjektZeitBudget 
	INNER JOIN Projekt 
		ON ProjektZeitBudget.ProjektID = Projekt.ProjektID 
	INNER JOIN Kunden 
		ON Projekt.KundenID = Kunden.KundenID
WHERE ProjektZeitBudget.ProjektID = 50 -- Pappa Mia
		AND Jahr = 2022
		AND Monat = 10 
--ORDER BY ProjektZeitBudget.Jahr DESC, ProjektZeitBudget.Monat DESC;


SELECT --ProjektZeitBudget.Jahr, ProjektZeitBudget.Monat, 
	   --Projekt.ProjektID, Projekt.Bezeichnung AS Projekt, 
	   --Kunden.Nachname, Kunden.Vorname, 
	   ProjektZeitBudget.Budget
FROM ProjektZeitBudget 
	--INNER JOIN Projekt 
	--	ON ProjektZeitBudget.ProjektID = Projekt.ProjektID 
	--INNER JOIN Kunden 
	--	ON Projekt.KundenID = Kunden.KundenID
WHERE ProjektZeitBudget.ProjektID = 50 -- Pappa Mia
AND Jahr = 2022
AND Monat = 10 
--ORDER BY ProjektZeitBudget.Jahr DESC, ProjektZeitBudget.Monat DESC--, Projekt;

SELECT ProjektZeitBudget.Budget
FROM ProjektZeitBudget 
WHERE ProjektZeitBudget.ProjektID = 50 -- Pappa Mia
AND Jahr = 2022
AND Monat = 10;