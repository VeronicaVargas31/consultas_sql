--IN se utiliza en la cláusula WHERE para verificar si un valor pertenece a una lista específica de valores. Es una forma más concisa y legible de escribir Múltiples condiciones con el operador OR .

SELECT * FROM users WHERE name  IN  ('Brais')

SELECT * FROM users WHERE name  IN  ('Brais', 'sara')