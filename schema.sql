CREATE DATABASE LoginFailures;

CREATE TABLE Fails ( 
    id int auto_increment, 
    FailDate datetime, 
    FailCount int, 
    primary key(id) 
    );`

GRANT ALL PRIVILEGES ON LoginFailures.* TO 'FailUser'@'localhost' IDENTIFIED BY 'create_a_complex_password_here'`