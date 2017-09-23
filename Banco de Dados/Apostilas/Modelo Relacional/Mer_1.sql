CREATE TABLE tbl_Cliente (
  CPF VARCHAR(15) NOT NULL,
  Nome VARCHAR(50) NOT NULL,
  rua VARCHAR(50) NOT NULL,
  cidade VARCHAR(20) NOT NULL,
  PRIMARY KEY(CPF)
);


CREATE TABLE tbl_Conta (
  Nro_conta INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  saldo DECIMAL(9,2) NOT NULL,
  PRIMARY KEY(Nro_conta)
);

CREATE TABLE tbl_Cliente_has_tbl_Conta 
(
  tbl_Cliente_CPF VARCHAR(15) NOT NULL,
  tbl_Conta_Nro_conta INTEGER UNSIGNED NOT NULL,
  Data_transacao DATE NOT NULL,
  PRIMARY KEY(tbl_Cliente_CPF, tbl_Conta_Nro_conta),
  INDEX tbl_Cliente_has_tbl_Conta_FKIndex1(tbl_Cliente_CPF),
  INDEX tbl_Cliente_has_tbl_Conta_FKIndex2(tbl_Conta_Nro_conta)
);





