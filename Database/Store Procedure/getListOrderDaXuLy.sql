USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListOrderDaXuLy]    Script Date: 15/03/2022 8:28:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListOrderDaXuLy]
@page int=1,
@page_size int=5
as
SELECT * FROM [Order] 
WHERE [STATUS]<>0
ORDER BY [STATUS]
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY