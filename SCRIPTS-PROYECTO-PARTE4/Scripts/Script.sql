--Tabla sucursal
CREATE TABLE Sucursal (
	sucursal_id INTEGER PRIMARY KEY,
	nombre TEXT NOT NULL,
	direcion Text,
	telefono TEXT
);

--Tabla cliente
CREATE TABLE Cliente (
	cliente_id INTEGER PRIMARY KEY,
	nombre TEXT NOT NULL,
	telefono TEXT,
);
--Tabla Orden
CREATE TABLE Orden (
	orden_id INTEGER PRIMARY KEY,
	cliente_id INTEGER,
	sucursal_id INTEGER NOT NULL,
	fecha DATE NOT NULL,
	total REAL NOT NULL,
	FOREIGN KEY (sucursal_id) REFERENCES(sucursal_id)
);

--Tabla categoria
CREATE TABLE Categoria (
	categoria_id INTEGER PRIMARY KEY,
	nombre TEXT NOT NULL,
);
--Tabla item
CREATE TABLE Item (
	item_Id INTEGER PRIMARY KEY,
	orden_id INTEGER NOT NULL,
	producto_id INTEGER NOT NULL,
	cantidad INTEGER NOT NULL,
	monto_venta REAL NOT NULL,
);
--Tabla stock
CREATE TABLE Stock (
    stock_id INTEGER PRIMARY KEY,
    sucursal_id INTEGER NOT NULL,
    producto_id INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    UNIQUE (sucursal_id, producto_id),
    FOREIGN KEY (sucursal_id) REFERENCES Sucursal(sucursal_id),
    FOREIGN KEY (producto_id) REFERENCES Producto(producto_id)
);
--Tabla producto
CREATE TABLE Producto (
	producto_id INTEGER PRIMARY KEY,
	nombre TEXT NULL,
	marca TEXT NULL,
	categoria_id INTEGER NOT NULL,
	precio REAL NOT NULL
);
