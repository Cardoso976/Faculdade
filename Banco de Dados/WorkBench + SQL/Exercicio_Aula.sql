CREATE TABLE ambulatorios (
	nroa int PRIMARY KEY NOT NULL,
	andar numeric(3) NOT NULL,
	capacidade smallint
);

CREATE TABLE medicos(
	codm int PRIMARY KEY NOT NULL,
	nome varchar(40) NOT NULL,
	idade smallint NOT NULL, 
	especialidade char(20),
	cpf varchar(20) UNIQUE NOT NULL,
	nroamb int NOT NULL,
	CONSTRAINT FOREING KEY fk_ambulatorios(nroamb) REFERENCES ambulatorios(nroa)
);

CREATE TABLE pacientes(
	codp int PRIMARY KEY NOT NULL,
	nome varchar(40) NOT NULL,
	idade int(2) NOT NULL,
	cidade varchar(30) NOT NULL,
	cpf varchar(20) UNIQUE, 
	doenca varchar(40) NOT NULL
);

CREATE TABLE funcionarios(
	codf int PRIMARY KEY NOT NULL,
	nome varchar(40) NOT NULL,
	idade smallint,
	cpf varchar(20) NOT NULL UNIQUE,
	cidade varchar(30),
	salario numeric(10),
	cargo varchar(20)
);

CREATE TABLE consultas(
	codm int,
	codp int,
	data date,
	hora time,
	CONSTRAINT PRIMARY KEY(codm, data, hora),
	CONSTRAINT FOREING KEY fk_medicos(codm) REFERENCES medicos(codm),
	CONSTRAINT FOREING KEY fk_pacientes(codp) REFERENCES pacientes(codp)
);