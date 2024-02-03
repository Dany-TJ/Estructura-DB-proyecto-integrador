INSERT INTO "SELECT 
    c.nombre AS cliente,
    SUM(i.monto_venta) AS total_compras
FROM Clientes c
JOIN Órdenes o ON c.id = o.cliente_id
JOIN Items i ON o.id = i.orden_id
GROUP BY c.nombre
ORDER BY total_compras DESC
LIMIT 1" (cliente,total_compras) VALUES
	 ('Pedro',47685.00);
