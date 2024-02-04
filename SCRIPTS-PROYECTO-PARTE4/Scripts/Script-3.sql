SELECT 
    MIN(precio_unitario) AS precio_minimo,
    MAX(precio_unitario) AS precio_maximo,
    AVG(precio_unitario) AS precio_promedio
FROM Productos;
SELECT 
    s.nombre AS sucursal,
    SUM(st.cantidad) AS cantidad_total
FROM Stocks st
JOIN Sucursales s ON st.Sucursal_Id = s.id
GROUP BY s.nombre;
SELECT 
    c.nombre AS cliente,
    SUM(i.monto_venta) AS total_ventas
FROM Clientes c
JOIN Órdenes o ON c.id = o.cliente_id
JOIN Items i ON o.id = i.orden_id
GROUP BY c.nombre;
