CREATE DATABASE lista_02;

USE lista_02;

CREATE TABLE Funcionarios(
	Codigof int PRIMARY KEY NOT NULL,
	PrimeiroNome nvarchar(25),
	SegundoNome nvarchar(25),
	UltimoNome nvarchar(25),
	DataNasci date,
	CPF nvarchar(16),
	RG nvarchar(16),
	Endereco nvarchar(50),
	CEP nvarchar(10),
	Cidade nvarchar(100),
	Fone nvarchar(25),
	CodigoDepartamento numeric,
	Funcao nvarchar(25),
	Salario decimal(9,2)
);

CREATE TABLE Departamentos(
	codigod int PRIMARY KEY,
	nome nvarchar(75),
	localizacao nvarchar(75)
);

ALTER TABLE Departamentos
ADD (CodigoFuncionarioGerente numeric);

ALTER DATABASE lista_02 
CHARSET = UTF8 
COLLATE = utf8_general_ci;

INSERT INTO funcionarios (Codigof, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario)
VALUES 
(1,'Rodrigo','Garcia','Cardoso','1997-11-11','440.194.038-56','47.852.899-x','Rua Maceió 407','17.400-000','Garça','143471-2009',38,'WebMaster',8500.59),
(2,'Laura','Garcia','Cardoso','2000-09-20','440.100.058-36','47.852.899-x','Rua Maceió 407','17.400-000','Garça','143471-2009',38,'Médica',1445.59),
(3,'Valmir','Garcia','Cardoso','1997-11-11','127.512.098-41','23.015.778-6','Rua Maceió 407','17.400-000','Garça','143471-2009',38,'PRF',20000.20),
(4,'Adenir','Garcia','Cardoso','1971-06-26','123.456.038-56','47.852.899-x','Rua Maceió 407','17.400-000','Garça','143471-2009',38,'Dona de Casa',1500.02),
(5,'Jonatan','Torres','Arenas','1998-01-20','423.970.478-29','45.675.855-0','Rua Ferralópolis','17.505-260','Marília','143471-2009',38,'Autonomo',2000.02),
(6,'Vinicius','Alexandre','Souza','1997-06-28','448.443.538-10','49.825.179-2','Rua Francisco Coelho','17.511-397','Marília','143471-2009',38,'Mininin do TI',1300.50);
