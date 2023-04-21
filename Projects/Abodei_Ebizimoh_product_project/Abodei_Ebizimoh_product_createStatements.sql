drop database if exists productdb;
create database productdb;

use productdb;

create table product(
    productId integer not null primary key,
    name varchar(24) not null,
    model integer not null,
    amount integer not null,
    price integer not null
);

drop user if exists 'olivia'@'localhost';
create user 'olivia'@'localhost' identified by 'x5RL7Etb';
grant all privileges on productdb.* to 'administrator'@'localhost';

