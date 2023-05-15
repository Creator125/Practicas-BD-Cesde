USE HiperAlmacen

SELECT * FROM Clientes

/*Crear uno procedimiento para agregar clientes*/

CREATE PROCEDURE sp_addCliente -- Tuve un error por el tipo de dato
	@apellido VARCHAR(20),
	@nombre VARCHAR(20),
	@ciudad VARCHAR(20),
	@celular VARCHAR(20),
	@comuna VARCHAR(20),
	@fecha DATE
	AS
	BEGIN
		INSERT INTO Clientes (Apellido, NombreCli, Ciudad, celular, Comuna, FechaIng)
					VALUES(@apellido,@nombre, @ciudad, @celular, @comuna, @fecha)
	END

SELECT * FROM INFORMATION_SCHEMA.COLUMNS


-- Procedimineto almacenados
EXECUTE sp_addCliente 'Gomez Cordoba', 'Tatiana', 'Envigado', '3006797832', 'Comuna 3', '15/05/2023'
SELECT * FROM Clientes ORDER BY Identificacion DESC

-- Crear un Procedimineto almacenado para la tabla productos
SELECT * FROM Productos

CREATE PROCEDURE sp_addProductos
		@idCategoria INT,
		@producto VARCHAR(100),
		@precio INT,
		@cantidad SMALLINT,
		@CantidadStock SMALLINT,
		@nivelPedido BIT,
		@descontinuado BIT,
		@iva SMALLINT
		AS
		BEGIN
			INSERT INTO Productos(IdCategoria,NombrePro, Precio, Cantidad, CantidadStock, NivelPedido, Descontinuado, Iva)
						   VALUES(@idCategoria,@producto,  @precio, @cantidad, @CantidadStock, @nivelPedido, @descontinuado, @iva)
		END

EXECUTE sp_addProductos 2,'tv 85', 7500000, 13, 1, 1, 0, 19
SELECT * FROM Productos ORDER BY IdCategoria