create database Questao2;

use Questao2;

create table Estoque (
Id int auto_increment primary key,
produto varchar(255) not null,
quantidade int not null
);

insert into Questao2.Estoque(produto,quantidade) values
('PROD1','10'),
('PROD2','3'),
('PROD3','15'),
('PROD4','20'),
('PROD5','4');

select*from Questao2.Estoque;

CREATE VIEW vw_estoque_insuficiente AS
SELECT produto, quantidade
FROM Estoque
WHERE quantidade < 5;

select*from vw_estoque_insuficiente;


