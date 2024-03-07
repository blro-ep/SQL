SELECT * FROM film f 
WHERE replacement_cost = (SELECT MAX(replacement_cost) FROM film f )




 


