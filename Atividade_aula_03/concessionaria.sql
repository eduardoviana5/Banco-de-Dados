create table carro(
  id int primary key,
  modelo varchar(80),
  cor varchar(20),
  preco double,
  placa char(7)
);

create table cliente(
  id int primary key,
  nome varchar(100),
  cpf char(14),
  email varchar(100),
  endereco text,
  data_nasc date,
  telefone char(14)
);

create table venda(
  id int primary key,
  cliente_id int,
  carro_id int,
  data_venda date,
  foreign key (cliente_id) references cliente(id),
  foreign key (carro_id) references carro(id)
);

insert into carro values(1, 'HB20', 'Branco', 49.9, 'abc1234');
insert into cliente values(1, 'Eduardo', '123.456.789-00', 'eduardo@gmail.com', 'Brotas, nº30', '2002-05-05', '(71)91234-5678');
insert into venda values(1,1,1, '2026-02-25');

select * from carro;
select * from cliente;
select * from venda;
