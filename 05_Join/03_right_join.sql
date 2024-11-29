select * from users
right join dni
on users.user_id = dni.user_id;

select name, dni_number from users
right join dni
on users.user_id = dni.user_id;

select name, dni_number from dni
right join users
on users.user_id = dni.user_id;


select users.name, languages.name
from users
right join users_languages on users_languages.user_id=users.user_id
right join languages on users_languages.languages_id=languages.languages_id