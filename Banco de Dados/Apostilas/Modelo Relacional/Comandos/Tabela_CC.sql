create table Cliente_Conta
(	CPF varchar(12) not null,
	nro_conta varchar(20) not null,
	data date,
	
	constraint primary key PK_CC(CPF,nro_conta),
	constraint foreign key FK_Cliente(CPF)
		references Cliente(CPF),
	constraint foreign key FK_Conta(nro_conta)
		references Conta(numero_conta)
);