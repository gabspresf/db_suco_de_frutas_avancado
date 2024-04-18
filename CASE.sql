SELECT * FROM tabela_de_produtos;

SELECT NOME_DO_PRODUTO, PRECO_DE_LISTA,
CASE WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
     WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
     ELSE 'PRODUTO BARATO'
END AS STATUS_PRECO
FROM tabela_de_produtos;

SELECT EMBALAGEM,
CASE WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
     WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
     ELSE 'PRODUTO BARATO'
END AS STATUS_PRECO, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO
FROM tabela_de_produtos
GROUP BY EMBALAGEM,
CASE WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
     WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
     ELSE 'PRODUTO BARATO'
END;

SELECT * FROM tabela_de_clientes;

SELECT NOME,
CASE WHEN YEAR (DATA_DE_NASCIMENTO) < 1990 THEN 'VELHOS'
	 WHEN YEAR (DATA_DE_NASCIMENTO) >= 1990 AND YEAR (DATA_DE_NASCIMENTO) < 1995 THEN 'JOVENS'
     ELSE 'CRIANCAS'
END AS CLASSIFICACAO_IDADE
FROM TABELA_DE_CLIENTES;