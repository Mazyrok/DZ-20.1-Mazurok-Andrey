create database quatoDZ;
use quatoDZ;

create table car_brands (
Id int auto_increment primary key,
title varchar(30) not null );

insert into car_brands (title)
values
("BMW");

create table car_models (
Id int auto_increment primary key,
carBrandId int not null,
title varchar(30) not null,
foreign key(carBrandId) references car_brands(Id));

insert into car_models (carBrandId, title)
values
(1, "X5");


create table users (
Id int auto_increment primary key,
firstName varchar(30) not null,
lastName varchar(30) not null,
email varchar(30) not null unique,
password varchar(30) not null );

insert into users (firstName, lastName, email, password)
values
("Andrey","Mazurok","kashalot1997@gmail.com","Gibberish341");

create table cars (
Id int auto_increment primary key,
userId int not null,
carBrandId int not null,
carModelId int not null,
mileage int not null,
initialMileage int not null,
foreign key(userId) references users(Id),
foreign key(carBrandId) references car_brands(Id),
foreign key(carModelId) references car_models(Id));

insert into cars (userId, carBrandId, carModelId, mileage, initialMileage)
values
(1, 1, 1, 740, 310);