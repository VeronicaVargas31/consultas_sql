 --CASE: Se utiliza para realizar condiciones dentro de una consulta, similar a una estructura IF-ELSE . Permite crear expresiones condicionales para devolver valores diferentes dependiendo de las condiciones que se cumplan.
 
 SELECT *,
 CASE
    WHEN age > 18 THEN 'Es mayor de edad'
	WHEN age = 18 THEN 'Acaba de cumplir la mayoria de edad'
    ELSE 'Es menor de edad'
END AS '¿Es mayor de edade?'
 FROM users; 
 

 
 SELECT *,
 CASE
    WHEN age > 17 THEN True
    ELSE false
END AS '¿Es mayor de edade?'
 FROM users; 