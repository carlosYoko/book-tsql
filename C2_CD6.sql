-- Modificar archivo secundario SEC1 de la base de datos en /var/opt/mssql/data/VENTAS (Docker)
ALTER DATABASE VENTAS
MODIFY FILE (
	NAME = 'VENTAS_SEC1',
	SIZE = 20MB,
	FILEGROWTH = 15
)
GO

-- Visualizar archivos *..DF
USE VENTAS
GO
SP_HELPFILE VENTAS_SEC1
GO