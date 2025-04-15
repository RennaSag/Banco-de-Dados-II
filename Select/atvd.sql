-- 1
SELECT v.NomeVendedor, v.SalarioFixo, p.NumPedido, p.PrazoEntrega
FROM vendedor v
JOIN pedido p ON v.CodVendedor = p.CodVendedor
WHERE v.SalarioFixo >= 3000.00 AND p.PrazoEntrega > 15;

-- 2
SELECT c.Nome, c.Endereco, c.Cidade, c.UF
FROM cliente c
JOIN pedido p ON c.CodCliente = p.CodCliente
JOIN itemdopedido ip ON p.NumPedido = ip.NumPedido
JOIN produto pr ON ip.CodigoProduto = pr.CodProduto
WHERE c.UF = 'RJ' AND p.PrazoEntrega > 15 AND pr.DescricaoProduto = 'Queijo' ORDER BY c.Nome DESC;

-- 3
SELECT COUNT(p.NumPedido) AS TotalPedidos
FROM vendedor v
JOIN pedido p ON v.CodVendedor = p.CodVendedor
WHERE v.NomeVendedor = 'Antonio';

-- 4
SELECT COUNT(p.NumPedido) AS TotalPedidos
FROM vendedor v
JOIN pedido p ON v.CodVendedor = p.CodVendedor
JOIN cliente c ON p.CodCliente = c.CodCliente
WHERE v.NomeVendedor = 'Joao' AND (c.Cidade = 'Rio de Janeiro' OR c.Cidade = 'Niteroi');

-- 5
SELECT SUM(ip.Quantidade * pr.ValUnit) AS ValorTotalPedidos
FROM itemdopedido ip
JOIN produto pr ON ip.CodigoProduto = pr.CodProduto;



