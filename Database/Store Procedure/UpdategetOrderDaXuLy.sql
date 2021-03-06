USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListOrderDaXuLy]    Script Date: 14/04/2022 11:26:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getListOrderDaXuLy]
@page int=1,
@page_size int=5
as
SELECT o.id,o.recipientName,o.phone,o.user_id,o.deliveryAddress,o.buyDate,o.deliveryCancelDay,s.name as name_status, s.id as status
FROM [Order] o, StatusOrder s
WHERE o.status= s.id and s.id<>0
ORDER BY deliveryCancelDay DESC
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY