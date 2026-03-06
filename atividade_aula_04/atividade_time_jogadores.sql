create schema futebol;
use futebol;

create table Jogador(
	id int auto_increment primary key,
    nome varchar(100) not null,
    numero_camisa int not null
);
describe Jogador;

alter table Jogador
add altura decimal(3,2), 
add data_de_nascimento date;
describe Jogador;

drop table Jogador;
SHOW TABLES;

create table Jogador(
id int auto_increment primary key, 
nome varchar(100) not null, 
numero_camisa int not null, 
altura decimal(3,2), 
data_de_nascimento DATE 
);
 describe Jogador; 

insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "Eduardo", 1, 1.80, "2005-05-05" );
insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "Marquinhos", 3, 1.75, "1990-05-01" );
insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "Maldini", 4, 1.76, "1990-06-06" );
insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "Marcelo", 6, 1.77, "1990-04-04" );
insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "Cafu", 2, 1.79, "1990-07-07" );
insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "Casimiro", 5, 1.84, "1990-01-01" );
insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "Kross", 8, 1.82, "2000-02-02" );
insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "Neymar", 11, 1.78, "1992-08-08" );
insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "CR7", 7, 1.88, "1990-09-09" );
insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "Messi", 10, 1.70, "1990-10-10" );
insert into Jogador (nome, numero_camisa, altura, data_de_nascimento) values ( "Suarez", 9, 1.86, "1990-11-11" );
select * from Jogador;

truncate table Jogador;
select * from Jogador;

alter table Jogador modify numero_camisa varchar(3) unique;
alter table Jogador change data_de_nascimento data_nsc date;
describe Jogador;

insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "Eduardo", '1', 1.80, "2005-05-05" );
insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "Marquinhos", '3', 1.75, "1990-05-01" );
insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "Maldini", '4', 1.76, "1990-06-06" );
insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "Marcelo", '6', 1.77, "1990-04-04" );
insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "Cafu", '2', 1.79, "1990-07-07" );
insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "Casimiro", '5', 1.84, "1990-01-01" );
insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "Kross", '8', 1.82, "2000-02-02" );
insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "Neymar", '11', 1.78, "1992-08-08" );
insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "CR7", '7', 1.88, "1990-09-09" );
insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "Messi", '10', 1.70, "1990-10-10" );
insert into Jogador (nome, numero_camisa, altura, data_nsc) values ( "Suarez", '9', 1.86, "1990-11-11" );
select * from Jogador;
