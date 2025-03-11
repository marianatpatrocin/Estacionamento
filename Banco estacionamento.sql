create database estacionamento;
use estacionamento;

create table carros(
  id int not null primary key auto_increment,
  placa varchar(10) not null unique,
  modelo varchar(45) not null,
  cor varchar(45) not null
);

insert into carros (placa, modelo, cor)
VALUES ("IYM", "Camaro", "Amarelo");
select * from carros;