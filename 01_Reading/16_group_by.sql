--GROUP BY se utiliza para agrupar filas que tienen los mismos valores en columnas específicas. Es útil especialmente cuando se aplican funciones de agregación (como SUM , AVG , COUNT , etc.) para obtener resultados resumidos, por grupos.

SELECT MAX(age) FROM users GROUP BY age
 
SELECT COUNT(age) age FROM users GROUP BY age

SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC

SELECT COUNT(age), age FROM users WHERE age > 19 GROUP BY age ORDER BY age ASC