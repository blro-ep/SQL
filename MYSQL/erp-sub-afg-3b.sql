SELECT AVG(Anzahl_Bestellungen) AS Durchschnittliche_Bestellungen 
FROM (SELECT k.*, COUNT(b.BestellungenID) AS Anzahl_Bestellungen 
FROM Kunden k 
LEFT JOIN Bestellungen b ON k.KundenID = b.KundenID
GROUP BY k.KundenID) AS Subquery