-- Modificar base de datos en /var/opt/mssql/data/VENTAS (Docker) añadiendo 3 ficheros secundarios NDF
ALTER DATABASE VENTAS
	ADD FILE (
	NAME = 'VENTAS_SEC1',
	FILENAME = '/var/opt/mssql/data/VENTAS/VENTAS_SEC1.mdf',
	SIZE = 10MB,
	MAXSIZE = 500MB,
	FILEGROWTH = 10%
)
GO
ALTER DATABASE VENTAS
	ADD FILE (
	NAME = 'VENTAS_SEC2',
	FILENAME = '/var/opt/mssql/data/VENTAS/VENTAS_SEC1.mdf',
	SIZE = 10MB,
	MAXSIZE = 500MB,
	FILEGROWTH = 10%
)
GO

-- Visualizar archivos *..DF
SP_HELPDB VENTAS
GO