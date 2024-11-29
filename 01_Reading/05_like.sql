--El operador LIKE se utiliza en la cláusula WHERE para buscar un patrón específico dentro de una columna. % comodin que represeNta cualquier cantidad de caracteres antes o despues.

SELECT * FROM users WHERE email LIKE '%gmail.com';

SELECT * FROM users WHERE email LIKE 'sara%';

SELECT * FROM users WHERE email LIKE '%@%';