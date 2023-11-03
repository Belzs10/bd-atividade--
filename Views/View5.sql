create database Questao5;

use Questao5;

create table Pedidos (
Id int auto_increment primary key,
nome_ped varchar(255) not null,
statuss text not null
);

insert into Questao5.Pedidos(nome_ped,statuss) values
('Ped1','Entregue'),
('Ped2','Pendente'),
('Ped3','Entregue');

CREATE VIEW vw_pedidos_pendentes AS
SELECT Id, nome_ped
FROM Pedidos
WHERE statuss = 'Pendente';

select*from vw_pedidos_pendentes;