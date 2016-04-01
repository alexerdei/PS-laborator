use Tema1_Bank

CREATE TABLE Users
(
user_name varchar(50) NOT NULL,
password_u varchar(20) NOT NULL,
type_u varchar(20) NOT NULL,
full_name varchar(50) NOT NULL,
PRIMARY KEY (user_name)
);

CREATE TABLE Operation_inf
(
id_operation int NOT NULL,
user_name varchar(50) NOT NULL,
date_op date,
type_operation varchar(40) NOT NULL,
PRIMARY KEY (id_operation)
);  

CREATE TABLE Client_Information
(
Name varchar(50) NOT NULL,
CNP varchar(13) NOT NULL,
Adress varchar(50) NOT NULL,
Telefon varchar(10),
[e-mail] varchar(30),
PRIMARY KEY (CNP)
); 

CREATE TABLE Client_Information
(
ID_number varchar(50) NOT NULL,
type varchar(10) NOT NULL,
amount_of_money int NOT NULL,
ID_Client varchar(13),
dateCreation date,
PRIMARY KEY (ID_number)
);   

USE Client_Information;
GO
ALTER TABLE Client_Information 
ADD CONSTRAINT FK_TempClient_Information FOREIGN KEY (CNP) 
    REFERENCES Client_Account (ID_client) 
    ON DELETE CASCADE
    ON UPDATE CASCADE
;
GO

insert into Users values ('B', '1', 'C')
select * from Users

insert into Client_Information values ('Erdei Alexandru', '1921231133321', 'Zorilor, Cluj-Napoca', '0726080133', 'cucu@yahoo.com') 
select * from Client_Information

insert into Client_Account (ID_number, [type], amount_of_money) 
values ('321456', 'card', 50)
select * from Client_Account

