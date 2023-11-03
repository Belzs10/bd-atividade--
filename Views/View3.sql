create database Questao3;

use Questao3;

create table Relacionamento (
Id int auto_increment primary key,
nome_cliente varchar(255) not null,
nome_vendedor varchar(255) not null,
Rel_Clie_Vend text not null
);

insert into Questao3.Relacionamento(nome_cliente, nome_vendedor,Rel_Clie_Vend) values
('Alex','Vend1','Avaliação: Boa'),
('Lisa', 'Vend2','Avaliação Regular'),
('Carla','Vend3', 'Avaliação: Muito Boa'),
('Beto','Vend4','Avaliação: Ruim');

create view vw_relacionamento_cliente_vendedor AS
select nome_cliente, nome_vendedor, Rel_Clie_Vend
FROM Relacionamento R
where id = 2;

SELECT * FROM vw_relacionamento_cliente_vendedor;
