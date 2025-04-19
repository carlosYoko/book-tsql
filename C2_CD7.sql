-- Eliminar archivo secundario VENTAS_SEC2 de la base de datos en /var/opt/mssql/data/VENTAS (Docker)
-- En caso de que hayan registros en el fichero ejecutar:
-- DBCC SHRINKFILE (VENTAS_SEC2, EMPTYFILE);
-- Esto mueve los datos que hay en ese archivo a otros archivos del mismo filegroup.

ALTER DATABASE VENTAS
	REMOVE FILE VENTAS_SEC2
GO

-- Visualizar archivos *..DF
USE VENTAS
GO
SP_HELPDB VENTAS
GO