CREATE DATABASE Quest3;

USE Quest3;

CREATE TABLE Produto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  preco DECIMAL(10, 2) NOT NULL,
  estoque INT NOT NULL
);

CREATE TABLE Vendas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  produto_id INT NOT NULL,
  quantidade INT NOT NULL,
  data_venda DATE NOT NULL
);


DELIMITER //

CREATE TRIGGER tr_atualizar_estoque_apos_venda
AFTER INSERT ON Vendas
FOR EACH ROW
BEGIN
    DECLARE produto_id INT;
    DECLARE quantidade_vendida INT;
    
    -- Obter o ID do produto vendido e a quantidade vendida da tabela de vendas
    SELECT NEW.produto_id, NEW.quantidade INTO produto_id, quantidade_vendida;
    
    -- Atualizar o estoque do produto subtraindo a quantidade vendida
    UPDATE Produto
    SET estoque = estoque - quantidade_vendida
    WHERE id = produto_id;
END //

DELIMITER ;