USE [FirmaUebung]
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================

/*
--------- Aufgabestellung ---------
Die Kunden bezahlen monatlich für die eigenen Kundenprojekte eine gute 
bestimmte Anzahl von Arbeitsstunden.
(s. Tabellen Projekt und Projekt_Zeitbudget)
Die Funktion sf_Zeitbudget_Projekt_Datum bekommt als Eingabeparameter
eine ProjektID und ein Datum 
und soll als Rückgabewert die Anzahl von bezahlten Arbeitstunden für den Monat, 
in dem das Datum liegt, liefern.
Sollte nicht gefunden werden, dann NULL durch die Zahl 0 ersetzen
*/

CREATE OR ALTER FUNCTION sf_Zeitbudget_Projekt_Datum 
(
	@ProjektID int,
	@Datum date
)
RETURNS smallint
AS
BEGIN
	DECLARE @Zeitbudget smallint;
		
	SELECT @Zeitbudget = Budget
			FROM dbo.ProjektZeitBudget
			WHERE (ProjektID = @ProjektID)
			AND   (Monat = MONTH(@Datum)) 
			AND   (Jahr = YEAR(@Datum));

	/*
	IF @Zeitbudget IS NULL
		SET @Zeitbudget = 0
	--ELSE
		-- nicht ändern
	
	RETURN @Zeitbudget;
	*/

	RETURN IIF(@Zeitbudget IS NULL, 0, @Zeitbudget);
	/*
	Gibt einen von zwei Werten zurück, abhängig davon, 
	ob der boolesche Ausdruck "true" oder "false" in SQL Server ergibt
	https://docs.microsoft.com/de-de/sql/t-sql/functions/logical-functions-iif-transact-sql?view=sql-server-2017
	*/
END
GO

