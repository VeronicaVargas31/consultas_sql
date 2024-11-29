--NULL representa un valor desconocido, inexistente o no definido. Es diferente de 0 o una cadena vacía ( '') y se utiliza cuando no hay datos disponibles para un campo en particular.

SELECT * FROM users WHERE email IS NULL;

SELECT * FROM users WHERE email IS NOT NULL;

SELECT * FROM users WHERE email IS NOT NULL AND age = 15;

SELECT name, surname, IFNULL(age, 0) AS age FROM users ; 
