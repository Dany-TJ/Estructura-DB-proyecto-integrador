-- Creación de la tabla Órdenes
CREATE TABLE Órdenes (
    id INT PRIMARY KEY,
    cliente_id INT,
    sucursal_id INT,
    fecha DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursales(id)
);

-- Creación de la tabla Stocks
CREATE TABLE Stocks (
    Id INT PRIMARY KEY,
    Sucursal_Id INT,
    Producto_Id INT,
    Cantidad INT,
    FOREIGN KEY (Sucursal_Id) REFERENCES Sucursales(id),
    FOREIGN KEY (Producto_Id) REFERENCES Productos(id)
);


-- Creación de la tabla Items
CREATE TABLE Items (
    id INT PRIMARY KEY,
    orden_id INT,
    producto_id INT,
    cantidad INT,
    monto_venta DECIMAL(10, 2),
    FOREIGN KEY (orden_id) REFERENCES Órdenes(id),
    FOREIGN KEY (producto_id) REFERENCES Productos(id)
);
