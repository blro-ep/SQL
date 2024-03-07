SELECT * FROM (
SELECT m.AbteilungID, AVG(m.Gehalt) AS Wert  FROM Mitarbeiter m  
GROUP BY m.AbteilungID ) AS test
JOIN Mitarbeiter m2 ON m2.AbteilungID = test.AbteilungID
WHERE m2.Gehalt > test.Wert



SELECT b.KundenID , COUNT(b.KundenID) AS AnzBestellungen FROM Bestellungen b
GROUP BY b.KundenID 


