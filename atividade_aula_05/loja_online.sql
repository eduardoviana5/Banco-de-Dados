create schema loja_online;
use loja_online;

create table cliente(
id int auto_increment primary key unique,
nome varchar(100),
email varchar(60),
telefone char(14)
);

create table pedido(
id int auto_increment primary key unique,
cliente_id int,
data_pedido varchar(100),
foreign key (cliente_id) references cliente(id)
);

create  table produto(
	id int auto_increment primary key unique,
    nome_produto varchar(60),
    preco double,
    quantidade_estoque int
    );

create table iten_pedido(
produto_id int,
pedido_id int,
produto_preco double,
produto_quantidade int,
foreign key (produto_id) references produto(id),
foreign key (pedido_id) references pedido(id),
foreign key (produto_preco) references produto(preco)
);
