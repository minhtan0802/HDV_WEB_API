USE [BANDIENTHOAI]
GO

/****** Object:  StoredProcedure [dbo].[getProductByName]    Script Date: 17/03/2022 12:11:00 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getProductByName]
@page int=1,
@page_size int=5,
@name nvarchar(250)
as
SELECT * FROM PRODUCT WHERE [NAME] LIKE N'%'+@name+'%'
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
GO


