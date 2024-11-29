--HAVING se utiliza para filtrar los resultados de una consulta después de que los datos hayan sido agrupados por la cláusula GROUP BY . Esto permite aplicar condiciones sobre los grupos resultantes de la agregación


SELECT COUNT(age) FROM users HAVING COUNT(age) > 3