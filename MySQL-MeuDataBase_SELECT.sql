-- Apenas INNER JOIN --
-- Atividade 01 --
SELECT Categories.CategoryID AS 'ID da Categoria',
	Products.ProductName AS 'Nome do Produto',
	Suppliers.SupplierName AS 'Nome do Fornecedor',
    SuppliersAddress.Country AS 'País do Fornecedor'
FROM Products
INNER JOIN Categories
	ON Products.ProductID = Categories.CategoryID
INNER JOIN Suppliers
	ON Products.ProductID = Suppliers.SupplierID
INNER JOIN SuppliersAddress
	ON Products.ProductID = SuppliersAddress.AddressID
WHERE Categories.CategoryID = 2;

-- Atividade 02 --
SELECT Orders.OrderID AS 'ID do Pedido',
	Orders.OrderDate AS 'Data do Pedido',
    Shippers.ShipperName AS 'Nome da Transportadora'
FROM Orders
INNER JOIN Shippers
	ON Orders.OrderID = Shippers.ShipperID
LIMIT 10;

-- Atividade 03 --
SELECT Products.ProductID AS 'ID do Produto',
	Products.ProductName AS 'Nome do Produto',
    SuppliersAddress.City As 'Cidade do Fornecedor'
FROM Products
INNER JOIN SuppliersAddress
	ON Products.ProductID = SuppliersAddress.AddressID
WHERE Products.Price > 50.00;

-- Atividade 04 --
SELECT Orders.OrderID AS 'ID do Pedido',
	Shippers.ShipperName AS 'Nome da Transportadora'
FROM Orders
INNER JOIN Shippers
	ON Orders.OrderID = Shippers.ShipperID
WHERE Shippers.ShipperName IN ('Speedy Express', 'FedEx International');

-- Atividade 05 --
SELECT Products.ProductID AS 'ID do Produto',
	Products.ProductName AS 'Nome do Produto',
    Suppliers.SupplierName AS 'Nome do Fornecedor'
FROM Products
INNER JOIN Suppliers
	ON Products.ProductID = Suppliers.SupplierID
INNER JOIN SuppliersAddress
	ON Products.ProductID = SuppliersAddress.AddressID
WHERE SuppliersAddress.Country IN ('USA', 'Brazil');

-- Atividade 06 --
SELECT Orders.OrderID AS 'ID do Pedido',
	Orders.OrderDate AS 'Data do Pedido',
    Shippers.Phone AS 'Telefone da Transportadora'
FROM Orders
INNER JOIN Shippers
	ON Orders.OrderID = Shippers.ShipperID
WHERE Orders.OrderDate LIKE '2023%';

-- Atividade 07 --
SELECT Products.ProductID AS 'ID do Produto',
	Products.ProductName AS 'Nome do Produto',
    Products.Price AS 'Preço do Produto',
    Suppliers.SupplierName AS 'Nome do Fornecedor'
FROM Products
INNER JOIN Suppliers
	ON Products.ProductID = Suppliers.SupplierID
WHERE Products.Price BETWEEN 10.00 AND 20.00;

-- Atividade 08 --
SELECT Products.ProductID AS 'ID do Produto',
	Products.ProductName AS 'Nome do Produto',
    Shippers.ShipperName AS 'Nome da Transportadora'
FROM Products
INNER JOIN Shippers
	ON Products.ProductID = Shippers.ShipperID
ORDER BY Shippers.ShipperName ASC;

-- Apenas LEFT ou RIGHT JOIN --
-- Atividade 09 (LEFT) --
SELECT Suppliers.SupplierID AS 'ID do Fornecedor',
	Suppliers.SupplierName AS 'Nome do Fornecedor',
    IFNULL (Products.ProductName, 'Sem produto') AS 'Nome do Produto',
    IFNULL (Products.Unit, 'Sem estoque') AS 'Quantidade do Produto'
FROM Suppliers
LEFT JOIN Products
	ON Suppliers.SupplierID = Products.ProductID;

-- Atividade 10 (LEFT) --
SELECT Shippers.ShipperID AS 'ID da Transportadora',
	Shippers.ShipperName AS 'Nome da Transportadora',
    COUNT(Orders.OrderID) AS 'Quantidade de Pedidos'
FROM Shippers
LEFT JOIN Orders
	ON Shippers.ShipperID = Orders.ShipperID
GROUP BY Shippers.ShipperID;

-- Atividade 11 (RIGHT) --
