USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListProduct]    Script Date: 14/03/2022 8:04:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListUser]
@page int,
@page_size int
as
SELECT email,firstname,lastname,[address],phone,sex,birthday,avatar
FROM [User] where [status]<>0
order by email
OFFSET (@page-1) * @page_size ROWS
FETCH NEXT @page_size ROWS ONLY