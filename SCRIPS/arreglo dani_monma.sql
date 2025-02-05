USE [MonMa_PRO]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ConversionesProductos_Produccion_Estado]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ConversionesProductos_Produccion] DROP CONSTRAINT [DF_ConversionesProductos_Produccion_Estado]
END

GO
/****** Object:  Table [dbo].[ProductosMinutas]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductosMinutas]') AND type in (N'U'))
DROP TABLE [dbo].[ProductosMinutas]
GO
/****** Object:  Table [dbo].[ProductosKardexProveedor]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductosKardexProveedor]') AND type in (N'U'))
DROP TABLE [dbo].[ProductosKardexProveedor]
GO
/****** Object:  Table [dbo].[Procesar_FacturaVenta]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_FacturaVenta]') AND type in (N'U'))
DROP TABLE [dbo].[Procesar_FacturaVenta]
GO
/****** Object:  Table [dbo].[Procesar_FacturaCompra]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_FacturaCompra]') AND type in (N'U'))
DROP TABLE [dbo].[Procesar_FacturaCompra]
GO
/****** Object:  Table [dbo].[Procesar_DevolucionVenta]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_DevolucionVenta]') AND type in (N'U'))
DROP TABLE [dbo].[Procesar_DevolucionVenta]
GO
/****** Object:  Table [dbo].[Procesar_DevolucionCompra]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_DevolucionCompra]') AND type in (N'U'))
DROP TABLE [dbo].[Procesar_DevolucionCompra]
GO
/****** Object:  Table [dbo].[Procesar_AbonosCartera_Proveedor]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_AbonosCartera_Proveedor]') AND type in (N'U'))
DROP TABLE [dbo].[Procesar_AbonosCartera_Proveedor]
GO
/****** Object:  Table [dbo].[Procesar_AbonosCartera_Cliente]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_AbonosCartera_Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Procesar_AbonosCartera_Cliente]
GO
/****** Object:  Table [dbo].[Factura_Electronica_Doc_Soporte]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura_Electronica_Doc_Soporte]') AND type in (N'U'))
DROP TABLE [dbo].[Factura_Electronica_Doc_Soporte]
GO
/****** Object:  Table [dbo].[ConversionesProductos_Produccion]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConversionesProductos_Produccion]') AND type in (N'U'))
DROP TABLE [dbo].[ConversionesProductos_Produccion]
GO
/****** Object:  StoredProcedure [dbo].[sp_Terceros_Consultar_Para_Envio]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Terceros_Consultar_Para_Envio]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_Terceros_Consultar_Para_Envio]
GO
/****** Object:  StoredProcedure [dbo].[sp_iFacturaCompraTotales_Consultar_x_NoCompra]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_iFacturaCompraTotales_Consultar_x_NoCompra]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_iFacturaCompraTotales_Consultar_x_NoCompra]
GO
/****** Object:  StoredProcedure [dbo].[sp_iFacturaCompraIvas_Consultar_x_NoCompra]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_iFacturaCompraIvas_Consultar_x_NoCompra]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_iFacturaCompraIvas_Consultar_x_NoCompra]
GO
/****** Object:  StoredProcedure [dbo].[sp_iFacturaCompraDetallePrincipal_Consultar_x_NoCompra]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_iFacturaCompraDetallePrincipal_Consultar_x_NoCompra]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[sp_iFacturaCompraDetallePrincipal_Consultar_x_NoCompra]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_ProductosKardexPromedio]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_ProductosKardexPromedio]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_ProductosKardexPromedio]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_FacturaVentaProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_FacturaVentaProcesar_Local]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_FacturaVentaProcesar_Local]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_FacturaVentaProcesar]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_FacturaVentaProcesar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_FacturaVentaProcesar]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_FacturaCompraProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_FacturaCompraProcesar_Local]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_FacturaCompraProcesar_Local]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_FacturaCompraProcesar]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_FacturaCompraProcesar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_FacturaCompraProcesar]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_DevolucionFacturaVentaProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_DevolucionFacturaVentaProcesar_Local]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_DevolucionFacturaVentaProcesar_Local]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_DevolucionFacturaVentaProcesar]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_DevolucionFacturaVentaProcesar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_DevolucionFacturaVentaProcesar]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_DevolucionFacturaCompraProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_DevolucionFacturaCompraProcesar_Local]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_DevolucionFacturaCompraProcesar_Local]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_DevolucionFacturaCompraProcesar]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_DevolucionFacturaCompraProcesar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_DevolucionFacturaCompraProcesar]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_CarteraTercerosProveedorProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_CarteraTercerosProveedorProcesar_Local]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_CarteraTercerosProveedorProcesar_Local]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_CarteraTercerosProveedorProcesar]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_CarteraTercerosProveedorProcesar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_CarteraTercerosProveedorProcesar]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_CarteraTercerosClientesProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_CarteraTercerosClientesProcesar_Local]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_CarteraTercerosClientesProcesar_Local]
GO
/****** Object:  StoredProcedure [dbo].[Guardar_CarteraTercerosClientesProcesar]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_CarteraTercerosClientesProcesar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[Guardar_CarteraTercerosClientesProcesar]
GO
/****** Object:  StoredProcedure [dbo].[fe_Terceros_Consultar]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_Terceros_Consultar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fe_Terceros_Consultar]
GO
/****** Object:  StoredProcedure [dbo].[fe_FacturaVenta_Doc_Soporte_Consultar]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_FacturaVenta_Doc_Soporte_Consultar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fe_FacturaVenta_Doc_Soporte_Consultar]
GO
/****** Object:  StoredProcedure [dbo].[fe_FacturaCompra_Doc_Soporte_Consultar_UtlFactura]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_FacturaCompra_Doc_Soporte_Consultar_UtlFactura]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fe_FacturaCompra_Doc_Soporte_Consultar_UtlFactura]
GO
/****** Object:  StoredProcedure [dbo].[fe_FacturaCompra_Doc_Soporte_Consultar]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_FacturaCompra_Doc_Soporte_Consultar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fe_FacturaCompra_Doc_Soporte_Consultar]
GO
/****** Object:  StoredProcedure [dbo].[fe_FacturaCompra_Consultar_x_NoCompra]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_FacturaCompra_Consultar_x_NoCompra]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fe_FacturaCompra_Consultar_x_NoCompra]
GO
/****** Object:  StoredProcedure [dbo].[fe_Factura_Electronica_Doc_Soporte_Actualizar]    Script Date: 10/04/2024 09:43:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_Factura_Electronica_Doc_Soporte_Actualizar]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[fe_Factura_Electronica_Doc_Soporte_Actualizar]
GO
/****** Object:  StoredProcedure [dbo].[fe_Factura_Electronica_Doc_Soporte_Actualizar]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_Factura_Electronica_Doc_Soporte_Actualizar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[fe_Factura_Electronica_Doc_Soporte_Actualizar]
    @NoCompra int
   ,@NoFactura nvarchar(20)
   ,@Nombre_FE varchar(40)
   ,@Ruta varchar(400)
   ,@Prefijo VARCHAR(50)
   ,@Consecutivo BIGINT
   ,@CUFE varchar(500)
   ,@NC INT
AS
BEGIN
	IF @NC=0
		BEGIN	
			UPDATE [dbo].[Factura_Electronica_Doc_Soporte]
			   SET [Nombre_FE] = @Nombre_FE
				  ,[Ruta] = @Ruta
				  ,[FechaEnviada] = GETDATE()
				  ,[Estado] = 1
				  ,[Prefijo] = @Prefijo
				  ,[Consecutivo] =@Consecutivo
				  ,[CUFE]=@CUFE
			 WHERE [NoCompra]=@NoCompra
		END
	ELSE
		BEGIN
			UPDATE [dbo].[Factura_Electronica_Doc_Soporte]
			   SET [Nombre_FENC] = @Nombre_FE
				  ,[RutaNC] = @Ruta
				  ,[FechaNC] = GETDATE()
				  ,[PrefijoNC] = @Prefijo
				  ,[ConsecutivoNC] =@Consecutivo
				  ,[CUFENC]=@CUFE
			 WHERE [NoCompra]=@NoCompra

		END

END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[fe_FacturaCompra_Consultar_x_NoCompra]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_FacturaCompra_Consultar_x_NoCompra]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[fe_FacturaCompra_Consultar_x_NoCompra]
	@NoCompra int
AS
BEGIN	
	SELECT [NoCompra]
	      ,[NoFactura]
		  ,[FechaCompra]
		  ,[FechaVence]
		  ,[NoEquipo]
		  ,[IdTercero]
		  ,0 AS [IdVendedor]
		  ,[Observacion]
	  FROM [dbo].[FacturaCompraPrincipal]
	WHERE [NoCompra]=@NoCompra
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[fe_FacturaCompra_Doc_Soporte_Consultar]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_FacturaCompra_Doc_Soporte_Consultar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[fe_FacturaCompra_Doc_Soporte_Consultar]
   @FechaInicial date,
   @FechaFinal date,
   @NoTercero int
AS
BEGIN	
	IF @NoTercero=0
		BEGIN
			SET @NoTercero=NULL;
		END

	SELECT FE.[NoCompra] 
		  ,FE.[Nombre_FE]
		  ,FE.[Ruta]
		  ,FE.[FechaRegistrada]
		  ,FE.[FechaEnviada]
		  ,FE.[Estado]
		  ,F.[NoFactura]
		  ,T.NombreCompleto
		  ,FA.[TotalBruto] AS TotalFacturaBase
		  ,FA.[IvaGenerado] AS TotalFacturaIva
		  ,FA.[TotalPagar] AS TotalFacturaNeto
		  ,FA.[DctoGeneral] AS TotalDescuento
		  ,FE.[CUFE]
		  ,FE.[Consecutivo]
		  ,FE.[Prefijo]
		  ,F.[NoEquipo]
	  FROM [dbo].[Factura_Electronica_Doc_Soporte] FE INNER JOIN
		   [dbo].[FacturaCompraPrincipal] F ON FE.[NoCompra]=F.[NoCompra] INNER JOIN 
		   [dbo].[Terceros] T ON F.IdTercero=T.IdTerceros INNER JOIN 
		   [dbo].[FacturaCompraTotales] FA ON F.[NoCompra]=FA.[NoCompra]
	WHERE FE.[FechaNC] IS NULL
	  AND F.[NoTipo] IN (2,3,4,5)
	  AND F.IdTercero=ISNULL(@NoTercero,F.IdTercero)
	  AND (CAST(F.[FechaCompra] AS DATE) BETWEEN CAST(@FechaInicial AS DATE) AND CAST(@FechaFinal AS DATE))

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[fe_FacturaCompra_Doc_Soporte_Consultar_UtlFactura]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_FacturaCompra_Doc_Soporte_Consultar_UtlFactura]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[fe_FacturaCompra_Doc_Soporte_Consultar_UtlFactura]
AS
BEGIN	
	DECLARE @ElConsecutivo bigint;
	
	SELECT @ElConsecutivo=MAX([Consecutivo])
	FROM [dbo].[Factura_Electronica_Doc_Soporte]

	IF @ElConsecutivo IS NULL
		BEGIN
			SET @ElConsecutivo=0;
		END
	ELSE
		BEGIN
			SET @ElConsecutivo=@ElConsecutivo+1;
		END

	SELECT @ElConsecutivo AS Consecutivo


END' 
END
GO
/****** Object:  StoredProcedure [dbo].[fe_FacturaVenta_Doc_Soporte_Consultar]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_FacturaVenta_Doc_Soporte_Consultar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[fe_FacturaVenta_Doc_Soporte_Consultar]
   @FechaInicial date,
   @FechaFinal date,
   @NoTercero int
AS
BEGIN	
	IF @NoTercero=0
		BEGIN
			SET @NoTercero=NULL;
		END

	SELECT FE.[NoCompra] 
		  ,FE.[Nombre_FE]
		  ,FE.[Ruta]
		  ,FE.[FechaRegistrada]
		  ,FE.[FechaEnviada]
		  ,FE.[Estado]
		  ,F.[NoFactura]
		  ,T.NombreCompleto
		  ,FA.[TotalBruto] AS TotalFacturaBase
		  ,FA.[IvaGenerado] AS TotalFacturaIva
		  ,FA.[TotalPagar] AS TotalFacturaNeto
		  ,FA.[DctoGeneral] AS TotalDescuento
		  ,FE.[CUFE]
		  ,FE.[Consecutivo]
		  ,FE.[Prefijo]
		  ,F.[NoEquipo]
	  FROM [dbo].[Factura_Electronica_Doc_Soporte] FE INNER JOIN
		   [dbo].[FacturaCompraPrincipal] F ON FE.[NoCompra]=F.[NoCompra] INNER JOIN 
		   [dbo].[Terceros] T ON F.IdTercero=T.IdTerceros INNER JOIN 
		   [dbo].[FacturaCompraTotales] FA ON F.[NoCompra]=FA.[NoCompra]
	WHERE FE.[FechaNC] IS NULL
	  AND F.[NoTipo] IN (2,3,4,5)
	  AND F.IdTercero=ISNULL(@NoTercero,F.IdTercero)
	  AND (CAST(F.[FechaCompra] AS DATE) BETWEEN CAST(@FechaInicial AS DATE) AND CAST(@FechaFinal AS DATE))

END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[fe_Terceros_Consultar]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fe_Terceros_Consultar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--SELECT FE.[NoFactura]
--      ,FE.[Nombre_FE]
--      ,FE.[Ruta]
--      ,FE.[FechaRegistrada]
--      ,FE.[FechaEnviada]
--      ,FE.[Estado]
--	  ,T.NombreCompleto
--  FROM [dbo].[Factura_Electronica] FE INNER JOIN
--       [dbo].[FacturaVentaPrincipal] F ON FE.NoFactura=F.NoFactura INNER JOIN 
--       [dbo].[Terceros] T ON F.IdTercero=T.IdTerceros

CREATE PROCEDURE [dbo].[fe_Terceros_Consultar]
	@NoTercero bigint
AS
BEGIN	   
		DECLARE @Telefono varchar(50),
				@Emial varchar(500);

		SELECT @Emial=[Email]
		FROM [dbo].[TercerosEmail]
		WHERE [IdTerceros]=@NoTercero AND Id=1

		SELECT @Telefono=[Telefono]
		FROM [dbo].[TercerosTelefonos]
		WHERE [IdTerceros]=@NoTercero AND Id=1

		--DEPARTAMENTO--
		DECLARE @Departamento varchar(500),
				@Cod_Departamento varchar(3);
		
		SELECT @Departamento=D.Departamento
			  ,@Cod_Departamento=D.Codigo
		FROM [dbo].[Terceros] T INNER JOIN 
			 [MonMa_BAS].[dbo].[Departamentos] D ON T.IdDepartamento=D.IdDepartamento
		WHERE T.[IdTerceros]=@NoTercero
	 
		--MUNICIPIO--
		DECLARE @Ciudad varchar(500),
				@Cod_Ciudad varchar(3);

		SELECT @Ciudad=C.NombreCiudad
			  ,@Cod_Ciudad=C.Codigo
		FROM [dbo].[Terceros] T INNER JOIN 
			 [MonMa_BAS].[dbo].[Ciudades] C ON T.IdCiudad=C.IdCiudad
		WHERE T.[IdTerceros]=@NoTercero
     

		IF LEN(ISNULL(@Cod_Departamento,''''))<=0 OR LEN(ISNULL(@Cod_Ciudad,''''))<=0
			BEGIN
				SELECT @Departamento=[Valor]
				FROM [dbo].[Factura_Electronica_Configuracion]
				WHERE ID=1;
		
				SELECT @Cod_Departamento=[Valor]
				FROM [dbo].[Factura_Electronica_Configuracion]
				WHERE ID=2;

				SELECT @Departamento=[Valor]
				FROM [dbo].[Factura_Electronica_Configuracion]
				WHERE ID=1;

				SELECT @Ciudad=[Valor]
				FROM [dbo].[Factura_Electronica_Configuracion]
				WHERE ID=3;
		
				SELECT @Cod_Ciudad=[Valor]
				FROM [dbo].[Factura_Electronica_Configuracion]
				WHERE ID=4;
			END

		DECLARE @TipoDocumento 	tinyint;

		SELECT @TipoDocumento=td.IdMostrar
		FROM [dbo].[Terceros] T INNER JOIN 
			 [MonMa_BAS].[dbo].[TiposDocumentos] TD ON T.IdTipoDocumento=TD.IdTipoDocumento
		WHERE T.[IdTerceros]=@NoTercero

		
		DECLARE  @Codigo_CIIU varchar(50);

		IF EXISTS(SELECT *
				  FROM [dbo].[Terceros] T INNER JOIN 
					   [dbo].[TercerosCliente] TC ON T.IdTerceros=TC.IdTerceros 
				  WHERE T.[IdTerceros]=@NoTercero)
			BEGIN
				SELECT @Codigo_CIIU=td.Codigo
				FROM [dbo].[TercerosCliente] T INNER JOIN 
					 [MonMa_BAS].[dbo].[GrupoTerceroClientes] TD ON T.IdGrupoCliente=TD.IdGrupoTerceroClientes
				WHERE T.[IdTerceros]=@NoTercero

				IF @Codigo_CIIU IS NULL
					BEGIN
						SET @Codigo_CIIU=''''
					END

				SELECT T.[IdTerceros]
					  ,@TipoDocumento AS [TipoDocumento]
					  ,T.[NoIdentificacion]
					  ,T.[NombreCompleto]
					  ,TC.[RazonSocial]
					  ,TC.RepresentateLegal
					  ,TC.[NombreEstablecimiento]
					  ,TC.[Direccion]
					  ,TC.[IdTipoNit] AS TipoPersona
					  ,@Emial AS Email
					  ,@Telefono AS Telefono
	  
					  ,@Cod_Departamento AS Cod_Departamento 
					  ,@Departamento AS Departamento 
					  ,@Cod_Departamento+@Cod_Ciudad AS Cod_Ciudad 
					  ,@Ciudad AS Ciudad 
					  ,@Codigo_CIIU AS Codigo_CIIU
				FROM [dbo].[Terceros] T INNER JOIN 
					 [dbo].[TercerosCliente] TC ON T.IdTerceros=TC.IdTerceros 
				WHERE T.[IdTerceros]=@NoTercero

			END
		ELSE
			BEGIN
				SELECT @Codigo_CIIU=td.Codigo
				FROM [dbo].[TercerosCliente] T INNER JOIN 
					 [MonMa_BAS].[dbo].[GrupoTerceroClientes] TD ON T.IdGrupoCliente=TD.IdGrupoTerceroClientes
				WHERE T.[IdTerceros]=@NoTercero

				IF @Codigo_CIIU IS NULL
					BEGIN
						SET @Codigo_CIIU=''''
					END

				SELECT T.[IdTerceros]
					  ,@TipoDocumento AS [TipoDocumento]
					  ,T.[NoIdentificacion]
					  ,T.[NombreCompleto]
					  ,TC.[RazonSocial]
					  ,TC.RepresentateLegal
					  ,TC.[RazonSocial] AS [NombreEstablecimiento]
					  ,TC.[DireccionProveedor] AS [Direccion]
					  ,TC.[NoTipoNit] AS TipoPersona
					  ,@Emial AS Email
					  ,@Telefono AS Telefono
	  
					  ,@Cod_Departamento AS Cod_Departamento 
					  ,@Departamento AS Departamento 
					  ,@Cod_Departamento+@Cod_Ciudad AS Cod_Ciudad 
					  ,@Ciudad AS Ciudad 
					  ,@Codigo_CIIU AS Codigo_CIIU
				FROM [dbo].[Terceros] T INNER JOIN 
					 [dbo].[TercerosProveedor] TC ON T.IdTerceros=TC.IdTerceros 
				WHERE T.[IdTerceros]=@NoTercero


			END

END' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_CarteraTercerosClientesProcesar]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_CarteraTercerosClientesProcesar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Guardar_CarteraTercerosClientesProcesar]
	@NoCartera INT
   ,@NoAbono INT
AS
BEGIN
	INSERT INTO [MonMa_CON].[dbo].[Procesar_AbonosCartera_Cliente]
				([NoCartera]
				,[NoAbono]
				,[Estado])
			VALUES
				(@NoCartera
				,@NoAbono
				,0)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_CarteraTercerosClientesProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_CarteraTercerosClientesProcesar_Local]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'



CREATE PROCEDURE [dbo].[Guardar_CarteraTercerosClientesProcesar_Local]
	@NoCartera INT
   ,@NoAbono INT
AS
BEGIN
	INSERT INTO [MonMa_CON].[dbo].[Procesar_AbonosCartera_Cliente]
				([NoCartera]
				,[NoAbono]
				,[Estado])
			VALUES
				(@NoCartera
				,@NoAbono
				,0)
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_CarteraTercerosProveedorProcesar]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_CarteraTercerosProveedorProcesar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[Guardar_CarteraTercerosProveedorProcesar]
	@NoCartera INT
   ,@NoAbono INT
AS
BEGIN
	INSERT INTO [MonMa_CON].[dbo].[Procesar_AbonosCartera_Proveedor]
				([NoCartera]
				,[NoAbono]
				,[Estado])
			VALUES
				(@NoCartera
				,@NoAbono
				,0)
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_CarteraTercerosProveedorProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_CarteraTercerosProveedorProcesar_Local]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[Guardar_CarteraTercerosProveedorProcesar_Local]
	@NoCartera INT
   ,@NoAbono INT
AS
BEGIN
	INSERT INTO [MonMa_CON].[dbo].[Procesar_AbonosCartera_Proveedor]
				([NoCartera]
				,[NoAbono]
				,[Estado])
			VALUES
				(@NoCartera
				,@NoAbono
				,0)
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_DevolucionFacturaCompraProcesar]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_DevolucionFacturaCompraProcesar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[Guardar_DevolucionFacturaCompraProcesar]
	 @NoDevolucion int
AS
BEGIN
	INSERT INTO [MonMa_EST].[dbo].[DevolucionFacturaCompraProcesar]
                ([NoDevolucion]
                ,[Estado])
          VALUES(@NoDevolucion
                ,0)
				
	INSERT INTO [MonMa_PRO].[dbo].[Procesar_DevolucionCompra]
				([NoDevolucion]
				,[Estado])
			VALUES
				(@NoDevolucion
				,0)
END




' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_DevolucionFacturaCompraProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_DevolucionFacturaCompraProcesar_Local]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Guardar_DevolucionFacturaCompraProcesar_Local]
	 @NoDevolucion int
AS
BEGIN
	INSERT INTO [MonMa_EST].[dbo].[DevolucionFacturaCompraProcesar]
                ([NoDevolucion]
                ,[Estado])
          VALUES(@NoDevolucion
                ,0)

	INSERT INTO [MonMa_CON].[dbo].[Procesar_DevolucionCompra]
				([NoDevolucion]
				,[Estado])
			VALUES
				(@NoDevolucion
				,0)
		   
END




' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_DevolucionFacturaVentaProcesar]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_DevolucionFacturaVentaProcesar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Guardar_DevolucionFacturaVentaProcesar]
	 @NoDevolucion int
AS
BEGIN
	INSERT INTO [MonMa_EST].[dbo].[DevolucionFacturaVentaProcesar]
			   ([NoDevolucion]
			   ,[Estado])
		 VALUES
			   (@NoDevolucion
			   ,0)
			   
		INSERT INTO [MonMa_CON].[dbo].[Procesar_DevolucionVenta]
					([NoDevolucion]
					,[Estado])
				VALUES
					(@NoDevolucion
					,0)
			   
END





' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_DevolucionFacturaVentaProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_DevolucionFacturaVentaProcesar_Local]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Guardar_DevolucionFacturaVentaProcesar_Local]
	 @NoDevolucion int
AS
BEGIN
	INSERT INTO [MonMa_EST].[dbo].[DevolucionFacturaVentaProcesar]
			   ([NoDevolucion]
			   ,[Estado])
		 VALUES
			   (@NoDevolucion
			   ,0)
			   
		INSERT INTO [MonMa_CON].[dbo].[Procesar_DevolucionVenta]
					([NoDevolucion]
					,[Estado])
				VALUES
					(@NoDevolucion
					,0)
			   
END





' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_FacturaCompraProcesar]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_FacturaCompraProcesar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[Guardar_FacturaCompraProcesar]
	 @NoCompra int
AS
BEGIN
	INSERT INTO [MonMa_EST].[dbo].[FacturaCompraProcesar]
                ([NoCompra]
                ,[Estado])
          VALUES(@NoCompra
                ,0)
				
	INSERT INTO [MonMa_PRO].[dbo].[Procesar_FacturaCompra]
				([NoCompra]
				,[Estado])
			VALUES
				(@NoCompra
				,0)
END



' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_FacturaCompraProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_FacturaCompraProcesar_Local]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[Guardar_FacturaCompraProcesar_Local]
	 @NoCompra int
AS
BEGIN
	INSERT INTO [MonMa_EST].[dbo].[FacturaCompraProcesar]
                ([NoCompra]
                ,[Estado])
          VALUES(@NoCompra
                ,0)

	INSERT INTO [MonMa_CON].[dbo].[Procesar_FacturaCompra]
				([NoCompra]
				,[Estado])
			VALUES
				(@NoCompra
				,0)
		   
END




' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_FacturaVentaProcesar]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_FacturaVentaProcesar]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Guardar_FacturaVentaProcesar]
	 @NoFactura char(14) 
	,@FechaFactura date 
	,@NoEquipo int 
	,@NoBodega int 
	,@NoEmpresa int 
	,@NoRol int 
	,@IdTercero int 
	,@IdVendedor int 
	,@HoraIni datetime 
	,@HoraFin datetime 
	,@Estado bit 
AS
BEGIN
	INSERT INTO [MonMa_EST].[dbo].[FacturaVentaProcesar]
			   ([NoFactura]
			   ,[FechaFactura]
			   ,[NoEquipo]
			   ,[NoBodega]
			   ,[NoEmpresa]
			   ,[NoRol]
			   ,[IdTercero]
			   ,[IdVendedor]
			   ,[HoraIni]
			   ,[HoraFin]
			   ,[Estado])
		 VALUES
			   (@NoFactura
				,@FechaFactura
				,@NoEquipo
				,@NoBodega
				,@NoEmpresa
				,@NoRol
				,@IdTercero
				,@IdVendedor
				,@HoraIni
				,@HoraFin
				,@Estado)

				
	IF SUBSTRING(@NoFactura,1,3)=''FAC''
		BEGIN
			INSERT INTO [MonMa_PRO].[dbo].[Procesar_FacturaVenta]
						([NoFactura]
						,[Estado])
					VALUES
						(@NoFactura
						,0)
		END

END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_FacturaVentaProcesar_Local]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_FacturaVentaProcesar_Local]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Guardar_FacturaVentaProcesar_Local]
	 @NoFactura char(14) 
	,@FechaFactura date 
	,@NoEquipo int 
	,@NoBodega int 
	,@NoEmpresa int 
	,@NoRol int 
	,@IdTercero int 
	,@IdVendedor int 
	,@HoraIni datetime 
	,@HoraFin datetime 
	,@Estado bit 
AS
BEGIN
	INSERT INTO [MonMa_EST].[dbo].[FacturaVentaProcesar]
			   ([NoFactura]
			   ,[FechaFactura]
			   ,[NoEquipo]
			   ,[NoBodega]
			   ,[NoEmpresa]
			   ,[NoRol]
			   ,[IdTercero]
			   ,[IdVendedor]
			   ,[HoraIni]
			   ,[HoraFin]
			   ,[Estado])
		 VALUES
			   (@NoFactura
				,@FechaFactura
				,@NoEquipo
				,@NoBodega
				,@NoEmpresa
				,@NoRol
				,@IdTercero
				,@IdVendedor
				,@HoraIni
				,@HoraFin
				,@Estado)
				
	IF SUBSTRING(@NoFactura,1,3)=''FAC''
		BEGIN
			INSERT INTO [MonMa_CON].[dbo].[Procesar_FacturaVenta]
						([NoFactura]
						,[Estado])
					VALUES
						(@NoFactura
						,0)
		END

END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Guardar_ProductosKardexPromedio]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Guardar_ProductosKardexPromedio]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Guardar_ProductosKardexPromedio]
	 @NoKardex int
	,@FechaKardex date
	,@HoraKardex datetime
	,@CodigoProducto int
	,@NoBodega int
	,@Numero nvarchar(20)
	,@Documento nvarchar(20)
	,@Motivo int
	,@CostoNeto float
	,@CostoPromedio float
	,@PrecioVenta float
	,@IvaKardex float
	,@PorMargen float
	,@SaldoInicial float
	,@CantEntrada float
	,@CantSalida float
	,@SaldoFinal float
	,@NoEquipo int
	,@NoRol int
	,@IdTercero int
	,@FechaIngreso datetime
	,@Observacion nvarchar(100)
	,@Consecutivo int
AS
BEGIN
	INSERT INTO [dbo].[ProductosKardexPromedio]
			   ([NoKardex]
			   ,[FechaKardex]
			   ,[HoraKardex]
			   ,[CodigoProducto]
			   ,[NoBodega]
			   ,[Numero]
			   ,[Documento]
			   ,[Motivo]
			   ,[CostoNeto]
			   ,[CostoPromedio]
			   ,[PrecioVenta]
			   ,[IvaKardex]
			   ,[PorMargen]
			   ,[SaldoInicial]
			   ,[CantEntrada]
			   ,[CantSalida]
			   ,[SaldoFinal]
			   ,[NoEquipo]
			   ,[NoRol]
			   ,[IdTercero]
			   ,[FechaIngreso]
			   ,[Observacion]
			   ,[Consecutivo])
		 VALUES
			   ( @NoKardex
				,@FechaKardex
				,@HoraKardex
				,@CodigoProducto
				,@NoBodega
				,@Numero
				,@Documento
				,@Motivo
				,@CostoNeto
				,@CostoPromedio
				,@PrecioVenta
				,@IvaKardex
				,@PorMargen
				,@SaldoInicial
				,@CantEntrada
				,@CantSalida
				,@SaldoFinal
				,@NoEquipo
				,@NoRol
				,@IdTercero
				,@FechaIngreso
				,@Observacion
				,@Consecutivo
				)
				
	DECLARE @IdTercero_Proveedor INT;

	SELECT @IdTercero_Proveedor=[IdProveedorPrincipal]
	FROM [dbo].[ProductosPrincipal]
	WHERE [CodigoProducto]=@CodigoProducto

	INSERT INTO [dbo].[ProductosKardexProveedor]
			   ([NoKardex]
			   ,[FechaKardex]
			   ,[HoraKardex]
			   ,[CodigoProducto]
			   ,[NoBodega]
			   ,[Numero]
			   ,[Documento]
			   ,[Motivo]
			   ,[CostoNeto]
			   ,[CostoPromedio]
			   ,[PrecioVenta]
			   ,[IvaKardex]
			   ,[PorMargen]
			   ,[SaldoInicial]
			   ,[CantEntrada]
			   ,[CantSalida]
			   ,[SaldoFinal]
			   ,[NoEquipo]
			   ,[NoRol]
			   ,[IdTercero]
			   ,[FechaIngreso]
			   ,[Observacion]
			   ,[Consecutivo]
			   ,[IdTercero_Proveedor])
		 VALUES
			   ( @NoKardex
				,@FechaKardex
				,@HoraKardex
				,@CodigoProducto
				,@NoBodega
				,@Numero
				,@Documento
				,@Motivo
				,@CostoNeto
				,@CostoPromedio
				,@PrecioVenta
				,@IvaKardex
				,@PorMargen
				,@SaldoInicial
				,@CantEntrada
				,@CantSalida
				,@SaldoFinal
				,@NoEquipo
				,@NoRol
				,@IdTercero
				,@FechaIngreso
				,@Observacion
				,@Consecutivo
				,@IdTercero_Proveedor)
END





' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_iFacturaCompraDetallePrincipal_Consultar_x_NoCompra]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_iFacturaCompraDetallePrincipal_Consultar_x_NoCompra]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[sp_iFacturaCompraDetallePrincipal_Consultar_x_NoCompra]
	@NoCompra int
AS
BEGIN
	SELECT [CodigoProducto] AS Codigo
	      ,[CodigoAlterno] AS Alterno
		  ,[DescripcionPantalla] AS Descripcion
		  ,[IvaCompra]
		  ,[CostoNeto]
		  ,SUM([CantidadUnidades]) AS Cantidad
		  ,SUM([TotalCompra]) AS PrecioNeto
		  ,SUM([TotalCompra]/(1.+[IvaCompra]/100.)) AS PrecioBase
	FROM [dbo].[FacturaCompraDetallePrincipal]
	WHERE [NoCompra]=@NoCompra
	GROUP BY [CodigoProducto]
	        ,[CodigoAlterno]
		    ,[DescripcionPantalla]
		    ,[IvaCompra]
		    ,[CostoNeto]
END


' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_iFacturaCompraIvas_Consultar_x_NoCompra]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_iFacturaCompraIvas_Consultar_x_NoCompra]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[sp_iFacturaCompraIvas_Consultar_x_NoCompra]
	@NoCompra int
AS
BEGIN
	SELECT [NoCompra]
		  ,[IvaCompra]
		  ,[CostoValorBase]
		  ,[CostoValorIva]
		  ,[CostoValorNeto]
	  FROM [dbo].[FacturaCompraIvas]
	WHERE [NoCompra]=@NoCompra
END




' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_iFacturaCompraTotales_Consultar_x_NoCompra]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_iFacturaCompraTotales_Consultar_x_NoCompra]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

CREATE PROCEDURE [dbo].[sp_iFacturaCompraTotales_Consultar_x_NoCompra]
	@NoCompra int
AS
BEGIN
	SELECT [NoCompra]
		  ,[TotalBruto]
		  ,[DctoGenerado]
		  ,[IvaGenerado]
		  ,[Retenciones]
		  ,[Impoconsumo]
		  ,[DctoFinanc01]
		  ,[DctoFinanc02]
		  ,[DctoGeneral]
		  ,[Fletes]
		  ,[AjusteMas]
		  ,[AjusteMenos]
		  ,[NotaCredito]
		  ,[TotalPagar]
	  FROM [dbo].[FacturaCompraTotales]
	WHERE [NoCompra]=@NoCompra
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Terceros_Consultar_Para_Envio]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_Terceros_Consultar_Para_Envio]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[sp_Terceros_Consultar_Para_Envio]
	@Notercero BIGINT
AS
BEGIN
	DECLARE 
		 @Estado tinyint
		,@NoTipoDocumento tinyint
		,@NoIdentificacion varchar(15)
		,@NombreCompleto varchar(200)
		,@Reporta bit
		,@Observaciones varchar(max)
		,@FechaDeCreacion datetime
		,@FechaDeModificacion datetime
		,@IdTercero bigint	

		,@DigitoVerificacion varchar(1)
		,@RazonSocial varchar(150)
		,@Primer_Nombre varchar(50)
		,@Segundo_Nombre varchar(50)
		,@Primer_Apellido varchar(50)
		,@Segundo_Apellido varchar(50)
		,@NoGenero int

		,@Email varchar(200)
		,@Telefono varchar(50)

		,@Direccion varchar(150)
		,@Departamento varchar(3)
		,@Municipio varchar(3)

		,@EsCliente BIT
		,@EsProveedor BIT
		,@EsEmpleado BIT



			SELECT 
				 @Estado=T.[IdEstado]
				,@NoTipoDocumento=TD.[NoTipoDocumento]
				,@NoIdentificacion=T.[NoIdentificacion]
				,@NombreCompleto=T.[NombreCompleto]
				,@Reporta=0
				,@Observaciones=T.[Observaciones]
				,@FechaDeCreacion=T.[FechaDeCreacion]
				,@FechaDeModificacion=T.[FechaDeModificacion]
				,@IdTercero=T.[IdTerceros]

				,@EsCliente=[EsCliente]
				,@EsProveedor=[EsProveedor]
				,@EsEmpleado=[EsEmpleado]
			FROM [MONMA_PRO].[dbo].[Terceros]	T INNER JOIN 
				[MonMa_BAS].[dbo].[TiposDocumentos] TD ON T.IdTipoDocumento=TD.IdTipoDocumento
			WHERE [IdTerceros]=@Notercero;
									
		SELECT @Email=[Email]
		FROM  [MONMA_PRO].[dbo].[TercerosEmail]
		WHERE [Id]=1 
			AND [IdTerceros]=@Notercero;
								  
		SELECT @Telefono=[Telefono]
		FROM  [MONMA_PRO].[dbo].[TercerosTelefonos]
		WHERE [Id]=1 
			AND [IdTerceros]=@Notercero;
								  

		IF @EsCliente=1
			BEGIN
						SELECT @Estado=TC.[IdEstado]
							,@RazonSocial=TC.[RazonSocial]
							,@Primer_Nombre=TC.[PrimerNombre]
							,@Segundo_Nombre=TC.[SegundoNombre]
							,@Primer_Apellido=TC.[PrimerApellido]
							,@Segundo_Apellido=TC.[SegundoApellido]
							,@NoGenero=TC.[Genero]
							,@Direccion=TC.[Direccion]
							,@Departamento=D.[Codigo]
							,@Municipio=C.[Codigo]
					FROM [MONMA_PRO].[dbo].[TercerosCliente] TC INNER JOIN 
						[MONMA_PRO].[dbo].[Terceros] T ON TC.IdTerceros=T.IdTerceros INNER JOIN 
						[MonMa_BAS].[dbo].[TiposDocumentos] TD ON T.IdTipoDocumento=TD.IdTipoDocumento LEFT JOIN 
						[MonMa_BAS].[dbo].[Departamentos] D ON T.IdDepartamento=D.IdDepartamento LEFT JOIN
						[MonMa_BAS].[dbo].[Ciudades] C ON T.IdCiudad=C.IdCiudad												 			
					WHERE T.[IdTerceros]=@Notercero;
			END
		ELSE IF @EsProveedor=1
			BEGIN

						SELECT 
								@RazonSocial=TC.[RazonSocial]
							,@Primer_Nombre=NULL
							,@Segundo_Nombre=NULL
							,@Primer_Apellido=NULL
							,@Segundo_Apellido=NULL
							,@NoGenero=0
							,@Direccion=TC.[DireccionProveedor]
							,@Departamento=D.[Codigo]
							,@Municipio=C.[Codigo]
					FROM [MONMA_PRO].[dbo].[TercerosProveedor] TC INNER JOIN 
						[MONMA_PRO].[dbo].[Terceros] T ON TC.IdTerceros=T.IdTerceros INNER JOIN 
						[MonMa_BAS].[dbo].[TiposDocumentos] TD ON T.IdTipoDocumento=TD.IdTipoDocumento LEFT JOIN 
						[MonMa_BAS].[dbo].[Departamentos] D ON T.IdDepartamento=D.IdDepartamento LEFT JOIN
						[MonMa_BAS].[dbo].[Ciudades] C ON T.IdCiudad=C.IdCiudad												 			
					WHERE T.[IdTerceros]=@Notercero;
			END
		ELSE IF @EsEmpleado=1
			BEGIN
						SELECT 
								@RazonSocial=NULL
							,@Primer_Nombre=TC.[PrimerNombre]
							,@Segundo_Nombre=TC.[SegundoNombre]
							,@Primer_Apellido=TC.[PrimerApellido]
							,@Segundo_Apellido=TC.[SegundoApellido]
							,@NoGenero=TC.[NoGenero]
							,@Direccion=TC.[Direccion]
							,@Departamento=D.[Codigo]
							,@Municipio=C.[Codigo]
					FROM [MONMA_PRO].[dbo].[TercerosEmpleado] TC INNER JOIN 
						[MONMA_PRO].[dbo].[Terceros] T ON TC.IdTerceros=T.IdTerceros INNER JOIN 
						[MonMa_BAS].[dbo].[TiposDocumentos] TD ON T.IdTipoDocumento=TD.IdTipoDocumento LEFT JOIN 
						[MonMa_BAS].[dbo].[Departamentos] D ON T.IdDepartamento=D.IdDepartamento LEFT JOIN
						[MonMa_BAS].[dbo].[Ciudades] C ON T.IdCiudad=C.IdCiudad												 			
					WHERE T.[IdTerceros]=@Notercero;
			END



	SELECT @Estado AS Estado
		,@NoTipoDocumento AS NoTipoDocumento
		,@NoIdentificacion AS NoIdentificacion
		,@NombreCompleto AS NombreCompleto
		,@Reporta AS Reporta
		,@Observaciones AS Observaciones
		,@FechaDeCreacion AS FechaDeCreacion
		,@FechaDeModificacion AS FechaDeModificacion
		,@IdTercero AS IdTercero

		,@DigitoVerificacion AS DigitoVerificacion
		,@RazonSocial AS RazonSocial
		,@Primer_Nombre AS Primer_Nombre
		,@Segundo_Nombre AS Segundo_Nombre
		,@Primer_Apellido AS Primer_Apellido
		,@Segundo_Apellido AS Segundo_Apellido
		,@NoGenero AS NoGenero

		,@Email AS Email
		,@Telefono AS Telefono

		,@Direccion AS Direccion
		,@Departamento AS Departamento
		,@Municipio AS Municipio

END' 
END
GO
/****** Object:  Table [dbo].[ConversionesProductos_Produccion]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ConversionesProductos_Produccion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ConversionesProductos_Produccion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NoBodega] [int] NOT NULL,
	[NoConversion] [int] NOT NULL,
	[CodigoProducto] [int] NOT NULL,
	[DescripcionPantalla] [nvarchar](80) NOT NULL,
	[CantUnidades] [float] NOT NULL,
	[Tipo] [varchar](2) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_ConversionesProductos_Produccion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC,
	[NoBodega] ASC,
	[NoConversion] ASC,
	[CodigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Factura_Electronica_Doc_Soporte]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Factura_Electronica_Doc_Soporte]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Factura_Electronica_Doc_Soporte](
	[NoCompra] [int] NOT NULL,
	[Nombre_FE] [varchar](40) NULL,
	[Ruta] [varchar](400) NULL,
	[FechaRegistrada] [datetime] NULL,
	[FechaEnviada] [datetime] NULL,
	[Estado] [bit] NULL,
	[Prefijo] [varchar](50) NULL,
	[Consecutivo] [bigint] NULL,
	[CUFE] [varchar](500) NULL,
	[FechaNC] [datetime] NULL,
	[Nombre_FENC] [varchar](40) NULL,
	[RutaNC] [varchar](400) NULL,
	[CUFENC] [varchar](500) NULL,
	[PrefijoNC] [varchar](50) NULL,
	[ConsecutivoNC] [bigint] NULL,
 CONSTRAINT [PK_Factura_Electronica_Doc_Soporte] PRIMARY KEY CLUSTERED 
(
	[NoCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Procesar_AbonosCartera_Cliente]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_AbonosCartera_Cliente]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Procesar_AbonosCartera_Cliente](
	[NoCartera] [int] NOT NULL,
	[NoAbono] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Procesar_AbonosCartera_Cliente] PRIMARY KEY CLUSTERED 
(
	[NoCartera] ASC,
	[NoAbono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Procesar_AbonosCartera_Proveedor]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_AbonosCartera_Proveedor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Procesar_AbonosCartera_Proveedor](
	[NoCartera] [int] NOT NULL,
	[NoAbono] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Procesar_AbonosCartera_Proveedor] PRIMARY KEY CLUSTERED 
(
	[NoCartera] ASC,
	[NoAbono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Procesar_DevolucionCompra]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_DevolucionCompra]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Procesar_DevolucionCompra](
	[NoDevolucion] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Procesar_DevolucionCompra] PRIMARY KEY CLUSTERED 
(
	[NoDevolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Procesar_DevolucionVenta]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_DevolucionVenta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Procesar_DevolucionVenta](
	[NoDevolucion] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Procesar_DevolucionVenta] PRIMARY KEY CLUSTERED 
(
	[NoDevolucion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Procesar_FacturaCompra]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_FacturaCompra]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Procesar_FacturaCompra](
	[NoCompra] [int] NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Procesar_FacturaCompra] PRIMARY KEY CLUSTERED 
(
	[NoCompra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Procesar_FacturaVenta]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Procesar_FacturaVenta]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Procesar_FacturaVenta](
	[NoFactura] [char](14) NOT NULL,
	[Estado] [bit] NOT NULL,
 CONSTRAINT [PK_Procesar_FacturaVenta] PRIMARY KEY CLUSTERED 
(
	[NoFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductosKardexProveedor]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductosKardexProveedor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductosKardexProveedor](
	[NoKardex] [int] NOT NULL,
	[FechaKardex] [date] NULL,
	[HoraKardex] [datetime] NULL,
	[CodigoProducto] [int] NULL,
	[NoBodega] [int] NULL,
	[Numero] [nvarchar](20) NULL,
	[Documento] [nvarchar](20) NULL,
	[Motivo] [int] NULL,
	[CostoNeto] [float] NULL,
	[CostoPromedio] [float] NULL,
	[PrecioVenta] [float] NULL,
	[IvaKardex] [float] NULL,
	[PorMargen] [float] NULL,
	[SaldoInicial] [float] NULL,
	[CantEntrada] [float] NULL,
	[CantSalida] [float] NULL,
	[SaldoFinal] [float] NULL,
	[NoEquipo] [int] NULL,
	[NoRol] [int] NULL,
	[IdTercero] [int] NULL,
	[IdTercero_Proveedor] [int] NULL,
	[FechaIngreso] [datetime] NULL,
	[Observacion] [nvarchar](100) NULL,
	[Consecutivo] [int] NULL,
 CONSTRAINT [PK_ProductosKardexProveedor] PRIMARY KEY CLUSTERED 
(
	[NoKardex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductosMinutas]    Script Date: 10/04/2024 09:43:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductosMinutas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductosMinutas](
	[CodigoProductoPadre] [int] NOT NULL,
	[CodigoProductoHijo] [int] NOT NULL,
	[Porcentaje] [float] NOT NULL,
	[PesoUnidad] [float] NULL,
 CONSTRAINT [PK_ProductosMinutas] PRIMARY KEY CLUSTERED 
(
	[CodigoProductoPadre] ASC,
	[CodigoProductoHijo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[dbo].[DF_ConversionesProductos_Produccion_Estado]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ConversionesProductos_Produccion] ADD  CONSTRAINT [DF_ConversionesProductos_Produccion_Estado]  DEFAULT ((0)) FOR [Estado]
END

GO
