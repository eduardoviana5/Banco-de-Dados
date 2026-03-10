create schema universidade;
use universidade;

create table aluno(
matricula char(10) primary key unique,
nome varchar(100),
curso varchar(40),
email varchar(60) unique
);

create table professor(
id char(10) primary key unique,
nome varchar(100),
especializacao varchar(100)
);

create table disciplina(
id char(10)primary key unique,
nome varchar(100),
carga_horaria int,
professor_id char(10),
foreign key (professor_id) references professor(id)
);

create table matricula(
matricula_aluno char(10),
disciplina_id char(10),
semestre date,
foreign key(matricula_aluno) references aluno(matricula),
foreign key(disciplina_id) references disciplina(id)
);
