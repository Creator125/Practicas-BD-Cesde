CREATE DATABASE Crud
GO

USE Crud

CREATE TABLE Estudiantes(
	idEstudiantes INT PRIMARY KEY,
	apellidos NVARCHAR(20),
	nombres NVARCHAR(20),
	edad INT,
	vlrMatricula INT
)

SELECT * FROM INFORMATION_SCHEMA.COLUMNS

ALTER TABLE Estudiantes
ADD Ciudad NVARCHAR(20)
SELECT * FROM INFORMATION_SCHEMA.COLUMNS

ALTER TABLE Estudiantes
ALTER COLUMN edad TINYINT
SELECT * FROM INFORMATION_SCHEMA.COLUMNS
