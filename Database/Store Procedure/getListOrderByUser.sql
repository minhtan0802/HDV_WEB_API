USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListOrderByUser]    Script Date: 15/03/2022 7:46:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListOrderByUser]
@email nvarchar(50)
as
SELECT * FROM [Order] where u_id=@email and [status]<>-1
-- status=0: chưa xu ly, -1: da huy, -1: da giao

