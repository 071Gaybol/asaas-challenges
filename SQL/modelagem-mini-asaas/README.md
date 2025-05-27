# 💳 Mini Asaas — Sistema de Gerenciamento de Cobranças

Este projeto é uma simulação de um sistema básico de cobranças, criado como parte da trilha de aprendizado do programa de estágio da empresa Asaas. Ele inclui a estrutura do banco de dados, dados de exemplo e comandos SQL para manipulação.

## 📂 Estrutura do Projeto

```bash
mini-asaas/
│
├── db-create.sql             # Script de criação do banco e tabelas
├── insert_example.sql        # Dados de exemplo para popular o banco         
├── diagrama.png              # Diagrama do banco
└── acoes/
    └── cobrancas-querys.sql  # Exemplos de consultas e manipulação de cobranças
```

## 🛠️ Como utilizar

### 1. Criação do Banco e das Tabelas

Acesse o arquivo `db-create.sql` e execute **cada bloco de código passo a passo**, respeitando a ordem:

- Primeiro, crie o schema e a tabela `clientes`
- Depois, crie a tabela `cobrancas`, que depende da `clientes` por conter chaves estrangeiras (`pagador_id` e `dono_id`)

> ⚠️ Se executar tudo de uma vez sem seguir a ordem, ocorrerá erro por dependência de chave estrangeira.

---

### 2. Inserção de Dados de Exemplo

Depois que as tabelas estiverem criadas corretamente, execute o script `insert_example.sql` para popular o banco de dados.

---

### 3. Manipulação de Dados

Com o banco criado e populado, você pode agora rodar os exemplos no arquivo `acoes/cobrancas-querys.sql`.

---

## 👨‍💻 Autor

Gabriel Felix — Estagiário @ Asaas  
Projeto desenvolvido como parte da trilha prática de aprendizagem