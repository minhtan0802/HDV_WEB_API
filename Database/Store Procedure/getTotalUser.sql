USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getTotalCategory]    Script Date: 13/04/2022 10:07:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getTotalUser]
AS
SELECT COUNT(ID)total FROM [User]