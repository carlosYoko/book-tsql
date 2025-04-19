USE master
GO

-- Eliminar base de datos si existe
IF DB_ID('BD_PROYECTOS') IS NOT NULL
	DROP DATABASE BD_PROYECTOS
GO

-- Crear base de datos DB_PROYECTOS en /var/opt/mssql/data/PROYECTOS/DATA (Docker) con especifiacion de archivo maestro y secundario
CREATE DATABASE BD_PROYECTOS
	ON PRIMARY (
	NAME = N'BD_PROYECTOS',
	FILENAME = N'/var/opt/mssql/data/PROYECTOS/DATA/BD_PROYECTOS.mdf',
	SIZE = 100MB,
	MAXSIZE = 250MB,
	FILEGROWTH = 5MB
),
(
	NAME = N'BD_PROYECTOS_SEC',
	FILENAME = N'/var/opt/mssql/data/PROYECTOS/DATA/BD_PROYECTOS_SEC.ndf',
	SIZE = 20MB,
	MAXSIZE = 70MB,
	FILEGROWTH = 10%
)
LOG ON(
	NAME = N'BD_PROYECTOS_LOG',
	FILENAME = N'/var/opt/mssql/data/PROYECTOS/DATA/BD_PROYECTOS_LOG.ldf',
	SIZE = 10MB,
	MAXSIZE = 40MB,
	FILEGROWTH = 2MB
)
GO
