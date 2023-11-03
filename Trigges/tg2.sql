create database Quest2;

use Quest2;

CREATE TABLE Produto (
id INT AUTO_INCREMENT PRIMARY KEY,
nome varchar(255) not null,
preco decimal(10,2) not null
 );
 insert into Quest2.Produto(nome,preco) values
('Pr1','110.00'),
('Pr2','120.00');
 
DELIMITER //

CREATE TRIGGER tg_aumentar_preco_produto_before_update
BEFORE UPDATE ON Produto
FOR EACH ROW
BEGIN
  IF NEW.preco > (SELECT preco FROM Produto WHERE id = NEW.id) * 1.10 THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Aumento de preço não permitido';
  END IF;
END //

DELIMITER ;

UPDATE Produto SET preco = 120.00 WHERE id = 1;


