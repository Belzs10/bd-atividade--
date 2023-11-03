
CREATE DATABASE Quest5;

USE Quest5;

-- Criação da tabela de funcionários
CREATE TABLE tb_funcionarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cargo VARCHAR(255) NOT NULL
);

-- Criação da tabela de dependentes
CREATE TABLE tb_dependentes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  funcionario_id INT NOT NULL,
  FOREIGN KEY (funcionario_id) REFERENCES tb_funcionarios(id)
);

-- Criação do trigger para excluir dependentes
DELIMITER //

CREATE TRIGGER tr_excluir_dependentes
AFTER DELETE ON tb_funcionarios
FOR EACH ROW
BEGIN
    DELETE FROM tb_dependentes WHERE funcionario_id = OLD.id;
END //

DELIMITER ;