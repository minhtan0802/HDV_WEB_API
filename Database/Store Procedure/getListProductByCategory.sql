USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListProduct]    Script Date: 14/03/2022 8:04:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListProductByCategory]
@page int,
@page_size int,
@cate_id int
as
SELECT id, [name],price,discount,[image],unit,soLuongTon,mota FROM Product where [status]<>0 and cate_id=@cate_id
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY