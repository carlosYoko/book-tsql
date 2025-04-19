USE master
GO

-- Eliminar base de datos si existe
IF DB_ID('VENTAS') IS NOT NULL
	DROP DATABASE VENTAS
GO

-- Crear base de datos en /var/opt/mssql/data/VENTAS (Docker) con especifiacion de archivo maestro
CREATE DATABASE VENTAS
	ON PRIMARY (
	NAME = 'VENTAS_PRI',
	FILENAME = '/var/opt/mssql/data/VENTAS/VENTAS.mdf',
	SIZE = 50MB,
	MAXSIZE = 150MB,
	FILEGROWTH = 20%
),
(
	NAME = 'VENTAS_SEC',
	FILENAME = '/var/opt/mssql/data/VENTAS/VENTAS.ndf',
	SIZE = 10MB,
	MAXSIZE = 50MB,
	FILEGROWTH = 2MB
)
GO

-- Visualizar base de datos en un listado
SELECT * FROM SYS.sysdatabases S
	WHERE S.name = 'VENTAS'
GO

-- Visualizar archivos *..DF
SP_HELPDB VENTAS
GO
