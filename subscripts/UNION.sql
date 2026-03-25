SELECT nome, rua,bairro,cidade,cep FROM colaboradores
UNION ALL
SELECT nome,rua,bairro,cidade,cep FROM fornecedores;