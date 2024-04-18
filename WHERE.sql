SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga' OR TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE SABOR = 'Manga' AND TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE NOT (SABOR = 'Manga' OR TAMANHO = '470 ml');

SELECT * FROM tabela_de_produtos WHERE SABOR IN ('Laranja', 'Manga');
