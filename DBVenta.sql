/*
	Joshua Elí Isaac Realiquez Sosa 
    2019342
    IN5AM
    Fecha de creación:
    05/07/2023
    
*/

DROP DATABASE IF EXISTS DBAutoXpert;
CREATE DATABASE DBAutoXpert;
USE DBAutoXpert;

CREATE TABLE Sucursal(
	codigoSucursal INT NOT NULL AUTO_INCREMENT,
    nombreSucursal INT NOT NULL,
    direccion VARCHAR(100) NOT NULL,
    telefonoSucursal VARCHAR(8) NOT NULL,
    correoSucursal VARCHAR(100) NOT NULL,
    estadoSucursal BOOLEAN NOT NULL DEFAULT TRUE,
    PRIMARY KEY PK_codigoSucursal (codigoSucursal)
);

CREATE TABLE Proveedor(
	codigoProveedor INT NOT NULL AUTO_INCREMENT,
    nombreProveedor VARCHAR(100) NOT NULL,
    nitProveedor VARCHAR(10) NOT NULL,
    telefonoProveedor VARCHAR(8) NOT NULL,
    direccionProveedor VARCHAR(100) NOT NULL,
    estadoProveedor BOOLEAN NOT NULL DEFAULT TRUE,
    PRIMARY KEY PK_codigoProveedor (codigoProveedor)
);

CREATE TABLE TipoCliente(
	codigoTipoCliente INT NOT NULL AUTO_INCREMENT,
    tipoCliente VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    PRIMARY KEY PK_codigoTipoCliente (codigoTipoCliente)
);

CREATE TABLE TipoVehiculo(
	codigoTipoVehiculo INT NOT NULL AUTO_INCREMENT,
    categoria VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    PRIMARY KEY PK_codigoTipoVehiculo (codigoTipoVehiculo)
);

CREATE TABLE TipoEmpleado(
	codigoTipoEmpleado INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(100),
    sueldoBase DOUBLE NOT NULL,
    bonificacion DOUBLE,
    bonificacionEmpresa DOUBLE,
    PRIMARY KEY PK_codigoTipoEmpleado (codigoTipoEmpleado)
);

CREATE TABLE Empleado(
	codigoEmpleado INT NOT NULL AUTO_INCREMENT,
    DPIEmpleado VARCHAR(15) NOT NULL,
    primerNombre VARCHAR(20) NOT NULL,
    otrosNombres VARCHAR(60),
    apellidos VARCHAR(60) NOT NULL,
    telefonoEmpleado VARCHAR(8) NOT NULL,
    direccionEmpleado VARCHAR(100) NOT NULL,
    estadoEmpleado BOOLEAN NOT NULL DEFAULT TRUE,
    codigoSucursal INT NOT NULL,
    codigoTipoEmpleado INT NOT NULL,
    PRIMARY KEY PK_codigoEmpleado (codigoEmpleado),
    CONSTRAINT FK_Empleado_Sucursal FOREIGN KEY (codigoSucursal)
		REFERENCES Sucursal (codigoSucursal),
	CONSTRAINT FK_Empleado_TipoEmpleado FOREIGN KEY (codigoTipoEmpleado)
		REFERENCES TipoEmpleado (codigoTipoEmpleado)
);

CREATE TABLE Cliente(
	codigoCliente INT NOT NULL AUTO_INCREMENT,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    nit VARCHAR(10) NOT NULL,
    telefonoCliente VARCHAR(8) NOT NULL,
    direccionCliente VARCHAR(150) NOT NULL,
    correoCliente VARCHAR(100) NOT NULL,
    estadoCliente BOOLEAN NOT NULL DEFAULT TRUE,
    codigoTipoCliente INT NOT NULL,
    PRIMARY KEY PK_codigoCliente (codigoCliente),
    CONSTRAINT FK_Cliente_TipoCliente FOREIGN KEY (codigoTipoCliente)
		REFERENCES TipoCliente (codigoTipoCliente)
);

CREATE TABLE Venta(
	codigoVenta INT NOT NULL AUTO_INCREMENT,
    fechaVenta DATE NOT NULL DEFAULT (CURRENT_DATE),
    horaVenta TIME NOT NULL DEFAULT (CURRENT_TIME),
    totalVenta DOUBLE NOT NULL,
    estadoVenta BOOLEAN NOT NULL DEFAULT TRUE,
    codigoEmpleado INT NOT NULL,
    codigoCliente INT NOT NULL,
    PRIMARY KEY PK_codigoVenta (codigoVenta),
    CONSTRAINT FK_Venta_Empleado FOREIGN KEY (codigoEmpleado)
		REFERENCES Empleado (codigoEmpleado),
	CONSTRAINT PK_Venta_Cliente FOREIGN KEY (codigoCliente)
		REFERENCES Cliente (codigoCliente)
);

CREATE TABLE Compra(
	codigoCompra INT NOT NULL AUTO_INCREMENT,
    numeroCompra INT NOT NULL,
    fechaCompra DATE NOT NULL,
    totalCompra DOUBLE NOT NULL,
    codigoProveedor INT NOT NULL,
    PRIMARY KEY PK_codigoCompra (codigoCompra),
    CONSTRAINT FK_Compra_Proveedor FOREIGN KEY (codigoProveedor)
		REFERENCES Proveedor (codigoProveedor)
);

CREATE TABLE DetalleCompra(
	codigoDetalleCompra INT NOT NULL AUTO_INCREMENT,
    codigoVehiculo INT NOT NULL,
    cantidad INT NOT NULL,
    precio DOUBLE NOT NULL,
    codigoCompra INT NOT NULL,
    PRIMARY KEY PK_codigoDetalleCompra (codigoDetalleCompra),
    CONSTRAINT FK_DetalleCompra_Compra FOREIGN KEY (codigoCompra)
     REFERENCES Compra (codigoCompra)
);

CREATE TABLE Vehiculo(
	codigoVehiculo INT NOT NULL AUTO_INCREMENT,
    marca VARCHAR(45) NOT NULL,
    modelo VARCHAR(45) NOT NULL,
    color VARCHAR(45) NOT NULL,
    cantidadPuertas INT NOT NULL,
    stock INT NOT NULL,
    estadoVehiculo BOOLEAN NOT NULL DEFAULT TRUE,
    codigoTipoVehiculo INT NOT NULL,
    PRIMARY KEY PK_codigoVehiculo (codigoVehiculo),
    CONSTRAINT FK_Vehiculo_TipoVehiculo FOREIGN KEY (codigoTipoVehiculo)
		REFERENCES TipoVehiculo (codigoTipoVehiculo)
);

CREATE TABLE DetalleVenta(
	codigoDetalleVenta INT NOT NULL AUTO_INCREMENT,
    cantidad INT NOT NULL,
    codigoVehiculo INT NOT NULL,
    codigoVenta INT NOT NULL,
    PRIMARY KEY PK_codigoDetalleVenta (codigoDetalleVenta),
    CONSTRAINT FK_DetalleVenta_Vehiculo FOREIGN KEY (codigoVehiculo)
		REFERENCES Vehiculo (codigoVehiculo),
	CONSTRAINT FK_DetakkeVenta_Venta FOREIGN KEY (codigoVenta)
		REFERENCES Venta (codigoVenta)
);

CREATE TABLE Sucursal_has_Compra(
	Sucursal_codigoSucursal INT NOT NULL AUTO_INCREMENT,
    codigoSucursal INT NOT NULL,
    codigoCompra INT NOT NULL,
    PRIMARY KEY PK_Sucursal_codigoSucursal (Sucursal_codigoSucursal),
    CONSTRAINT FK_Sucursal_has_Compra_Sucursal FOREIGN KEY (codigoSucursal)
		REFERENCES Sucursal (codigoSucursal),
	CONSTRAINT FK_Sucursal_has_Compra_Compra FOREIGN KEY (codigoCompra)
		REFERENCES compra (codigoCompra)
);

















