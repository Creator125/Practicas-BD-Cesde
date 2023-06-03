CREATE DATABASE CordobaObed
GO
USE CordobaObed
GO

CREATE TABLE TablaA(
	idA INT PRIMARY KEY,
	Nombre NVARCHAR(40),
	FechaIngreso DATE
)

CREATE TABLE TablaB(
	idB INT PRIMARY KEY,
	Nombre NVARCHAR(40),
	Horas DATE
)

CREATE TABLE TablaC(
	idC INT PRIMARY KEY,
	idA INT,
	idB INT,
	Matricula INT,
	FOREIGN KEY (idA) REFERENCES TablaA(IdA),
	FOREIGN KEY (idB) REFERENCES TablaB(IdB)
)