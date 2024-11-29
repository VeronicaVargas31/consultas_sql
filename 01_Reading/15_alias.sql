--lias es un nombre temporal que se le da a una columna o una tabla para hacer que las consultas sean más legibles o para simplificar la escritura. Se utiliza con la palabra clave AS 

SELECT name, init_date AS "Fecha de inicio en programacion" FROM users WHERE age BETWEEN 20 AND 30

SELECT name, init_date AS 'Fecha de inicio en programacion' FROM users WHERE name = 'Brais'


-- CONCAT: se utiliza para combinar dos o más cadenas de texto en una sola.

SELECT CONCAT('Nombre: ', name, ' , Apellidos: ', surname)  FROM users

SELECT CONCAT('Nombre: ', name, ' , Apellidos: ', surname) AS 'Nombre Completo' FROM users