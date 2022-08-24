create database projeto_soja; 
use projeto_soja; 

create table cadastro( 
id int primary key auto_increment, 
Nome_responsável varchar(30) not null, 
Nome_empresa varchar(30) not null, 
CNPJ varchar (18) not null, 
Email varchar (30) constraint chkemail check(Email like '%@%'), 
Estado_Cidade varchar (45) not null, 
Endereço varchar(255) default 'Endereço' 
); 
select * from cadastro; 
insert into cadastro (nome_responsável, nome_empresa, CNPJ, Email, Estado_Cidade, Endereço) values 
('Gilberto', 'Sojeando', '12.345.678/1234-12', 'gilberto.sojeando@uol.com', 'MG / Uberlândia', default); 

 ----------------------------------------------------------------------------------------------------------------------------------------- 

Create table sensor( 
Id int primary key auto_increment, 
Horário Datetime, 
Temperatura double, 
Umidade double 
); 

Insert into sensor (horário, temperatura, umidade)values 
('2022-08-21 12:08:54', 27, 18);

select * from sensor; 