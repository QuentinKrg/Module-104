-- Exemple requetes avec tous les opérateurs --
SELECT * FROM t_emplacement WHERE Batiment_empl LIKE 'Lausanne' ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE Batiment_empl LIKE '%Provence%' ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE Batiment_empl NOT LIKE 'Lausanne' ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE NumBureau_empl = 5849 ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE NumBureau_empl != 5849 ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE Batiment_empl REGEXP 'Laus' ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE Batiment_empl NOT REGEXP 'anne' ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE NumBureau_empl IN (5849, 1514) ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE NumBureau_empl NOT IN (5849, 1514) ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE id_emplacement BETWEEN 0 AND 2 ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE NumBureau_empl NOT BETWEEN 5000 AND 6000 ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE NumBureau_empl IS NULL ORDER BY `Batiment_empl` DESC;
SELECT * FROM t_emplacement WHERE NumBureau_empl IS NOT NULL ORDER BY `Batiment_empl` DESC;


-- Requete pour changer la collation --
SELECT Batiment_empl FROM t_emplacement ORDER BY Batiment_empl COLLATE latin1_german2_ci;

-- Requete pour lier deux tables ensembles --
SELECT * FROM t_personne_article AS T1 
INNER JOIN t_personne AS T2 ON T2.id_personne = T1.FK_personne 
INNER JOIN t_article AS T3 ON T3.id_article = T1.FK_Article;

