CREATE DATABASE AgenciaViajes;
USE AgenciaViajes;

CREATE TABLE Sucursal(
	codigoSucursal INT PRIMARY KEY,
	direccion VARCHAR(100),
	telefono VARCHAR(20)
);

CREATE TABLE Hotel(
  codigoHotel INT PRIMARY KEY,
  nombre VARCHAR(100),
  direccion VARCHAR(100),
  ciudad VARCHAR(50),
  paginaWeb VARCHAR(100),
  nHabitaciones INT,
  precioPersona INT
);

CREATE TABLE Vuelos (
  numeroVuelo INT PRIMARY KEY,
  fechaHora DATETIME,
  origen VARCHAR(50),
  destino VARCHAR(50),
  precioPersona DECIMAL(10, 2),
  valorEquipaje DECIMAL(10, 2),
  clase VARCHAR(10)
);

CREATE TABLE Contratos(
	idContrato INT PRIMARY KEY,
    codigoSucursal INT,
    numeroVuelo INT,
    CodigoHotel INT,
    FOREIGN KEY (codigoSucursal) REFERENCES Sucursal(codigoSucursal),
    FOREIGN KEY (numeroVuelo) REFERENCES Vuelos(numeroVuelo),
    FOREIGN KEY (CodigoHotel) REFERENCES Hotel(CodigoHotel)
);

CREATE TABLE Turistas(
	cedulaPasaporte VARCHAR(20) PRIMARY KEY,
	nombre VARCHAR(20),
	apellido VARCHAR(100),
	correo VARCHAR(100),
	celular VARCHAR(20),
    idContrato INT,
	FOREIGN KEY (idContrato) REFERENCES Contratos(idContrato)
);