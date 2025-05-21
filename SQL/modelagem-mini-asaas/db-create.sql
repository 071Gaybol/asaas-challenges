/*passo 1: Criar o banco de dados*/
CREATE SCHEMA mini_asaas;

/*Passo 2: Criar a tabela de clientes*/
CREATE TABLE clientes (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
cpf_cnpj VARCHAR(14),
tipo_cliente ENUM('pagador', 'dono', 'ambos'),
email VARCHAR(255),
telefone VARCHAR(15),
endereco VARCHAR(255));

/*Passo 3: Criar a tabela de cobranças*/
CREATE TABLE cobrancas (
id INT AUTO_INCREMENT PRIMARY KEY,
pagador_id INT,
dono_id INT,
valor DECIMAL(10,2),
descricao VARCHAR(255),
data_vencimento DATE,
status ENUM('pendente', 'pago', 'cancelado'),
FOREIGN KEY (pagador_id) REFERENCES clientes(id),
FOREIGN KEY (dono_id) REFERENCES clientes(id)
);