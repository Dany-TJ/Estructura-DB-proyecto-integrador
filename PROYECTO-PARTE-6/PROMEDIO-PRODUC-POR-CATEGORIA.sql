INSERT INTO "SELECT 
    c.nombre AS categoria,
    AVG(p.precio_unitario) AS precio_promedio
FROM Productos p
JOIN Categorías c ON p.categoria_id = c.id
GROUP BY c.nombre" (categoria,precio_promedio) VALUES
	 ('Deportes',32.5000000000000000),
	 ('Electrónicos',900.0000000000000000),
	 ('Ropa',60.0000000000000000),
	 ('Hogar',25.0000000000000000),
	 ('Juguetes',17.5000000000000000);
