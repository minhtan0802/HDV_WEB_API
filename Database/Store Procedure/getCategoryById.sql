USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getProductByID]    Script Date: 13/04/2022 7:42:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getCategoryByID]
@id int=3
as
SELECT * FROM Category WHERE id=@id
