SELECT k.KundenID , k.Vorname , k.Nachname , Bestellungen.AnzBestellungen FROM (
SELECT b.KundenID , COUNT(b.KundenID) AS AnzBestellungen FROM Bestellungen b
GROUP BY b.KundenID) AS Bestellungen
JOIN Kunden k ON k.KundenID = Bestellungen.KundenID 


SELECT b.KundenID , b.BestellungenID , COUNT(b.KundenID) AS Anzahl  FROM Bestellungen b 



SELECT (SELECT COUNT(b.KundenID) FROM Bestellungen b) AS totalBesttlungen - (SELECT COUNT(k.KundenID) FROM Kunden k) AS totalKunden 



SELECT COUNT(b.KundenID) FROM Bestellungen b 
SELECT COUNT(k.KundenID) FROM Kunden k  



SELECT 3 + 3 FROM Bestellungen b 




