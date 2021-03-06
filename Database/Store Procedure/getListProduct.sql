USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListProduct]    Script Date: 14/03/2022 8:04:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getListProduct]
@page int,
@page_size int
as
SELECT id, [name],price,discount,[image],unit,soLuongTon,mota FROM Product where [status]<>0
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY