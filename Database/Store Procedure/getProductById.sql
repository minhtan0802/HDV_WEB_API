USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListProductByID]    Script Date: 23/03/2022 11:25:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getListProductByID]
@id int=3
as
SELECT * FROM PRODUCT WHERE id=@id
