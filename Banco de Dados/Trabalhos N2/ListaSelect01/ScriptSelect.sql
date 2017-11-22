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
order by DataNasci desc;

select PrimeiroNome, UltimoNome, Fone, Endereco
from Funcionarios
order by Cidade;

select sum(Salario) as TotalFolhaDePagamento
from Funcionarios;

select count(*)
from Funcionarios;

select round(avg(Salario),2)
from Funcionarios;