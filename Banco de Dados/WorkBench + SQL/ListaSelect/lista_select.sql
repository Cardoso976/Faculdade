select PrimeiroNome 
from Funcionarios
order by UltimoNome;

select *
from Funcionarios
order by Cidade;

select * 
from Funcionarios
where Salario > 1000
order by PrimeiroNome, SegundoNome, UltimoNome;

select DataNasci, PrimeiroNome
from Funcionarios
order by DataNasci and PrimeiroNome;

select PrimeiroNome, UltimoNome, Fone, Endereco
from Funcionarios
group by Cidade;

select sum(Salario)
from Funcionarios;

select count(*)
from Funcionarios;

select avg(Salario)
from Funcionarios;