create database Questao4;

use Questao4;

create table Produtos (
Id int auto_increment primary key,
nome_prod varchar(255) not null,
preco int not null
);

insert into Questao4.Produtos(nome_prod,preco) values
('p1','119'),
('p2','79'),
('p3','39'),
('p4','209');

CREATE VIEW vw_produtos_caros AS
SELECT Id, preco 
FROM Produtos
WHERE preco > 100;

select*from vw_produtos_caros;






