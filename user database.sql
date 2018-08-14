create database credit_card;

show databases;

use credit_card;

create table user(
	id int auto_increment not null primary key ,
    first_name varchar(30) not null,
    last_name varchar(30) not null,
    user_name varchar(30) not null unique,
    email varchar(50) not null unique,
    password varchar(50) not null,
    pin_number varchar(30) not null,
    mobile varchar(30) not null,
    date_of_birth varchar(30) not null,
    marital_status varchar(30) not null,
    gender enum('M', 'F') not null,
    current_address varchar(200) not null,
    parmanent_address varchar(200) not null,
    city varchar(30) not null,
    nationality varchar(30) not null,
    profession varchar(30) not null,
    card_type varchar(30) not null,
    security_question1 varchar(30) not null,
    security_question2 varchar(30) not null
);

update user set security_question2 = "7890" where user_name="as";

alter table user add balance double not null;
update user set balance="60000" where user_name="as";

alter table user drop column balance;

select * from user;
select * from transaction;
describe user;
describe transaction;

create table transaction(
	transaction_id int auto_increment primary key,
	userName varchar(30) not null,
    transaction_amount double not null
);

select * from transaction;

alter table transaction
add constraint fk_userName
foreign key(userName) references user(user_name);

drop table user;
drop table transaction;

select * from transaction;


  
  (SELECT transaction_id, transaction_amount 
       FROM transaction where userName='as'
       ORDER BY transaction_id DESC
       LIMIT 10)