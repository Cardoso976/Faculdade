select 
	'insert into perfil_usuario (id_perfil, id_usuario) values (' +
	convert(varchar, usuario.id_perfil) +', ' + convert(varchar, usuario.id) + ')'
from
	usuario	