USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getListCartItem]    Script Date: 13/03/2022 11:21:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getListCartItem]
@username nvarchar(50)
as
select c.id,c.quantity,c.prod_id,p.[name],c.price  from CartItem as c, Product as p where u_id=@username and c.prod_id=p.id