create database Melvs; 
use Melvs; 

create table Cliente( 
idCliente int primary key auto_increment, 
NomeEmpresa varchar(50), 
ResponsavelEmpresa varchar(50), 
Email varchar(255), 
CNPJ varchar(20), 
Estado varchar(40), 
Cidade varchar(40), 
Endereço varchar(255), 
Complemento varchar(255) default 'Não especificado', 
CEP varchar(15)); 

create table Sensor( 
idSensor int primary key auto_increment, 
SensorData date, 
Temperatura decimal(4,2), 
Umidade decimal(4,2)); 

insert into Cliente (NomeEmpresa,ResponsavelEmpresa,Email,CNPJ,Estado,Cidade,Endereço,Complemento,CEP) values 
('Fazenda do tio Zé','José almeida','zedafazenda@gmail.com','1294129401/0001','Minas Gerais','Aquela lá','rua das fazendas','','4002-8922'); 

insert into Sensor(SensorData,Temperatura,Umidade) values 
('2022-08-24',25.00,12.00);     

select * from Sensor; 
select * from Cliente; 