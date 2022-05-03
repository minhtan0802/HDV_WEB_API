USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListCategory]    Script Date: 13/04/2022 3:35:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[getListCategory]
@page int =1,
@page_size int=5
as
select * from Category
where status<>0
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY