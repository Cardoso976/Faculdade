

CREATE TABLE pacientes(
	codp int PRIMARY KEY NOT NULL,
	nome varchar(40) NOT NULL,
	idade int(2) NOT NULL,
	cidade varchar(30) NOT NULL,
	cpf varchar(20) UNIQUE, 
	doenca varchar(40) NOT NULL
);
