USE loja;

DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes(
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(30),
    email VARCHAR(30),
    senha VARCHAR(15),
    PRIMARY KEY (codigo)
);


INSERT INTO clientes (nome, endereco, cidade, estado, email, senha)
VALUES ('Rosana Garcia','Rua Flor de Lis','Avencas','São Paulo','rogarcia@hotmail.com.br','2801');

INSERT INTO clientes (nome, endereco, cidade, estado, email, senha)
VALUES ('João Victor do Santos Cruz','Rua Vidal de Negreiros','Marília','São Paulo','v17joao@gmail.com','34543638');

INSERT INTO clientes (nome, endereco, cidade, estado, email, senha)
VALUES ('Santissíma Trindade','Trono','Céu','Eternidade','leaocordeiro@sky.com.br','amém');
