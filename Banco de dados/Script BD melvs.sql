create database projeto_soja; 
use projeto_soja; 

create table cadastro( 
id int primary key auto_increment, 
Nome_responsável varchar(30) not null, 
Nome_empresa varchar(30) not null, 
CNPJ varchar (18) not null, 
Email varchar (30), constraint chkemail check(Email like '%@%'),
Senha varchar (30) not null,
Estado_Cidade varchar (45) not null, 
Endereço varchar(255) default 'Endereço' 
); 
select * from cadastro; 
insert into cadastro (nome_responsável, nome_empresa, CNPJ, Email, Senha, Estado_Cidade, Endereço) values 
('Gilberto', 'Sojeando', '12.345.678/1234-12', 'gilberto.sojeando@uol.com', '#Gf123456', 'MG / Uberlândia', default),
('Vivian', 'Vivando', '98.765.432/1342-13', 'vivian.vivando@gmail.com', '#Vi9876', 'GO / Goiânia', 'R. Marinho Gomes N° 123'),
('Cleber', 'Soja Sempre', '56.677.834/4321-45', 'clebinho.souza@sojasempre.com', 'Cleber@2004', 'GO / Goiânia', default),
('Ashley', 'Farm Soya', '52.555.968/9841-35', 'ashley.smith@farmsoya.com', 'Ash!19012016','MT / Sorriso', default);

 ----------------------------------------------------------------------------------------------------------------------------------------- 

Create table sensor( 
Id int primary key auto_increment, 
Horário Datetime, 
Temperatura double, 
Umidade double 
); 

Insert into sensor (horário, temperatura, umidade)values 
('2022-08-21 12:08:54', 27, 18),
('2022-08-21 13:08:54', 25, 17),
('2022-08-21 14:08:54', 26, 18),
('2022-08-21 15:08:54', 24, 17),
('2022-08-21 16:08:54', 22, 16);

select * from sensor; 
