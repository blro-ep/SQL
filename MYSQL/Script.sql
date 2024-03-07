SELECT p.first_name, p.last_name, s.skill  FROM person p , profilelanguage p3, gender g, skill s , personskills p2 
WHERE p.ref_id_gender = g.id 
AND p.ref_id_profilelanguage = p3.id 
AND p2.ref_id_skill = s.id 
AND p.id = p2.ref_id_person