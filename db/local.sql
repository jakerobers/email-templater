DROP TABLE users;
DROP TABLE templates;

CREATE TABLE users (
	user_id integer PRIMARY KEY,
	email varchar(50),
	username varchar(50),
	password varchar(50),
	registration_ip varchar(45),
	last_ip varchar(45),
	date_added date,
	date_modified date
);

CREATE TABLE templates (
	template_id integer PRIMARY KEY,
	creator_id integer,
	email_content text,
	title varchar (25),
	description varchar(140),
	tags json,
	date_added date,
	date_modified date
);