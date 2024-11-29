--AND Se usa para combinar varias condiciones, y todas deben ser verdaderas para que se incluyan los registros en el resultado.
--OR Permite combinar condiciones, pero solo una de ellas necesita ser verdadera 
--NOT Se usa para eliminar registros que cumplan una condición específica.

SELECT * FROM users WHERE NOT email = 'sara@gmail.com';

SELECT * FROM users WHERE NOT email = 'sara@gmail.com' AND age = 19;

SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 19;