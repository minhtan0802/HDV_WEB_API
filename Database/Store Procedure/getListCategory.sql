USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListCategory]    Script Date: 13/03/2022 11:53:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[getListCategory]
as
select * from Category
where status<>0