delimiter //
create procedure p_all_users()
begin
select * from users;
end//



call p_all_users;


delimiter //
create procedure p_age_users(in age_paran int)
begin
select * from users where age= age_paran;
end//

call p_all_users(30);

drop procedure p_age_users;