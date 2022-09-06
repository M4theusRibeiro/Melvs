create database melvs;
use melvs;

create table cadastro_cliente (
	idCadastro int primary key auto_increment,
    nome_responsavel varchar(35) not null,
    nome_empresa varchar(35) not null,
    cnpj varchar(18) not null,
    email varchar(35) not null, constraint chkEmail check(email like '%@%'),
    senha varchar(20) not null,
    estado_cidade varchar(45),
    endereco varchar(255)
);

select * from cadastro_cliente;
insert into cadastro_cliente (nome_responsavel, nome_empresa, cnpj, email, senha, estado_cidade, endereco) values 
('Rafael', 'SojaTech', '12.193.678/1234-11', 'rafael.sojatec@uol.com', 'rst958', 'SP / Indaiatuba', null),
('Vitor', 'Vivando', '98.765.432/1342-13', 'vitor.vivando@gmail.com', '#Vi8571', 'MG / Belol Horizonte', 'R. Marinho Gomes N° 123'),
('Rodrigo Santos', 'Sojais', '52.555.968/9841-35', 'rodrigo.santos@gmail.com', '19530512','MT / Sorriso', null);

 ----------------------------------------------------------------------------------------------------------------------------------------- 
 
 create table sensor(
	idSensor int primary key auto_increment,
    horario datetime,
    temperatura double,
    umidade double
 );
 
 Insert into sensor (horario, temperatura, umidade)values 
('2022-09-05 16:10:21', 23.11, 12),
('2022-09-05 15:08:54', 19.53, 16);

select * from sensor;