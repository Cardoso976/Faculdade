CREATE DATABASE lista_02;

USE lista_02;

CREATE TABLE Funcionarios(
	codigof int PRIMARY KEY NOT NULL,
	primeiro_nome nvarchar(25),
	segundo_nome nvarchar(25),
	ultimo_nome nvarchar(25),
	DataNasci date,
	cpf nvarchar(16),
	rg nvarchar(16),
	endereco nvarchar(50),
	cep nvarchar(10),
	cidade nvarchar(100),
	fone nvarchar(25),
	codigo_departamento numeric,
	funcao nvarchar(25),
	salario decimal(9,2)
);

CREATE TABLE Departamentos(
	codigod int PRIMARY KEY,
	nome nvarchar(75),
	localizacao nvarchar(75)
);

INSERT INTO Funcionarios VALUES (codigof, primeiro_nome,segundo_nome,ultimo_nome,DataNasci,cpf,rg,endereco,cep,cidade,fone,codigo_departamento,funcao,salario)
(1,'Rodrigo','Garcia','Cardoso','1997-11-11','440.194.038-56','47.852.899-x','Rua Maceió 407', '17.400-000','Garça','143471-2009',38,'WebMaster III',8500,59)
(2,'Laura','Garcia','Cardoso','2000-09-20','440.100.058-36','47.852.899-x','Rua Maceió 407', '17.400-000','Garça','143471-2009',38,'WebMaster III',8500,59)
(3,'Valmir','Garcia','Cardoso','1997-11-11','127.512.098-41','23.015.778-6','Rua Maceió 407', '17.400-000','Garça','143471-2009',38,'WebMaster III',20000,20)
(4,'Adenir','Garcia','Cardoso','197106-26-','123.456.038-56','47.852.899-x','Rua Maceió 407', '17.400-000','Garça','143471-2009',38,'WebMaster III',1500,02)
(5,'Jonatan','Torres','Arenas','199801-20-','423.970.478-29','45.675.855-0','Rua Ferralópolis', '17.505-260','Marília','143471-2009',38,'Autonomo',2000,02)
(6,'Vinicius','Alexandre','Souza','1997-06-28','448.443.538-10','49.825.179-2','Rua Francisco Coelho','17.511-397','Garça','143471-2009',38,'Mininin do TI',8500,59);
