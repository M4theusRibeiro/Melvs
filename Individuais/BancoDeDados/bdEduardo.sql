create database melvs;

use melvs;

create table clientes (
idCliente int primary key auto_increment,
reponsavel varchar(100) not null,
empresa varchar(100) not null,
CNPJ varchar(18) not null,
email varchar(40), constraint checkEmail check (email like '%@%'),
senha varchar(50) not null,
estado char(2) not null,
cidade varchar(50) not null,
endereco varchar(200) default 'Endereço',
numero varchar(5),
complemento varchar(50) 
);

insert into clientes values
	(null, 'Eduardo', 'AgroSoja', '12.345.678/1234-12', 'eduardo@agro.soja', '0987654321', 'SP', 'Sorocaba', 'Rua dos Patriotas', 55 , null),
	(null, 'Roberto', 'Soja+', '54.335.698/1234-12', 'roberto@soja.mais', '09876263t1djn', 'MT', 'Cuiabá', 'Avenida da Soja', 1001 , null),
	(null, 'Vanderlei', 'PlantaSoja', '12.345.678/1234-12', 'eduardo@agro.soja', 'Vanderlei123', 'SP', 'Extrema', null, null , null);
    
select * from clientes;

create table sensor (
id int primary key auto_increment,
hora datetime,
temperatura double,
umidade double
);

insert into sensor values 
	(null, '2022-01-05 13:30:40', 30, 15),
	(null, '2022-01-05 13:31:40', 28, 17),
	(null, '2022-01-05 13:32:40', 29, 16);
    
select * from sensor;