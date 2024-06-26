
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM;

SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.MAIOR_PRECO >= 10;

SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
VW_MAIORES_EMBALAGENS X WHERE X.MAIOR_PRECO >= 10;

SELECT A.NOME_DO_PRODUTO, A.EMBALAGEM, A.PRECO_DE_LISTA, X.EMBALAGEM, X.MAIOR_PRECO
FROM tabela_de_produtos A INNER JOIN VW_MAIORES_EMBALAGENS X
ON A.EMBALAGEM = X.EMBALAGEM;


