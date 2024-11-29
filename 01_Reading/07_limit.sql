--El operador LIMIT en SQL se utiliza para restringir el número de filas que devuelve una consulta. 
--Es útil especialmente cuando necesitas mostrar solo una cantidad específica de resultados, como los primeros 10 registros o la fila con el valor más alto.

SELECT * FROM users LIMIT 3 ;

SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 19 LIMIT 2;

SELECT * FROM users WHERE email IS NOT NULL AND age = 19;