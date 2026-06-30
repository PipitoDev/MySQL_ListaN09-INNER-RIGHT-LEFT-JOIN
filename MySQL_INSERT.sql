-- Comando INSERT gerado por IA para preencher o Banco de Dados

USE sgui_database;

-- 1. EMPLOYEES (Funcionários)
INSERT INTO Employees (FirstName, LastName, BirthDate, Photo, Notes) VALUES
('John', 'Doe', '1985-05-12', NULL, 'Senior Developer from USA'),
('Jane', 'Smith', '1990-08-24', NULL, 'HR Manager, UK citizen'),
('Pierre', 'Dubois', '1988-11-03', NULL, NULL),
('Yuki', 'Tanaka', '1993-01-15', NULL, 'Sales Specialist, Tokyo branch'),
('Hans', 'Müller', '1979-07-30', NULL, 'Logistics expert'),
('Elena', 'Petrova', '1992-04-05', NULL, NULL),
('Carlos', 'Gomez', '1986-09-18', NULL, 'Fluent in Spanish and English'),
('Amelie', 'Laurent', '1995-12-25', NULL, 'Marketing Assistant'),
('Ahmed', 'Mansoor', '1983-03-14', NULL, NULL),
('Sofia', 'Rossi', '1991-06-22', NULL, 'Accountant'),
('Oliver', 'Brown', '1987-10-10', NULL, 'IT Support'),
('Emma', 'Wilson', '1994-02-28', NULL, NULL),
('Liam', 'Johnson', '1989-11-11', NULL, 'Project Manager'),
('Mia', 'Martinez', '1996-07-19', NULL, 'Intern'),
('Lucas', 'Schneider', '1982-05-05', NULL, 'Tech Lead'),
('Chloe', 'Martin', '1993-09-02', NULL, NULL),
('Arjun', 'Patel', '1988-08-08', NULL, 'Database Administrator'),
('Zoe', 'Clark', '1991-01-31', NULL, 'UX Designer'),
('Thomas', 'Fischer', '1984-06-15', NULL, NULL),
('Lin', 'Wei', '1990-10-20', NULL, 'Business Analyst');


-- 2. CUSTOMERS (Clientes)
INSERT INTO Customers (CustomerName, ContactName) VALUES
('Global Tech Corp', 'Alice Wonderland'),
('EuroMarket SpA', 'Giovanni Rossi'),
('Nippon Trading', 'Kenji Sato'),
('Americas Retail Inc', NULL),
('UK Imports Ltd', 'Sarah Jenkins'),
('Alpha Industry', 'Markus Weber'),
('Quebec Commerce', 'Jean-Pierre'),
('Aussie Goods', 'Kylie Minogue'),
('Andean Coffee Co', 'Juan Valdez'),
('Nordic Logistics', NULL),
('African Safari Ltd', 'David Mandela'),
('Asia Pacific Trade', 'Lee Min-ho'),
('Oceania Ventures', 'Bruce Wayne'),
('Pacific Imports', 'Moana Waialiki'),
('Continental Food', 'Dieter Engineering'),
('Sultan General Store', 'Ali Baba'),
('Maple Leaf Logistics', 'Sidney Crosby'),
('Kiwi Fruit Corp', 'Peter Jackson'),
('Aztec Gold Jewelry', 'Xochitl Gomez'),
('Taj Mahal Crafts', 'Rajesh Koothrappali');


-- 3. CUSTOMERSADDRESS (Endereços dos Clientes)
-- Vinculados aos CustomerID de 1 a 20
INSERT INTO CustomersAddress (Street, District, PostalCode, City, Country, CustomerID) VALUES
('5th Avenue 123', 'Manhattan', '10001', 'New York', 'USA', 1),
('Via Roma 45', 'Centro', '00100', 'Rome', 'Italy', 2),
('Shibuya 2-Chome', 'Shibuya', '150-0002', 'Tokyo', 'Japan', 3),
('Hollywood Blvd 77', 'LA', '90028', 'Los Angeles', 'USA', 4),
('Oxford Street 500', 'Westminster', 'W1D 1BS', 'London', 'UK', 5),
('Berliner Str. 12', 'Mitte', '10115', 'Berlin', 'Germany', 6),
('Rue de Rivoli 89', 'Louvre', '75001', 'Paris', 'France', 7),
('George St 345', 'CBD', '2000', 'Sydney', 'Australia', 8),
('Av. El Dorado 40', 'Fontibon', '110911', 'Bogota', 'Colombia', 9),
('Kungsgatan 5', 'Norrmalm', '111 43', 'Stockholm', 'Sweden', 10),
('Loop Street 88', 'City Bowl', '8001', 'Cape Town', 'South Africa', 11),
('Gangnam-daero', 'Gangnam', '06164', 'Seoul', 'South Korea', 12),
('Queen St 20', 'Central', '1010', 'Auckland', 'New Zealand', 13),
('Main St 999', 'Downtown', 'V6B 2T4', 'Vancouver', 'Canada', 14),
('Schlossplatz 3', 'Mitte', '70173', 'Stuttgart', 'Germany', 15),
('Sheikh Zayed Rd', 'Downtown', '00000', 'Dubai', 'UAE', 16),
('Yonge St 456', 'Downtown', 'M4Y 1W9', 'Toronto', 'Canada', 17),
('Victoria St 12', 'Te Aro', '6011', 'Wellington', 'New Zealand', 18),
('Av. Reforma 222', 'Juarez', '06600', 'Mexico City', 'Mexico', 19),
('MG Road 88', 'Bangalore Central', '560001', 'Bangalore', 'India', 20);


-- 4. CATEGORIES (Categorias de Produtos)
INSERT INTO Categories (CategoryName, CategoryDesc) VALUES
('Electronics', 'Cellphones, Laptops, and Gadgets'),
('Beverages', 'Soft drinks, coffees, teas, and beers'),
('Confections', 'Desserts, candies, and sweet treats'),
('Dairy Products', 'Cheese, milk, butter, and yogurt'),
('Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
('Meat/Poultry', 'Prepared meats and fresh poultry'),
('Produce', 'Fresh fruits and vegetables'),
('Seafood', 'Fresh fish and shellfish'),
('Clothing', 'Apparel and fashion items'),
('Automotive', 'Car parts and accessories'),
('Home & Kitchen', 'Furniture and kitchen appliances'),
('Books', 'Educational and fictional literature'),
('Beauty', 'Cosmetics and skincare'),
('Toys & Games', 'Board games and children toys'),
('Sports', 'Outdoor gear and fitness equipment'),
('Tools', 'Hardware and building tools'),
('Office Supplies', 'Paper, pens, and desk organization'),
('Pet Supplies', 'Food and toys for pets'),
('Health', 'Vitamins and medical supplies'),
('Music', 'Instruments and vinyl records');


-- 5. SUPPLIERS (Fornecedores)
INSERT INTO Suppliers (SupplierName, ContactName, Phone) VALUES
('Exotic Liquids', 'Charlotte Cooper', '(171) 555-2222'),
('New Orleans Cajun', 'Shelley Burke', '(100) 555-4822'),
('Grandma Kellys', 'Regina Murphy', '(313) 555-5735'),
('Tokyo Traders', 'Chiyo Nagase', '(03) 3555-5011'),
('Cooperativa Quesos', 'Antonio del Valle', '(98) 598 76 54'),
('Mayumis', 'Mayumi Ohno', '(06) 431-2345'),
('Pavlova, Ltd.', 'Ian Devling', '(03) 444-2343'),
('Specialty Biscuits', 'Peter Wilson', '(161) 555-4448'),
('PB Knäckebröd AB', 'Lars Peterson', '031-987 65 43'),
('Refrescos Americanos', NULL, '1-800-555-0199'),
('Heli Süßwaren', 'Martin Bein', '(030) 112345'),
('Plutzer Lebensmittel', 'Peter Franken', '(040) 123456'),
('Nord-Ost Fisch', 'Sven Petersen', '(0471) 12345'),
('Formages de France', 'Eliane Noz', '(1) 47.55.60.10'),
('Forets d\'érables', 'Chantal Goulet', '(514) 555-2955'),
('Zuider Zeeum', 'Dirk Ligt', '(020) 1234567'),
('Aux Joyeux Ecclés.', 'Guylène Nodier', '(1) 03.83.00.68'),
('New England Seafood', 'Robb Merchant', '(617) 555-3267'),
('B\'s Beverages', 'Victoria Ashworth', '(171) 555-1212'),
('Forêts et vergers', NULL, '(04) 22.34.56');


-- 6. SUPPLIERSADDRESS (Endereços dos Fornecedores)
-- Vinculados aos SupplierID de 1 a 20
INSERT INTO SuppliersAddress (Street, District, PostalCode, City, Country, SupplierID) VALUES
('49 Gilbert St.', 'London', 'EC1N 1BB', 'London', 'UK', 1),
('P.O. Box 78934', 'Louisiana', '70117', 'New Orleans', 'USA', 2),
('707 Oxford Rd.', 'Michigan', '48104', 'Ann Arbor', 'USA', 3),
('9-8 Sekimagahara', 'Tokyo', '100', 'Tokyo', 'Japan', 4),
('Calle del Rosal 4', 'Asturias', '33007', 'Oviedo', 'Spain', 5),
('92 Setsuko', 'Osaka', '545', 'Osaka', 'Japan', 6),
('74 Rose St.', 'Victoria', '3056', 'Melbourne', 'Australia', 7),
('29 Kings Way', 'Manchester', 'M14 4XW', 'Manchester', 'UK', 8),
('Kalavägen 13', 'Vene', '501 13', 'Borås', 'Sweden', 9),
('Route 66, Complex B', 'Texas', '75001', 'Dallas', 'USA', 10),
('Tiergartenstraße 4', 'Mitte', '10785', 'Berlin', 'Germany', 11),
('Bregenzer Straße 7', 'Bayern', '88131', 'Lindau', 'Germany', 12),
('Fraunhoferstraße 2', 'Cuxhaven', '27472', 'Cuxhaven', 'Germany', 13),
('12, rue des Bouchers', 'Marseille', '13001', 'Marseille', 'France', 14),
('149 Rue St. Amable', 'Quebec', 'H2J 1C4', 'Montreal', 'Canada', 15),
('Verlengde Poolseweg', 'Breda', '4818 CL', 'Breda', 'Netherlands', 16),
('203, Rue des Francs', 'Lille', '59000', 'Lille', 'France', 17),
('Boston Harbor Pier 2', 'Massachusetts', '02210', 'Boston', 'USA', 18),
('Fauntleroy Way', 'London', 'SW1 1AA', 'London', 'UK', 19),
('Rue Reynaldo 15', 'Paris', '75008', 'Paris', 'France', 20);


-- 7. PRODUCTS (Produtos)
-- Vinculados aos SupplierID (1-20) e CategoryID (1-20)
INSERT INTO Products (ProductName, Unit, Price, SupplierID, CategoryID) VALUES
('Chai Tea', 10, 18.00, 1, 2),
('Chang Beer', 24, 19.00, 1, 2),
('Aniseed Syrup', 12, 10.00, 2, 3),
('Chef Anton Seasoning', NULL, 22.00, 2, 5),
('Chef Anton Mix', 36, 21.35, 3, 5),
('Grandma Berry Jam', 12, 25.00, 3, 3),
('Uncle Bob Organic', 12, 30.00, 4, 7),
('Northwoods Syrup', 40, 40.00, 4, 3),
('Mishi Kobe Niku', NULL, 97.00, 5, 6),
('Ikura Caviar', 24, 31.00, 6, 8),
('Queso Cabrales', 10, 21.00, 5, 4),
('Queso Manchego', 15, 38.00, 6, 4),
('Konbu Seaweed', 20, 6.00, 7, 8),
('Tofu', 40, 23.25, 7, 7),
('Genen Shooyu', 10, 15.50, 8, 2),
('Pavlova Pavlova', 5, 17.45, 8, 3),
('Alice Mutton', 20, 39.00, 9, 6),
('Carnarvon Tigers', NULL, 62.50, 9, 8),
('Teatime Biscuits', 10, 9.20, 10, 3),
('Sir Rodneys Scones', 24, 10.00, 10, 3);


-- 8. SHIPPERS (Transportadoras)
INSERT INTO Shippers (ShipperName, Phone) VALUES
('Speedy Express', '(503) 555-9831'),
('United Package', '(503) 555-3199'),
('Federal Shipping', '(503) 555-9931'),
('DHL Global', '+49 228 18 20'),
('FedEx International', '1-800-463-3339'),
('UPS Worldwide', '1-800-742-5877'),
('Royal Mail', '03457 740 740'),
('Japan Post', '+81 3-3504-4411'),
('Deutsche Post', '+49 180 2 3333'),
('La Poste France', '3631'),
('Canada Post', '1-866-607-6301'),
('Australia Post', '13 76 78'),
('Correos España', '902 197 197'),
('China Post', '+86 11185'),
('Emirates SkyCargo', '+971 4 7079111'),
('Swiss Post', '+41 848 888 888'),
('EuroDispo', '+33 1 40 00 00'),
('Oceanic Shipping', '+61 2 9000 0000'),
('TransAmerican Logistics', '1-800-555-0100'),
('Global Freight Inc', '+1 800 555 9999');


-- 9. ORDERS (Pedidos)
-- Vinculados a Customers(1-20), Employees(1-20) e Shippers(1-20)
INSERT INTO Orders (OrderDate, CustomerID, EmployeeID, ShipperID) VALUES
('2026-01-10', 1, 1, 1),
('2026-01-12', 2, 2, 2),
('2026-01-15', 3, 3, 3),
('2026-01-18', 4, 4, 4),
('2026-01-20', 5, 5, 5),
('2026-01-22', 6, 6, 6),
('2026-01-25', 7, 7, 7),
('2026-01-28', 8, 8, 8),
('2026-02-01', 9, 9, 9),
('2026-02-03', 10, 10, 10),
('2026-02-05', 11, 11, 11),
('2026-02-08', 12, 12, 12),
('2026-02-10', 13, 13, 13),
('2026-02-12', 14, 14, 14),
('2026-02-15', 15, 15, 15),
('2026-02-18', 16, 16, 16),
('2026-02-20', 17, 17, 17),
('2026-02-22', 18, 18, 18),
('2026-02-25', 19, 19, 19),
('2026-02-28', 20, 20, 20);


-- 10. ORDERDETAILS (Detalhes dos Pedidos)
-- Vinculados a Products(1-20) e Orders(1-20)
INSERT INTO OrderDetails (Payment, ProductID, OrderID) VALUES
(18.00, 1, 1),
(38.00, 2, 2),
(10.00, 3, 3),
(44.00, 4, 4),
(21.35, 5, 5),
(50.00, 6, 6),
(30.00, 7, 7),
(80.00, 8, 8),
(97.00, 9, 9),
(62.00, 10, 10),
(21.00, 11, 11),
(76.00, 12, 12),
(12.00, 13, 13),
(46.50, 14, 14),
(15.50, 15, 15),
(34.90, 16, 16),
(78.00, 17, 17),
(125.00, 18, 18),
(9.20, 19, 19),
(20.00, 20, 20);

-- 11. NOVOS PEDIDOS (Orders 21 a 30)
-- Variando datas, clientes, funcionários e utilizando as transportadoras existentes (1 a 20)
INSERT INTO Orders (OrderDate, CustomerID, EmployeeID, ShipperID) VALUES
('2026-03-02', 5,  3,  12), -- UK Imports comprando via Australia Post
('2026-03-05', 1,  14, 4),  -- Global Tech Corp comprando via DHL
('2026-03-06', 19, 2,  5),  -- Aztec Gold Jewelry comprando via FedEx
('2026-03-10', 3,  7,  8),  -- Nippon Trading comprando via Japan Post
('2026-03-12', 12, 11, 1),  -- Asia Pacific Trade comprando via Speedy Express
('2026-03-15', 8,  20, 6),  -- Aussie Goods comprando via UPS Worldwide
('2026-03-17', 2,  1,  19), -- EuroMarket SpA comprando via TransAmerican Logistics
('2026-03-20', 15, 9,  2),  -- Continental Food comprando via United Package
('2026-03-22', 4,  5,  3),  -- Americas Retail Inc comprando via Federal Shipping
('2026-03-25', 10, 18, 9);  -- Nordic Logistics comprando via Deutsche Post


-- 12. DETALHES DOS NOVOS PEDIDOS (OrderDetails 21 a 30)
-- Vinculados aos novos OrderID (21 a 30) e variando os produtos vendidos
INSERT INTO OrderDetails (Payment, ProductID, OrderID) VALUES
(17.45, 16, 21), -- Comprou Pavlova Pavlova
(18.00, 1,  22), -- Comprou Chai Tea
(97.00, 9,  23), -- Comprou Mishi Kobe Niku (Carre de Kobe caro para a joalheria!)
(15.50, 15, 24), -- Comprou Genen Shooyu
(21.00, 11, 25), -- Comprou Queso Cabrales
(40.00, 8,  26), -- Comprou Northwoods Syrup
(10.00, 3,  27), -- Comprou Aniseed Syrup
(23.25, 14, 28), -- Comprou Tofu
(19.00, 2,  29), -- Comprou Chang Beer
(30.00, 7,  30); -- Comprou Uncle Bob Organic

-- 13. NOVOS PRODUTOS (Novos IDs, mas usando nomes de produtos existentes com outros fornecedores)
INSERT INTO Products (ProductName, Unit, Price, SupplierID, CategoryID) VALUES
('Chai Tea', 12, 18.50, 6, 2),            -- Chai Tea agora também vendido pelo Fornecedor 6 (Mayumis)
('Chang Beer', 24, 19.00, 11, 2),         -- Chang Beer pelo Fornecedor 11 (Heli Süßwaren)
('Aniseed Syrup', 12, 10.50, 15, 3),      -- Aniseed Syrup pelo Fornecedor 15 (Forets d'érables)
('Chef Anton Mix', 36, 22.00, 1, 5),      -- Chef Anton Mix pelo Fornecedor 1 (Exotic Liquids)
('Uncle Bob Organic', 12, 29.90, 8, 7),   -- Uncle Bob Organic pelo Fornecedor 8 (Specialty Biscuits)
('Mishi Kobe Niku', NULL, 99.00, 14, 6),  -- Mishi Kobe Niku pelo Fornecedor 14 (Formages de France)
('Queso Cabrales', 10, 21.50, 4, 4),      -- Queso Cabrales pelo Fornecedor 4 (Tokyo Traders)
('Genen Shooyu', 10, 15.00, 12, 2),       -- Genen Shooyu pelo Fornecedor 12 (Plutzer Lebensmittel)
('Pavlova Pavlova', 5, 17.00, 2, 3),      -- Pavlova Pavlova pelo Fornecedor 2 (New Orleans Cajun)
('Teatime Biscuits', 10, 9.50, 19, 3);    -- Teatime Biscuits pelo Fornecedor 19 (B's Beverages)

-- 1. Cadastrando novos Fornecedores Internacionais (Suppliers)
INSERT INTO Suppliers (SupplierName, ContactName, Phone) VALUES 
('Global Tech Corp', 'John Smith', '+15550198234'),
('EuroLogix Ltd', 'Hans Müller', '+49401234567'),
('Asiana Electronics', 'Mei Ling', '+86216543210'),
('Apex Supply Co', 'Sarah Jenkins', '+14155552671'),
('Nordic Matrix', 'Lars Erikson', '+46812345678'),
('Oceanic Trade', 'David Jones', '+61298765432'),
('Vortex Industries', 'Elena Rostova', '+74951112233'),
('Zenith Logistics', 'Akira Tanaka', '+81332221111'),
('Meridian Goods', 'Chloe Dupont', '+33142223333'),
('Horizon Wholesale', 'Ahmed Mansoor', '+97143334444');

-- 2. Cadastrando uma Categoria padrão em inglês
INSERT INTO Categories (CategoryName, CategoryDesc) VALUES 
('Electronics', 'Gadgets, hardware, and computer peripherals');

-- 3. Inserindo os Produtos (Products)
-- Nota: Os IDs de Supplier de 1 a 10 correspondem aos fornecedores acima, e o CategoryID é 1[cite: 1].
INSERT INTO Products (ProductName, Unit, Price, SupplierID, CategoryID) VALUES 
-- [PRODUTOS COM MÚLTIPLOS FORNECEDORES]
-- Laptop (Disponível em 3 fornecedores)
('Laptop', 12, 1200.00, 1, 1),
('Laptop', 8, 1150.00, 2, 1),
('Laptop', 15, 1100.00, 3, 1),

-- Smartphone (Disponível em 3 fornecedores)
('Smartphone', 25, 799.99, 1, 1),
('Smartphone', 30, 820.00, 3, 1),
('Smartphone', 20, 785.50, 8, 1),

-- Wireless Headphones (Disponível em 2 fornecedores)
('Wireless Headphones', 40, 150.00, 2, 1),
('Wireless Headphones', 50, 145.00, 4, 1),

-- Smartwatch (Disponível em 2 fornecedores)
('Smartwatch', 15, 249.00, 3, 1),
('Smartwatch', 18, 255.00, 5, 1),

-- Tablet (Disponível em 2 fornecedores)
('Tablet', 10, 450.00, 1, 1),
('Tablet', 12, 435.00, 8, 1),


-- [PRODUTOS COM EXCLUSIVIDADE - APENAS 1 FORNECEDOR CADA]
-- 4. Mechanical Keyboard (Apenas EuroLogix)
('Mechanical Keyboard', 35, 99.00, 2, 1),

-- 5. Gaming Mouse (Apenas Apex Supply)
('Gaming Mouse', 60, 59.99, 4, 1),

-- 6. 4K Monitor (Apenas Nordic Matrix)
('4K Monitor', 7, 449.99, 5, 1),

-- 7. External SSD (Apenas Oceanic Trade)
('External SSD', 22, 129.00, 6, 1),

-- 8. Web Camera (Apenas Vortex Industries)
('Web Camera', 14, 79.50, 7, 1),

-- 9. USB-C Hub (Apenas Zenith Logistics)
('USB-C Hub', 100, 35.00, 8, 1),

-- 10. Bluetooth Speaker (Apenas Meridian Goods)
('Bluetooth Speaker', 28, 89.99, 9, 1),

-- 11. Wireless Router (Apenas Horizon Wholesale)
('Wireless Router', 11, 115.00, 10, 1),

-- 12. Power Bank (Apenas Global Tech)
('Power Bank', 85, 29.99, 1, 1),

-- 13. Microphone (Apenas Apex Supply)
('Microphone', 9, 199.00, 4, 1);