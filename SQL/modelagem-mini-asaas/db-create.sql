/*passo 1: Criar o banco de dados*/
CREATE SCHEMA mini_asaas;

/*Passo 2: Criar a tabela de clientes e pagadores*/
CREATE TABLE pagadores (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cpf_cnpj VARCHAR(14) NOT NULL,
person_type VARCHAR(255) NOT NULL,
email VARCHAR(255),
telefone VARCHAR(15),
endereco VARCHAR(255));

CREATE TABLE clientes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cpf_cnpj VARCHAR(14) NOT NULL,
person_type VARCHAR(255) NOT NULL,
email VARCHAR(255),
telefone VARCHAR(15),
endereco VARCHAR(255));

/*Passo 3: Criar a tabela de cobranças*/
CREATE TABLE cobrancas (
id INT AUTO_INCREMENT PRIMARY KEY,
pagador_id INT NOT NULL,
cliente_id INT NOT NULL,
valor DECIMAL(10,2) NOT NULL,
descricao VARCHAR(255),
data_vencimento DATE NOT NULL,
status VARCHAR(255) NOT NULL,
FOREIGN KEY (pagador_id) REFERENCES pagadores(id),
FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);