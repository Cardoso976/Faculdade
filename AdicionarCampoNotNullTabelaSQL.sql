alter table usuario add id_perfil int null
alter table usuario add FOREIGN KEY (id_perfil) references perfil(id)
insert into perfil (nome, ativo) values ('Gerente', 1)
update usuario set id_perfil = 1
alter table ususario alter column id_perfil int not null
