select Nom_marq, Nom_mode, Type_typeA
from t_article a
inner join t_typeArticle ta ON ta.id_typeArticle = a.FK_typeArticle
left join t_modele mo ON mo.id_modele = a.FK_modele
inner join t_marque ma ON ma.id_marque = mo.FK_marque;
--
-- where Nom_marq = "Apple";