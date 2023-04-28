CREATE DATABASE Vehiculos
GO

USE Vehiculos
GO

CREATE TABLE Vehiculos(
	idVehiculo INT IDENTITY(1,1) PRIMARY KEY,
	placa NVARCHAR(7) UNIQUE NOT NULL,
	marca NVARCHAR(20),
	modelo NVARCHAR(20),
	ancho INT,
	kilometraje INT
)

SELECT * FROM Vehiculos

-- Agregrar el tipo de dato de una columna
ALTER TABLE Vehiculos
ADD precio INT


-- Modificar el tipo de dato de una columna
ALTER TABLE Vehiculos
ALTER COLUMN ancho SMALLINT

SELECT * FROM INFORMATION_SCHEMA.COLUMNS

INSERT INTO Vehiculos (placa, marca, modelo, ancho, kilometraje, precio)
			VALUES('iys319', 'Renault', 'Duster', 2015, 105000, 495000000)

SELECT * FROM Vehiculos

INSERT INTO Vehiculos (placa, marca, modelo, precio, kilometraje, ancho)
			VALUES('XYZ', 'Yamaha', 'MAX', 10000000, 0, 2023)

INSERT INTO Vehiculos VALUES('www003', 'Bajaj', 'DOMINAR', 2012, 1100, 140000)

SELECT * FROM Vehiculos

-- ORDER: placa, marca, modelo, ancho, kilometraje, precio
INSERT INTO Vehiculos VALUES('EWD234', 'BMW', 'M4', 2019, 11079, 310000000)
INSERT INTO Vehiculos VALUES('TRG298', 'Mercedes-Benz', 'Clase GLC', 2022, 20864, 296000000)
INSERT INTO Vehiculos VALUES('WNU96F', 'BMW', 'F900R', 2021, 2500, 55500000)
INSERT INTO Vehiculos VALUES('PDD218', 'Suzuki', 'Swift', 2021, 10000, 55000000)
INSERT INTO Vehiculos VALUES('DGT124', 'Bajaj', 'DOMINAR 400', 2020, 36638, 13100000)
INSERT INTO Vehiculos VALUES('TYX108', 'Kia', 'Picato', 2023, 12231, 46500000)
INSERT INTO Vehiculos VALUES('ZPP045', 'Yamaha', 'FZ 250', 2023, 8861, 14900000)
INSERT INTO Vehiculos VALUES('EVO114', 'Mitsubishi', 'Montero', 1998, 230000, 39500000)
INSERT INTO Vehiculos VALUES('RTX234', 'Yamaha', 'FZ25', 2023, 7000, 13800000)
INSERT INTO Vehiculos VALUES('DVG390', 'Toyota', '4Runner', 2021, 22819, 279000000)
INSERT INTO Vehiculos VALUES('RTV123', 'Yamaha', 'XMAX300', 2020, 5130, 30500000)
INSERT INTO Vehiculos VALUES('DRS37E', 'Kawasaki', 'KLX 150', 2016, 31000, 7800000)
INSERT INTO Vehiculos VALUES('FQU541', 'Kia', 'Sorento', 2019, 28000, 115000000)
INSERT INTO Vehiculos VALUES('RFG23A', 'Suzuki', 'DL 650', 2023, 5700, 48500000)
INSERT INTO Vehiculos VALUES('DSA395', 'Mazda', 'CX-5', 2023, 6300, 158000000)
INSERT INTO Vehiculos VALUES('OBB63E', 'BMW', 'F 800 GS', 2017, 45314, 49990000)



CREATE TABLE Clientes(
	idCliente INT PRIMARY KEY,
	nombreCli NVARCHAR(20)
)

CREATE TABLE Ventas(
	idVenta INT IDENTITY(1,1) PRIMARY KEY,
	idCliente INT,
	idVehiculo INT,
	lugarVenta NVARCHAR(30),
	FOREIGN KEY (idCliente) REFERENCES Clientes (idCliente),
	FOREIGN KEY (idVehiculo) REFERENCES Vehiculos (idVehiculo)
)

INSERT INTO Clientes VALUES(123, 'Obed')
INSERT INTO Ventas VALUES(123, 5, 'San Diego')

SELECT * FROM Clientes
SELECT * FROM Vehiculos
SELECT * FROM Ventas

UPDATE Vehiculos
SET marca = 'Renault'
WHERE idVehiculo = 3

UPDATE Vehiculos
SET marca = 'Renault',
	placa = 'RFG256',
	precio = 46500000
WHERE idVehiculo = 2

DELETE Vehiculos
WHERE idVehiculo = 3
SELECT * FROM Vehiculos