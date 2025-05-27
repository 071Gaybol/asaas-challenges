INSERT INTO clientes (nome, cpf_cnpj, person_type, email, telefone, endereco)
VALUES
  ('João Silva', '12345678901', 'PJ', 'joao@email.com', '48999990001', 'Rua A, 100'),
  ('Maria Souza', '23456789012', 'PJ', 'maria@email.com', '48999990002', 'Rua B, 200'),
  ('Carlos Lima', '34567890123', 'PJ', 'carlos@email.com', '48999990003', 'Rua C, 300'),
  ('Ana Costa', '45678901234', 'PF', 'ana@email.com', '48999990004', 'Rua D, 400'),
  ('Fernanda Rocha', '56789012345', 'PJ', 'fernanda@email.com', '48999990005', 'Rua E, 500');

  INSERT INTO pagadores (nome, cpf_cnpj, person_type, email, telefone, endereco)
VALUES
  ('João Silva', '12345678901', 'PF', 'joao@email.com', '48999990001', 'Rua A, 100'),
  ('Carlos Lima', '34567890123', 'PF', 'carlos@email.com', '48999990003', 'Rua C, 300'),
  ('Ana Costa', '45678901234', 'PF', 'ana@email.com', '48999990004', 'Rua D, 400');



  
INSERT INTO cobrancas (pagador_id, dono_id, valor, descricao, data_vencimento, status)
VALUES
  (1, 2, 150.00, 'Mensalidade sistema', '2025-06-01', 'pendente'),
  (3, 5, 1200.50, 'Projeto especial', '2025-06-15', 'pendente'),
  (4, 2, 750.00, 'Manutenção preventiva', '2025-05-25', 'pendente'),
  (1, 5, 320.00, 'Treinamento equipe', '2025-06-10', 'pendente'),
  (3, 2, 980.90, 'Consultoria técnica', '2025-06-05', 'pendente');