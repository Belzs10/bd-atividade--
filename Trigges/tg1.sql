create database Quest1;

use Quest1;

CREATE TABLE Produtos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome varchar(255) not null,
validade date not null
 );
 
DELIMITER //

CREATE TRIGGER tg_validar_data_validade
BEFORE INSERT ON 

Produtos
FOR EACH ROW
BEGIN
    IF NEW.validade < '2023-08-18' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Data de validade vencida';
    END IF;
END //

DELIMITER ;
 
insert into Quest1.Produtos(nome,validade) values
('P1', '2023-08-15'),
('P2', '2022-12-23'),
('P3', '2023-04-23');

