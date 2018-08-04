DROP DATABASE IF EXISTS burgers_db;
CREATE DATABASE burgers_db;
USE burgers_db;

CREATE TABLE burgers(
id int NOT NULL AUTO_INCREMENT,
burger_name varchar(255) NOT NULL,
devoured BOOL DEFAULT false,
PRIMARY KEY (id)
);

INSERT INTO burgers(burger_name, devoured)
VALUES("cheese burger", FALSE);

INSERT INTO burgers(burger_name, devoured)
VALUES("Bacon Cheeseburger", FALSE);


INSERT INTO burgers(burger_name, devoured)
VALUES(" 'The Pound of Heaven' burger", FALSE);

INSERT INTO burgers(burger_name, devoured)
VALUES(" 'The Challenge' burger", FALSE);

