CREATE TABLE `hello_mysql`.`email_history` (
  `email_history_id` INT NOT NULL auto_increment,
  `user_id` INT NOT NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`email_history_id`),
  UNIQUE INDEX `email_history_id_UNIQUE` (`email_history_id` ASC) VISIBLE);


-------------------------
  delimiter |
create trigger tg_email
after update on users
for each row
begin
   if old.email <> new.email then
   insert into email_history(user_id, email)
   values (old.user_id, old.email);
   end if;
end;

|
delimiter ;

UPDATE users SET email = 'mouredev@gmail.com' where user_id = 1


drop trigger tg_email;