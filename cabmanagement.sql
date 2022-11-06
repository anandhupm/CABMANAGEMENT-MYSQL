-- create database cabmanagement; 
-- use cabmanagement
-- CREATE TABLE passenger(id int primary key auto_increment,
-- 						name varchar(50) not null,
--                         user_name  varchar(20) not null,
--                         email varchar(30) not null,
--                         password varchar(20) not null,
--                         mobile int,
--                         address varchar(50),
--                         dob date);
-- CREATE TABLE driver (id int primary key auto_increment,
-- 						name varchar(50) not null,
--                         user_name  varchar(20) not null,
--                         email varchar(30) not null,
--                         password varchar(20) not null,
--                         mobile int,
--                         address varchar(50),
--                         dob date);
-- CREATE TABLE cab(
-- 	cab_no int primary key auto_increment,
--     cab_name varchar(50) not null,
--     cab_desc varchar(50),
--     cab_total_capacity varchar(50));

-- CREATE TABLE cab_schedule(
-- 	id int not null,
--     cab_from int not null,
--     cab_to int not null,
--     travel_date date not null,
--     travel__time time,
--     cost float,
--     foreign key(id) references cab(cab_no));

CREATE TABLE cab_invoice(
	ticket_number bigint primary key not null,
    passenger_id int not null,
    date_of_booking date not null,
    date_of_travel date not null,
    cab_number int not null,
    cab_from varchar(50) not null,
    cab_to varchar(50) not null,
    travel_time time,
    boarding_time time,
    foreign key(cab_number) references cab(cab_no),
    foreign key(passenger_id) references passenger(id));

