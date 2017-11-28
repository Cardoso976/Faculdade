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

INSERT INTO Funcionarios (Codigof, PrimeiroNome, SegundoNome, UltimoNome, DataNasci, CPF, RG, Endereco, CEP, Cidade, Fone, CodigoDepartamento, Funcao, Salario)
VALUES 
(1,'Caio','Rodrigo','Vansan Miguel','1997-03-06','446.701.448-78','49.824.907-4','Rua Salvador Mansoleli N45','17511847','Marilia','1499157-3141',1,'desenvolvedor de teste',1000.00),
(2,'Caue','Arthur','Julio Dias','1995-07-25','909.889.084-92','50.753.298-3','Conjunto AR 19 Conjunto 5','73063005','Brasília','6198565-4455',2,'Programador Jr',900.00),
(3,'Diego','Diogo','Oliveira','1993-02-19','655.547.892-69','27.974.880-2','Rua Clemente Bortolotti','83090492','São José dos Pinhais','4199512-8826',3,'Programador Pleno',4000.00),
(4,'Marcelo','Tomas','Carvalho','1975-06-20','312.469.766-92','14.263.178-4','Avenida Sargento Cenil','29904420','Linhares','2798213-4438',4,'Programdor Senior',15000.00),
(5,'Otavio','Matheus','Ricardo monteiro','1995-03-12','655.346.853-28','42.988.248-8','Rua Euclides da Cunha','29190613','Aracruz','2798630-1376',5,'Vendedor',3500.00),
(6,'Alicia','Emanuelly','Gabrielly Almeida','1980-04-23','720.376.271-81','18.444.224-2','Travessa Jean Ruel','08473629','São Paulo','1199379-8720',6,'Gerente',12000.00),
(7,'Lais','Rayssa','Ester','1995-07-26','652.363.222-94','17.031.371-2','Vila Flamengo','59042-263','Natal','84994436801',7,'Recepcionista',2000.00),
(8,'Joana','Stefany','Alicia Mendes','1991-10-08','670.112.465-84','22.877.313-1','Avenida Monazítica','29125305','Vila Velha','2798434-5863',8,'Faxineira',1500.00),
(9,'Milena','Flavia','Raquel Campos','1990-11-17','882.028.238-03','12.344.249-7','Rua 5','77440130','Gurupi','6398337-6130',9,'Suporte nv2',3500.00),
(10,'Sophie','Nina','Costa','1995-05-01','215.697.198-61','11.959.886-3','Rua das Hortencias','89806256','Chapeco','4999444-3163',10,'Suporte nv1',1200.00);

INSERT INTO Departamentos (codigod, nome, localizacao, CodigoFuncionarioGerente)
VALUES
(1,'Teste','Area1',0),
(2,'Estagiario','Area1',0),
(3,'Producao','Area1',0),
(4,'Comercial','Area2',0),
(5,'Gerencial','Area3',1),
(6,'Diretoria','Area4',1),
(7,'Suporte','Area2',0),
(8,'Contabilidade','Predio Externo',0),
(9,'Marketing','Area1',0),
(10,'Redes','Area2',0)