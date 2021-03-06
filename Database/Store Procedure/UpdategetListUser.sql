USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListUser]    Script Date: 13/04/2022 10:51:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getListUser]
@page int=1,
@page_size int=5
as
SELECT id,email,firstname,lastname,[address],phone,sex,birthday,status,isVerify,role_id
FROM [User] where [status]<>0
order by id
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY
