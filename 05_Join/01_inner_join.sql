--se queda con la tabla del medio


--relacion 1:1
select * from users
inner join dni;


select * from users
inner join dni
on users.user_id =dni.user_id;


select * from users
join dni
on users.user_id =dni.user_id;


select * from users
inner join dni
on users.user_id =dni.user_id;

--relacion 1:n

select * from users 
join companies 
on users.company_id = companies.company_id;

select * from companies
join users
on users.company_id = companies.company_id;


select * from companies
join users
on users.company_id = companies.company_id;

--relacion n:m
select companies.name, users.name from companies
join users 
on companies.company_id = users.company_id;


select users.name, languages.name
from users_languages
join users on users_languages.user_id=users.user_id
join languages on users_languages.languages_id=languages.languages_id


select users.name, languages.name
from users
join users_languages on users_languages.user_id=users.user_id
join languages on users_languages.languages_id=languages.languages_id


