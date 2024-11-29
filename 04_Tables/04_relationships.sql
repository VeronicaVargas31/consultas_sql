--RELACION 1:1

CREATE TABLE dni(
dni_id int AUTO_INCREMENT PRIMARY KEY,
dni_number int NOT NULL,
user_id int,
UNIQUE(dni_id),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

--RELACION 1:N

 CREATE TABLE companies(
    company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL

 );

ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY (company_id) REFERENCES companies(company_id)


--RELACION N:M

create table languages(
languages_id int auto_increment primary key,
name varchar(100) not null
);

CREATE TABLE users_languages(
users_languages_id int AUTO_INCREMENT PRIMARY KEY,
user_id int,
languages_id int,
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(languages_id) REFERENCES languages(languages_id),
UNIQUE (user_id, languages_id)
);


--INSERT DNI 1:1

INSERT INTO dni (dni_number, user_id) VALUES (11111111, 1);
INSERT INTO dni (dni_number, user_id) VALUES (22222222, 2);
INSERT INTO dni (dni_number, user_id) VALUES (33333333, 3);
INSERT INTO dni (dni_number, user_id) VALUES (44444444);

--INSERT COMPANIES  1:n

INSERT INTO companies (name) VALUES ('MoureDev');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');


--INSERT A LOS USARIOS EN QUE EMPRESA ESTA
UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 4;
UPDATE users SET company_id = 1 WHERE user_id = 7;



--

INSERT INTO languages (name) VALUES ('Swift');
INSERT INTO languages (name) VALUES ('Kotlin');
INSERT INTO languages (name) VALUES ('JavaScript');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('Python');
INSERT INTO languages (name) VALUES ('C#');
INSERT INTO languages (name) VALUES ('COBOL');



-- n-m
INSERT INTO users_languages (user_id, languages_id) VALUES (1, 1);
INSERT INTO users_languages (user_id, languages_id) VALUES (1, 2);
INSERT INTO users_languages (user_id, languages_id) VALUES (1, 5);
INSERT INTO users_languages (user_id, languages_id) VALUES (2, 3);
INSERT INTO users_languages (user_id, languages_id) VALUES (2, 2);