SELECT release_year, COUNT(*) AS Anzahl  FROM  film f 
GROUP BY release_year ORDER BY Anzahl DESC