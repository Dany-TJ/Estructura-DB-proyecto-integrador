INSERT INTO "SELECT 
    s.nombre AS sucursal,
    SUM(i.monto_venta) AS total_ventas
FROM Sucursales s
JOIN Órdenes o ON s.id = o.sucursal_id
JOIN Items i ON o.id = i.orden_id
GROUP BY s.nombre" (sucursal,total_ventas) VALUES
	 ('Sucursal B',680.00),
	 ('Sucursal A',21400.00),
	 ('Sucursal C',47275.00);
