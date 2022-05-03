USE [BANDIENTHOAI]
GO

/****** Object:  StoredProcedure [dbo].[getTotalProduct]    Script Date: 17/03/2022 12:10:43 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getTotalProduct]
AS
SELECT COUNT(ID)total FROM PRODUCT
GO


