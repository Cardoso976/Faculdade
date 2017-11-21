INSERT INTO ambulatorios (nroa, andar, capacidade)
VALUES 
	(1,1,30),
	(2,1,50),
	(3,2,40),
	(4,2,25),
	(5,2,55);

INSERT INTO medicos (codm, nome, idade, especialidade, cpf, nroamb)
VALUES 
	(1,'Joao',40,'ortopedia','10000100000','Florianópolis',1),
	(2,'Maria',42,'traumatologia','10000110000','Blumenau',2),
	(3,'Pedro',51,'pediatria','11000100000','São José',2),
	(4,'Carlos',40,'ortopedia','11000110000','Florianópolis',1),
	(5,'Marcia',40,'neurologia','11000111000','Biguacu',3);

INSERT INTO pacientes 
VALUES
	(1,"Ana",20,"Florianópolis","20000020000","gripe"),
	(2,"Paulo",24,"Palhoca","20000220000","fartura"),
	(3,"Lucia",30,"Biguacu","22000200000","tendinite"),
	(4,"Carlos",28,"Joinville","1100110000","sarampo");

INSERT INTO funcionarios (codf, nome, idade, cpf, cidade, salario, cargo)
VALUES
	(1,'Rita',32,'Sao Jose',1200,'20000100000'),
	(2,'Maria',55,'Palhoca',1220,'30000110000'),
	(3,'Caio',45,'Florianópolis',1100,'241000100000'),
	(4,'Carlos',44,'Florianópolis',1200,'51000110000'),
	(5,'Paula',33,'Florianópolis',2500,'61000111000');
