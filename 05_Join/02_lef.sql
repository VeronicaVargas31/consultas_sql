

select * from users
left join dni
on users.user_id = dni.user_id;


select name, dni_number from users
left join dni
on users.user_id = dni.user_id;

select name, dni_number from dni
left join users
on users.user_id = dni.user_id;


select users.name, languages.name
from users
left join users_languages on users_languages.user_id=users.user_id
left join languages on users_languages.languages_id=languages.languages_id