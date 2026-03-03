
CREATE TABLE usuario(
  id INTEGER PRIMARY KEY,
  name varchar(200) NOT NULL,
  cpf char(14) NOT NULL,
  data_nasc date NOT NULL,
  email varchar(200) NOT NULL
);

INSERT INTO usuario VALUES (1, 'Eduardo', '123.456.789-00', '2005-05-05', 'eduardo@gmail.com');
INSERT INTO usuario VALUES (2, 'Julia', '111.222.333-44', '2005-05-05', 'lucas@gmail.com');
INSERT INTO usuario VALUES (3, 'Bruno', '555.666.777-88', '2005-05-05', 'bruno@gmail.com');
INSERT INTO usuario VALUES (4, 'Maria', '222.222.222-22', '2005-05-05', 'maria@gmail.com');


SELECT * FROM usuario; -- aqui posso colocar o nome do atributo no lugar do '*' para puxar algum dado especifico (ex: SELECT name, cpf FROM TESTT)

CREATE TABLE endereco(
  id INT,
  user_id INT,
  endereco varchar(100),
  numero varchar(4),
  cep char(9),
  PRIMARY KEY (id),
  foreign Key (user_id) references usuario(id)
);
  
INSERT INTO endereco VALUES(1,1,'Pituba', '20', '50200-300');
INSERT INTO endereco VALUES(2,2,'Barra', '23', '89300-400');
INSERT INTO endereco VALUES(3,3,'Brotas', '354', '77487-281');
INSERT INTO endereco VALUES(4,4,'Ondina', '187', '42356-789');

select * from endereco;
