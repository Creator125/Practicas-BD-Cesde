CREATE DATABASE Clubnautico
go
Use Clubnautico
go

CREATE TABLE Socios(
	CedulaSoc NVARCHAR(20) PRIMARY KEY,
	Apellido NVARCHAR(40) NOT NULL,
	NombreSoc NVARCHAR(40) NOT NULL,
	DirreccionSoc NVARCHAR(40),
	TelefonoSoc NVARCHAR(20),
	Correo NVARCHAR(30),
	FechaIngreso DATE
)


CREATE TABLE Embarcaciones(
	MatriculaEmb NVARCHAR(20) PRIMARY KEY,
	NombreEmb NVARCHAR(40),
	Dimensiones NVARCHAR(30),
	CedulaSoc NVARCHAR(20),
	FOREIGN KEY (CedulaSoc) REFERENCES Socios(CedulaSoc)
)

CREATE TABLE Amarre(
	NumAmarre INT PRIMARY KEY,
	ContadorAgua BIT,
	ContadorLuz BIT,
	ServiciosMant NVARCHAR(40),
	MatriculaEmb NVARCHAR(20),
	FOREIGN KEY (MatriculaEmb) REFERENCES Embarcaciones(MatriculaEmb)
)

CREATE TABLE Zonas(
	LetraZona NCHAR PRIMARY KEY,
	TipoBarcos NVARCHAR(50),
	NumBarcos INT,
	Profundidad NVARCHAR(20),
	AnchoAmarres NVARCHAR(30),
	NumAmarre INT,
	FOREIGN KEY (NumAmarre) REFERENCES Amarre(NumAmarre)
)

CREATE TABLE Empleados(
	CedulaEmp NVARCHAR(20) PRIMARY KEY,
	NombreEmp NVARCHAR(40) NOT NULL,
	DirreccionEmp NVARCHAR(40),
	TelefonoEmp NVARCHAR(20),
	Especialidad NVARCHAR(40),
	LetraZona NCHAR,
	FOREIGN KEY (LetraZona) REFERENCES Zonas(LetraZona)
)