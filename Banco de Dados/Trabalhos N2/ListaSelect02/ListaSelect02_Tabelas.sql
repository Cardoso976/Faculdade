CREATE  DATABASE  Hospital;

USE Hospital;

CREATE TABLE Ambulatorios (
	nroa int PRIMARY KEY NOT NULL,
	andar numeric(3) NOT NULL,
	capacidade smallint
);

CREATE TABLE Medicos(
	codm int PRIMARY KEY NOT NULL,
	nome varchar(40) NOT NULL,
	idade smallint NOT NULL, 
	especialidade char(20),
	CPF varchar(20) UNIQUE,
	cidade varchar(30),
	nroa int,
	CONSTRAINT fk_Ambulatorios FOREIGN KEY (nroa) 
	REFERENCES Ambulatorios(nroa)
);

CREATE TABLE Pacientes(
	codp int PRIMARY KEY NOT NULL,
	nome varchar(40) NOT NULL,
	idade int(2) NOT NULL,
	cidade varchar(30) NOT NULL,
	CPF varchar(20) UNIQUE, 
	doenca varchar(40) NOT NULL
);

CREATE TABLE Funcionarios(
	codf int PRIMARY KEY NOT NULL,
	nome varchar(40) NOT NULL,
	idade smallint,
	CPF varchar(20) UNIQUE,
	cidade varchar(30),
	salario numeric(10),
	cargo varchar(20)
);

CREATE TABLE Consultas(
	codm int,
	codp int,
	data date,
	hora time,
	CONSTRAINT PRIMARY KEY(codm, data, hora),
	CONSTRAINT fk_Medicos FOREIGN KEY (codm) REFERENCES Medicos(codm),
	CONSTRAINT fk_Pacientes FOREIGN KEY (codp) REFERENCES Pacientes(codp)
);