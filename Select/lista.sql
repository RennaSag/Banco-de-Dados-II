use bancopedidos;


-- 1
select descricaoproduto from produto
where Unidade = "M" and valunit = 1.05;

-- 2
select nome,cep 
from cliente 
where cep between 30077500 and 30079000;

-- 3
select min(SalarioFixo) as MenorSalario,
max(SalarioFixo) as MaiorSalario
from vendedor;

-- 4
-- vinho id = 78
select sum(Quantidade) as QuantidadeTotal
from itemdopedido
where CodigoProduto = 78;

-- 5
SELECT NumPedido, COUNT(DISTINCT CodigoProduto) AS QtosProdutosDiferentes
FROM itemdopedido
GROUP BY NumPedido
HAVING COUNT(DISTINCT CodigoProduto) > 3;

-- 6
SELECT *
FROM CLIENTE
WHERE CIDADE="Niteroi";

-- 7
select NumPedido, CodigoProduto, Quantidade
from itemdopedido
where quantidade = 35;

-- 8
select nomevendedor
from vendedor
where nomevendedor not like "Jo%";

-- 9
select nome
from cliente
where ie is null;

-- 10
select nomevendedor
from vendedor
where faixacomissao like 'A' or faixacomissao like 'B';

