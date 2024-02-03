INSERT INTO "SELECT 
    c.nombre AS categoria,
    SUM(s.cantidad) AS cantidad_total
FROM Stocks s
JOIN Productos p ON s.Producto_Id = p.id
JOIN Categorías c ON p.categoria_id = c.id
GROUP BY c.nombre" (categoria,cantidad_total) VALUES
	 ('Electrónicos',374),
	 ('Hogar',235),
	 ('Juguetes',250),
	 ('Deportes',223),
	 ('Ropa',293);
