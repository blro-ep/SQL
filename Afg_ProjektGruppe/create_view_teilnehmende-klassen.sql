SELECT tk.klasse_name, tk.lehrjahr 
FROM teilnehmende_klassen tk 
GROUP BY tk.lehrjahr , tk.klasse_name 
ORDER BY tk.lehrjahr 


