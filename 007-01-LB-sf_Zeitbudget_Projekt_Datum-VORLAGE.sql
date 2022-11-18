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
bestimmte Anzahl von Arbeitsstunden (Zeitbudget).
(s. Tabellen Projekt und Projekt_Zeitbudget)
Die Funktion sf_Zeitbudget_Projekt_Datum bekommt als Eingabeparameter
eine ProjektID und ein Datum 
und soll als Rückgabewert die Anzahl von bezahlten Arbeitstunden für den Monat (Zeitbudget), 
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
	
	-- TODO --------
	--SELECT <@ResultVar, sysname, @Result> = <@Param1, sysname, @p1>
	/*
	SELECT-Ergebnis als Variable speichern:
	SET @Zeitbudget = (SELECT * FROM *** WHERE ***)
	*/

	RETURN @Zeitbudget;
END
GO

