/* Cadastrar nova cobrança */
INSERT INTO cobrancas (pagador_id, dono_id, valor, descricao, data_vencimento)
VALUES
  (pagador_id, dono_id, 100.00, 'exemplo_descricao', 'XXXX-XX-XX');

/* Deletar uma cobrança */
DELETE FROM cobrancas
WHERE id = ID;

/* Atualizar uma cobrança */
UPDATE cobrancas
SET column_name = 'new_value'
WHERE id = ID;



 