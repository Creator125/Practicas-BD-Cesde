CREATE DATABASE Inmobiliaria
go
USE Inmobiliaria
go

CREATE TABLE Propietarios(
	IdPropietario INT PRIMARY KEY,
	NombreProp NVARCHAR(40) NOT NULL,
	CelularProp NVARCHAR(10) NOT NULL,
	DirProp NVARCHAR(30),
	CorrreoProp NVARCHAR(100)
)

CREATE TABLE Inmuebles(
	IdInmueble INT PRIMARY KEY IDENTITY(1,1),
	IdPropietario INT,
	Barrio NVARCHAR(40) NOT NULL,
	Area SMALLINT,
	NroHabitaciones TINYINT,
	Cocina NVARCHAR(50),
	Energia BIT,
	Gas BIT,
	Garage BIT,
	VlrArriendo INT,
	FOREIGN KEY (IdPropietario) REFERENCES Propietarios(IdPropietario)
)

CREATE TABLE Clientes(
	IdCliente INT PRIMARY KEY,
	NombreCli NVARCHAR(40),
	CelularCli NVARCHAR(10),
	CorreoCli NVARCHAR(100)
)

CREATE TABLE Visitas(
	IdVisita INT PRIMARY KEY IDENTITY(1,1),
	IdInmueble INT,
	IdCliente INT,
	FechaVisita DATE,
	FOREIGN KEY (IdInmueble) REFERENCES Inmuebles(IdInmueble),
	FOREIGN KEY (IdCliente) REFERENCES Clientes(IdCliente)
)