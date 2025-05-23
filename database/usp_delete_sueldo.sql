SET NOCOUNT ON
USE dev
GO

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE ID = OBJECT_ID('dbo.usp_delete_sueldo') AND SYSSTAT & 0xf = 4)
	DROP PROCEDURE dbo.usp_delete_sueldo
GO

CREATE PROCEDURE usp_delete_sueldo
	@ID INT
AS 
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED

DELETE FROM Sueldos WHERE ClaveEmpleado = @ID
