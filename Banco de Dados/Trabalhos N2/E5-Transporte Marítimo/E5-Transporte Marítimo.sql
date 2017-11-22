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
	CONSTRAINT fk_Rota_Navio FOREIGN KEY (Navio_Nome) REFERENCES Navio(Nome),
	CONSTRAINT fk_Rota_Porto FOREIGN KEY (Porto_Nome) REFERENCES Porto(Nome)
);

CREATE TABLE Agente(
	codigo int,
	nome varchar(45),
	Porto_Nome varchar(45),
	CONSTRAINT PRIMARY KEY (codigo),
	CONSTRAINT fk_Agente_Porto FOREIGN KEY (Porto_Nome) REFERENCES Porto(Nome)
);

CREATE TABLE Carga(
	numero int NOT NULL,
	peso decimal(9,2),
	Agente_codigo int,
	Agente_Porto_Nome varchar(45),
	Navio_Nome varchar(45),
	CONSTRAINT PRIMARY KEY (numero),
	CONSTRAINT fk_Carga_Agente FOREIGN KEY (Agente_codigo, Agente_Porto_Nome) REFERENCES Agente (codigo, nome),
	CONSTRAINT fk_Carga_Navio FOREIGN KEY (Navio_Nome) REFERENCES Navio(Nome)
);

CREATE TABLE Sensivel(
	Carga_numero int,
	temperatura_maxima decimal(9,2),	
	CONSTRAINT fk_Sensivel_Carga PRIMARY KEY (Carga_numero) REFERENCES Carga(numero)
);

CREATE TABLE Perecivel(
	Carga_numero int,
	data_validade date,	
	CONSTRAINT fk_Sensivel_Carga PRIMARY KEY (Carga_numero) REFERENCES Carga(numero)
);

CREATE TABLE Destino(
	Porto_Nome varchar(45),
	Carga_numero int,
	Carga_Agente_Codigo int,
	Carga_Agente_Porto_Nome varchar(45),
	Carga_Navio_Nome varchar(45),
	data_maxima_desembarque date,
	CONSTRAINT PRIMARY KEY (Porto_Nome, Carga_numero, Carga_Agente_Codigo, Carga_Agente_Porto_Nome, Carga_Navio_Nome),
	CONSTRAINT fk_Destino_Carga FOREIGN KEY (Carga_numero, Carga_Agente_Codigo, Carga_Agente_Porto_Nome, Carga_Navio_Nome) 
	REFERENCES Carga (numero, Agente_codigo, Agente_Porto_Nome, Navio_Nome),
	CONSTRAINT fk_Destino_Porto FOREIGN KEY (Porto_Nome) 
	REFERENCES Porto(Nome)
);