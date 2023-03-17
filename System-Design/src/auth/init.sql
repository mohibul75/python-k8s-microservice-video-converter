CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Aauth23';

CREATE DATABASE auth;

GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

USE auth;

CREATE TABLE user(
    id INT NOT NULL AUTO_INCRIMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE ,
    pass VARCHAR(255) NOT NULL
);

INSERT INTO user (email, pass) VALUES ('purbo7512@gmail.com','Admin123');