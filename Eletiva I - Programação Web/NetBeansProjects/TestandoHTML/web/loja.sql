USE loja;

DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes(
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    endereco VARCHAR(50),
    cidade VARCHAR(30),
    estado CHAR(2),
    email VARCHAR(30),
    senha VARCHAR(15),
    PRIMARY KEY (codigo)
);

INSERT INTO clientes (nome, endereco, cidade, estado, email, senha)
VALUES ( 'Maria', 'Rua Dois', 'Garca', 'SP', 'maria@gmail.com', '1234' );

INSERT INTO clientes (nome, endereco, cidade, estado, email, senha)
VALUES ( 'Carlos', 'Rua do Ipe', 'Garca', 'SP', 'carlos@gmail.com', '2017' );

INSERT INTO clientes (nome, endereco, cidade, estado, email, senha)
VALUES ( 'Ana Clara', 'Avenida', 'Marilia', 'SP', 'ana@gmail.com', '9999' );
