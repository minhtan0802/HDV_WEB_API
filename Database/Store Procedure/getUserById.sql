USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getUserById]    Script Date: 24/03/2022 10:02:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getUserById]
@id int=2
AS
SELECT *
FROM [User] WHERE [status]<>0 and id = @id