DROP TABLE User;
DROP TABLE Self_esteem_development_program;
DROP TABLE Poetic_literature;

CREATE TABLE User ( -- таблиця користувачів
	user_id INT(5) PRIMARY KEY, -- id 
	username VARCHAR(24) UNIQUE, -- ім'я користувача
	email VARCHAR(64), -- електронна адреса
	photo_of_user BINARY(1) -- зображення
);

CREATE TABLE Self_esteem_development_program ( -- таблиця програми розвитку самоповаги
	s_f_program_id INT(5) PRIMARY KEY, -- id 
	name_s_f_prog VARCHAR(32), -- назва програми
	description_ VARCHAR(1024), -- опис програми
	link VARCHAR(256), -- посилання
    user_id INT(5), -- fk
  	FOREIGN KEY (user_id) REFERENCES User(user_id)
);
 
 CREATE TABLE Poetic_literature ( -- таблиця списків поетичної літератури
	poetic_literature_id INT(5) PRIMARY KEY, -- id
    name_poe_lit VARCHAR(32), -- назва поетичної літератури
    genre VARCHAR(32), -- жанр
    author VARCHAR(32), -- автор
    rating FLOAT(4, 2), -- значення рейтингу
    description_ VARCHAR(1024), -- опис поетичної літератури
    link VARCHAR(256), -- посилання
    user_id INT(5), -- fk
   	FOREIGN KEY (user_id) REFERENCES User(user_id),
   	CHECK ( rating between 0 and 10 )
);

-- обмеження вмісту стовпчика таблиці
ALTER TABLE User ADD CONSTRAINT email_template
    CHECK ( regexp_like(email, 
	          '^([a-z0-9][a-z0-9._-]*@[a-z][a-z0-9._-]*\.[a-z]{2,4})$'));