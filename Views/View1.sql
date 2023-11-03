create database Questao1;
use Questao1;

create table Funcionarios (
Id int auto_increment primary key,
nome varchar(255) not null,
cargo varchar(255) not null,
departamento varchar(255) not null
);

insert into Questao1.Funcionarios (nome,cargo,departamento) values
('Alberto', 'gerente', 'Administrativo'),
('Betânia','Analista Sênior', 'T.I'),
('Alexandra','Supervisora','Administrativo'),
('Brunelli','Auxiliar','Administrativo'),
('Kaio','Gerente','Financeiro'),
('Clarice','Diretora', 'Comunicação');

select*from Questao1.Funcionarios;

create view vw_funcionarios_departamento as
select id, nome, cargo
from Funcionarios f
where departamento = 'Administrativo';

select*from vw_funcionarios_departamento;

