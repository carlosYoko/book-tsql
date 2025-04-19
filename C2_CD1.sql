USE master
GO

-- Eliminar si existe la base de datos
IF DB_ID('VENTAS') IS NOT NULL
    DROP DATABASE VENTAS;
GO

-- Crear la base de datos 'VENTAS'
CREATE DATABASE VENTAS;
GO

-- Visualizar la base de datos 'VENTAS'
SELECT * FROM SYS.sysdatabases S
WHERE S.name = 'VENTAS'
GO

-- Visualizar archivos *..DF
SP_HELPDB VENTAS
GO