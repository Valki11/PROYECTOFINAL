create database comprasdb;
 use comprasdb;
 
CREATE TABLE Marcas(
	idmarca SMALLINT NOT NULL AUTO_INCREMENT, 
    marca VARCHAR(50),
    PRIMARY KEY (idmarca)
);

CREATE TABLE Proveedores(
	idProveedore INT NOT NULL AUTO_INCREMENT, 
    proveedor VARCHAR(60),
    nit varchar(12),
    direccion VARCHAR(80),
    telefono varchar(25),
    PRIMARY KEY (idProveedore)
);

CREATE TABLE Compras(
	idcompra INT NOT NULL AUTO_INCREMENT, 
    no_orden_compra INT, 
    idproveedor INT, 
    fecha_orden DATE, 
    fechaingreso DATETIME,
    PRIMARY KEY (idcompra),
    constraint foreign key (idproveedor) references Proveedores(idProveedore)
    );
    
    CREATE TABLE Productos(
	idProducto INT NOT NULL AUTO_INCREMENT, 
    producto varchar(50), 
    idMarca smallint, 
    Descripcion varchar(100),
    Imagen varchar(30),
    precio_costo decimal(8,2),
    precio_venta DECIMAL (8,2),
    existencia INT,
    fecha_ingreso DATETIME,
    PRIMARY KEY (idProducto),
    constraint foreign key (idMarca) references Marcas(idmarca)
    );
    
    CREATE TABLE Compras_detalle(
    idcompra_detalle bigint NOT NULL AUTO_INCREMENT,
    idcompra INT,
    idproducto INT,
    cantidad INT,
    precio_costo_unitario decimal(8,2),
    PRIMARY KEY (idcompra_detalle),
    constraint foreign key (idcompra) references Compras (idcompra),
    constraint foreign key (idproducto) references Productos(idProducto)
    );
    


    
   
    
    











