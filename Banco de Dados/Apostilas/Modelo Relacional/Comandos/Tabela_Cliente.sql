create table Cliente
(
	CPF varchar(12) not null,
	nome varchar(50),
	rua varchar(50),
	cidade varchar(20),

	constraint primary key PK_Cliente (CPF)
);