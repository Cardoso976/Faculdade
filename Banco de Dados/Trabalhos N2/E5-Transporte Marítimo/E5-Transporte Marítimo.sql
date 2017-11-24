CREATE DATABASE Transporte_Maritimo;

USE Transporte_Maritimo;

CREATE TABLE Navio(
	Nome varchar(45) PRIMARY KEY,
	Capacidade decimal(9,2)	
);

CREATE TABLE Porto(
	Nome varchar(45) PRIMARY KEY
);

CREATE TABLE Rota(
	Navio_Nome varchar(45),
	Porto_Nome varchar(45),
	Data_Maxima_Desenbarque date,
	CONSTRAINT PRIMARY KEY (Navio_Nome, Porto_Nome),
	CONSTRAINT fk_Navio_Nome FOREIGN KEY (Navio_Nome) REFERENCES Navio(nome),
	CONSTRAINT fk_Porto_Nome FOREIGN KEY (Porto_Nome) REFERENCES Porto(nome)
);

CREATE TABLE Agente(
	codigo int,
	nome varchar(45),
	Porto_Nome varchar(45),
	CONSTRAINT PRIMARY KEY (codigo),
	CONSTRAINT fk_Porto_N FOREIGN KEY (Porto_Nome) REFERENCES Porto(Nome)
);

CREATE TABLE Carga(
	numero int NOT NULL,
	peso decimal(9,2),
	Agente_codigo int,	
	Navio_Nome varchar(45),
	Porto_Nome varchar(45),
	CONSTRAINT PRIMARY KEY (numero),
	CONSTRAINT fk_Carga_Agente FOREIGN KEY (Agente_codigo) REFERENCES Agente (codigo),
	CONSTRAINT fk_Carga_Navio FOREIGN KEY (Navio_Nome) REFERENCES Navio(Nome),
	CONSTRAINT fk_Carga_Porto FOREIGN KEY (Porto_Nome) REFERENCES Porto(Nome)
);

CREATE TABLE Sensivel(
	Carga_numero int,
	temperatura_maxima decimal(9,2),
	CONSTRAINT PRIMARY KEY (Carga_numero),	
	CONSTRAINT fk_Sensivel_Carga FOREIGN KEY (Carga_numero) REFERENCES Carga(numero)
);

CREATE TABLE Perecivel(
	Carga_numero int,
	data_validade date,	
	CONSTRAINT PRIMARY KEY (Carga_numero),
	CONSTRAINT fk_Perecivel_Carga FOREIGN KEY (Carga_numero) REFERENCES Carga(numero)
);