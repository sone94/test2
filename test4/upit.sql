SELECT * FROM prodavci prod INNER JOIN 
proizvodi proiz ON prod.id = proiz.prodavac_id 
INNER JOIN kategorije_proizvodi kp ON proiz.id = kp.id_proizvoda 
INNER JOIN kategorije kat ON kp.id_kategorije = kat.id 