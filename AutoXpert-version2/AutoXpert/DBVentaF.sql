/*
    Joshua Elí Isaac Realiquez Sosa 
    2019342
    IN5AM
    Fecha de creación:
    05/07/2023
    Fecha de modificación:
    06/07/2023
        Se modificó la entidad TipoEmpleado;
        el atributo bonificación empresa se
        colocó como not null y un default de
        Q.250.00

*/

 

DROP DATABASE IF EXISTS DBAutoXpert;
CREATE DATABASE DBAutoXpert;
USE DBAutoXpert;

 

CREATE TABLE Sucursal(
    codigoSucursal INT NOT NULL AUTO_INCREMENT,
    nombreSucursal VARCHAR(100) NOT NULL,
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
    estadoTipoCliente BOOLEAN NOT NULL DEFAULT TRUE,
    PRIMARY KEY PK_codigoTipoCliente (codigoTipoCliente)
);

 

CREATE TABLE TipoVehiculo(
    codigoTipoVehiculo INT NOT NULL AUTO_INCREMENT,
    categoria VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200),
    estadoActivo BOOLEAN NOT NULL DEFAULT TRUE,
    PRIMARY KEY PK_codigoTipoVehiculo (codigoTipoVehiculo)
);

 

CREATE TABLE TipoEmpleado(
    codigoTipoEmpleado INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR(100),
    sueldoBase DOUBLE NOT NULL,
    bonificacion DOUBLE,
    bonificacionEmpresa DOUBLE NOT NULL DEFAULT 250.00,
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
    usuario varchar (15) not null unique,
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
    fechaVenta DATE NOT NULL,
    horaVenta TIME NOT NULL,
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

 

CREATE TABLE DetalleCompra(
    codigoDetalleCompra INT NOT NULL AUTO_INCREMENT,
    codigoVehiculo INT NOT NULL,
    cantidad INT NOT NULL,
    precio DOUBLE NOT NULL,
    codigoCompra INT NOT NULL,
    PRIMARY KEY PK_codigoDetalleCompra (codigoDetalleCompra),
    CONSTRAINT FK_DetalleCompra_Compra FOREIGN KEY (codigoCompra)
        REFERENCES Compra (codigoCompra),
    CONSTRAINT FK_DetalleCompra_Vehiculo FOREIGN KEY (codigoVehiculo)
        REFERENCES Vehiculo (codigoVehiculo)
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

 

insert into Sucursal (nombreSucursal, direccion, telefonoSucursal, correoSucursal, estadoSucursal) 
    values ('AutoXpert Petén', '17 Calle 35-67 Zona 12', '23456789','petenautoxpert@gmail.com', 1);
insert into Sucursal (nombreSucursal, direccion, telefonoSucursal, correoSucursal, estadoSucursal) 
    values ('AutoXpert Izabal', '4 Av 9-12, zona 10','23679012', 'autoxpertizabal@gmail.com', 1);
insert into Sucursal (nombreSucursal, direccion, telefonoSucursal, correoSucursal, estadoSucursal) 
    values ('AutoXpert Antigua Guatemala', '7 calle, 10-49, zona 8', '23126709', 'autoantiguaxpert@gmail.com', 1);
insert into Sucursal (nombreSucursal, direccion, telefonoSucursal, correoSucursal, estadoSucursal) 
    values ('AutoXpert Zacapa', '3 Av, 3-32, zona 13','23098756', 'Zautoxpert@gmail.com', 1);
insert into Sucursal (nombreSucursal, direccion, telefonoSucursal, correoSucursal, estadoSucursal) 
    values ('AutoXpert Retalhuleu', '9 Av, 9-21, zona 2','23815534', 'retaautoxpert@gmail.com', 1);

insert into Proveedor (nombreProveedor, nitProveedor, telefonoProveedor, direccionProveedor, estadoProveedor)
    values ('Mazda','8921346745','24982190','6a Av. 9a Calle, zona 1, Ciudad de Guatemala',1 );
insert into Proveedor (nombreProveedor, nitProveedor, telefonoProveedor, direccionProveedor, estadoProveedor)
    values ('Honda','2156349812','23128712','5a Av. Norte, Antigua Guatemala, Sacatepéquez', 1);
insert into Proveedor (nombreProveedor, nitProveedor, telefonoProveedor, direccionProveedor, estadoProveedor)
    values ('Toyota','0921871265','24781290','15 Av. 4a Calle, Quetzaltenango, Quetzaltenango', 1);
insert into Proveedor (nombreProveedor, nitProveedor, telefonoProveedor, direccionProveedor, estadoProveedor)
    values ('Mitsubishi','1298761245','24658712','4 Av. 7 Calle, Chiquimula, Esquipulas', 1);
insert into Proveedor (nombreProveedor, nitProveedor, telefonoProveedor, direccionProveedor, estadoProveedor)
    values ('Nissan','1290876521','23781276','8a Av. 6a Calle, zona 3, Ciudad de Guatemala', 1);

insert into TipoCliente (tipoCliente, descripcion, estadoTipoCliente) 
    values ('Frecuentes', 'compras con regularidad',1);
insert into TipoCliente (tipoCliente, descripcion, estadoTipoCliente) 
    values ('Ocasionales', 'compran de vez en cuando',1);
insert into TipoCliente (tipoCliente, descripcion, estadoTipoCliente) 
    values ('Nuevos', 'Sus primeras compras en el negocio',1);
insert into TipoCliente (tipoCliente, descripcion, estadoTipoCliente) 
    values ('Leales', 'muestran un compromiso constante con nosotros',1);
insert into TipoCliente (tipoCliente, descripcion, estadoTipoCliente) 
    values ('Desleales', ' cambian de negocio con frecuencia',1);

insert into TipoVehiculo(categoria, descripcion, estadoActivo) 
	values('Categoría M1','que tengan, como máximo, ocho plazas de asiento además de la del conductor.',1);
insert into TipoVehiculo(categoria, descripcion, estadoActivo) 
	values('Categoría M2','que tengan más de ocho plazas de asiento además de la del conductor y cuya masa máxima no sea superior a 5 toneladas.',1);
insert into TipoVehiculo(categoria, descripcion, estadoActivo) 
	values('Categoría M3','que tengan más de ocho plazas de asiento además de la del conductor y cuya masa máxima sea superior a 5 toneladas. ',1);
insert into TipoVehiculo(categoria, descripcion, estadoActivo) 
	values('Categoría N1','cuya masa máxima no sea superior a 3,5 toneladas.',1);
insert into TipoVehiculo(categoria, descripcion, estadoActivo) 
	values('Categoría N2','cuya masa máxima sea superior a 3,5 toneladas pero no a 12 toneladas.',1);

insert into TipoEmpleado (descripcion, sueldoBase, bonificacion, bonificacionEmpresa)
    values ('Jefe de ventas', 6125.25, 350.00,250.00);
insert into TipoEmpleado (descripcion, sueldoBase, bonificacion, bonificacionEmpresa)
    values ('Asesor comercial', 4500.45, 200.00,250.00);
insert into TipoEmpleado (descripcion, sueldoBase, bonificacion, bonificacionEmpresa)
    values ('Recepcionista', 3775.55, 150.00,250.00);
insert into TipoEmpleado (descripcion, sueldoBase, bonificacion, bonificacionEmpresa)
    values ('Coordinador de facturación y matriculas', 4050.15, 375.00,250.00);
insert into TipoEmpleado (descripcion, sueldoBase, bonificacion, bonificacionEmpresa)
    values ('Alistador',3980.99 , 150.00,250.00);

insert into Empleado (DPIEmpleado, primerNombre,otrosNombres,apellidos,telefonoEmpleado,direccionEmpleado,estadoEmpleado, usuario,
codigoSucursal,codigoTipoEmpleado)
    values ('3123921610101', 'Christian','Emanuel','Itzep Lemus', '34568723','6 Av. 13-54 zona 7', 1, 'citzep', 1, 3);
insert into Empleado (DPIEmpleado, primerNombre,otrosNombres,apellidos,telefonoEmpleado,direccionEmpleado,estadoEmpleado, usuario,
codigoSucursal,codigoTipoEmpleado)
    values ('9182746120101', 'Marcos','Alejandro','Alvaro Martinez', '32891287','5 Av. 8-12 zona 18', 1, 'Malejandro', 2, 5);
insert into Empleado (DPIEmpleado, primerNombre,otrosNombres,apellidos,telefonoEmpleado,direccionEmpleado,estadoEmpleado, usuario,
codigoSucursal,codigoTipoEmpleado)
    values ('2371264120101', 'Henry','Anibal','Juarez Cruz', '12907812','2 Av. 17-12 zona 5', 1,'H3NRY', 3, 2);
insert into Empleado (DPIEmpleado, primerNombre,otrosNombres,apellidos,telefonoEmpleado,direccionEmpleado,estadoEmpleado, usuario,
codigoSucursal,codigoTipoEmpleado)
    values ('9328137420101', 'Julia','Sofia','Becerro Garcia', '21096712','7 Av. 10-11 zona 8', 1, 'SofiJuli', 4, 1);
insert into Empleado (DPIEmpleado, primerNombre,otrosNombres,apellidos,telefonoEmpleado,direccionEmpleado,estadoEmpleado, usuario,
codigoSucursal,codigoTipoEmpleado)
    values ('7816326340101', 'Estuardo','Jose','Gonzalez Lopez', '59218912','4 Av. 5-9 zona 3', 1, 'Jose23', 5, 4);
insert into Empleado (DPIEmpleado, primerNombre,otrosNombres,apellidos,telefonoEmpleado,direccionEmpleado,estadoEmpleado, usuario,
codigoSucursal,codigoTipoEmpleado)
    values ('123', 'admin','admin','admin', '59218912','4 Av. 5-9 zona 3', 1, 'admin', 5, 4);

insert into Cliente (nombres, apellidos, nit, telefonoCliente, direccionCliente, correoCliente, estadoCliente, codigoTipoCliente) 
    values ('María Nicole', 'González García','8921781267', '12345678','5 Av. 2-3 zona 1', 'Maria123@gmail.com', 1, 1);
insert into Cliente (nombres, apellidos, nit, telefonoCliente, direccionCliente, correoCliente, estadoCliente, codigoTipoCliente) 
    values ('Juan Marcos', 'Rodríguez López','2189671245', '32439821', '1 Av. 11-11 zona 5', 'JMarcosR@gmailcom', 1, 2);
insert into Cliente (nombres, apellidos, nit, telefonoCliente, direccionCliente, correoCliente, estadoCliente, codigoTipoCliente) 
    values ('Ana Alejandra', 'Martínez Pérez','9012781267', '67126712', '12 Av. 15-18 zona 8', 'AnAlejandra23@gmail.com',1, 3);
insert into Cliente (nombres, apellidos, nit, telefonoCliente, direccionCliente, correoCliente, estadoCliente, codigoTipoCliente) 
    values ('Jaime Luis', 'Sánchez Ramírez','2012781267', '12671289', '6 Av. 2-13 zona 9', 'LuisJaime67@gmail.com', 1, 4);
insert into Cliente (nombres, apellidos, nit, telefonoCliente, direccionCliente, correoCliente, estadoCliente, codigoTipoCliente) 
    values ('Laura Melany', 'Fernández Torres','1289761265', '89217821', '10 Av. 9-2 zona 10', 'LauraFernandez1@gmail.com', 1, 5);

 

insert into Venta (fechaVenta, horaVenta, totalVenta, estadoVenta, codigoEmpleado, codigoCliente) 
    values ('2023-06-12','12:00', 50500.00,1,2,3); 
insert into Venta (fechaVenta, horaVenta, totalVenta, estadoVenta, codigoEmpleado, codigoCliente) 
    values ('2023-08-01','5:00', 23125.20,1,4,1); 
insert into Venta (fechaVenta, horaVenta, totalVenta, estadoVenta, codigoEmpleado, codigoCliente) 
    values ('2023-01-15','2:45', 45100.24,1,1,4); 
insert into Venta (fechaVenta, horaVenta, totalVenta, estadoVenta, codigoEmpleado, codigoCliente) 
    values ('2023-04-10','3:30', 30350.25,1,5,2); 
insert into Venta (fechaVenta, horaVenta, totalVenta, estadoVenta, codigoEmpleado, codigoCliente) 
    values ('2023-02-20','2:20', 45150.50,1,3,5); 

insert into Compra (numeroCompra, fechaCompra, totalCompra, codigoProveedor)
    values (1,'2022-12-12', 40000.00, 1);
insert into Compra (numeroCompra, fechaCompra, totalCompra, codigoProveedor)
    values (2,'2023-01-23', 50000.00, 2);
insert into Compra (numeroCompra, fechaCompra, totalCompra, codigoProveedor)
    values (3,'2022-11-21', 100000.00, 3);
insert into Compra (numeroCompra, fechaCompra, totalCompra, codigoProveedor)
    values (4,'2022-12-15', 80000.00, 4);
insert into Compra (numeroCompra, fechaCompra, totalCompra, codigoProveedor)
    values (5,'2023-02-14', 70500.00, 5);

insert into Vehiculo (marca, modelo, color, cantidadPuertas, stock, estadoVehiculo, codigoTipoVehiculo)
    values ('Mazda', 'Sedán', 'Negro', 4, 10, 1, 1);
insert into Vehiculo (marca, modelo, color, cantidadPuertas, stock, estadoVehiculo, codigoTipoVehiculo)
    values ('Honda', 'Sedán', 'Verde obscuro', 2, 12, 1, 2);
insert into Vehiculo (marca, modelo, color, cantidadPuertas, stock, estadoVehiculo, codigoTipoVehiculo)
    values ('Toyota', 'Hatchback', 'Gris', 4, 15, 1, 3);
insert into Vehiculo (marca, modelo, color, cantidadPuertas, stock, estadoVehiculo, codigoTipoVehiculo)
    values ('Mitsubishi', 'Hatchback', 'Blanco', 2, 10, 1, 4);
insert into Vehiculo (marca, modelo, color, cantidadPuertas, stock, estadoVehiculo, codigoTipoVehiculo)
    values ('Nissan', 'Convertible', 'Rojo', 2, 10, 1, 5);

insert into DetalleCompra (codigoVehiculo, cantidad, precio, codigoCompra)
    values (1, 10, 400000.00, 1);
insert into DetalleCompra (codigoVehiculo, cantidad, precio, codigoCompra)
    values (1, 8, 400000.00, 2);
insert into DetalleCompra (codigoVehiculo, cantidad, precio, codigoCompra)
    values (1, 9, 900000.00, 3);
insert into DetalleCompra (codigoVehiculo, cantidad, precio, codigoCompra)
    values (1, 7, 560000.00, 4);
insert into DetalleCompra (codigoVehiculo, cantidad, precio, codigoCompra)
    values (1, 5, 352000.00, 5);

insert into DetalleVenta (cantidad, codigoVehiculo, codigoVenta) 
    values (3, 1,1);
insert into DetalleVenta (cantidad, codigoVehiculo, codigoVenta) 
    values (6, 2,3);
insert into DetalleVenta (cantidad, codigoVehiculo, codigoVenta) 
    values (2, 4,5);
insert into DetalleVenta (cantidad, codigoVehiculo, codigoVenta) 
    values (5, 5,2);
insert into DetalleVenta (cantidad, codigoVehiculo, codigoVenta) 
    values (7, 3,4);

insert into Sucursal_has_Compra (codigoSucursal, codigoCompra)
    values (1,1);
insert into Sucursal_has_Compra (codigoSucursal, codigoCompra)
    values (2,2);
insert into Sucursal_has_Compra (codigoSucursal, codigoCompra)
    values (3,3);
insert into Sucursal_has_Compra (codigoSucursal, codigoCompra)
    values (4,4);
insert into Sucursal_has_Compra (codigoSucursal, codigoCompra)
    values (5,5);

 

 

Select * from Empleado;