CREATE DATABASE Quest4;

USE Quest4;

CREATE TABLE tb_funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cargo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_funcionarios_demitidos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cargo VARCHAR(255) NOT NULL,
  data_demissao DATE NOT NULL
);

-- Criação do trigger para registrar exclusões
DELIMITER //

CREATE TRIGGER tr_exclusao_funcionario
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
    INSERT INTO tb_funcionarios_demitidos (nome, cargo, data_demissao)
    VALUES (OLD.nome, OLD.cargo, NOW());
END //

DELIMITER ;




