USE [BANDIENTHOAI]
GO
/****** Object:  StoredProcedure [dbo].[getTotalProduct]    Script Date: 13/04/2022 3:31:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getTotalCategory]
AS
SELECT COUNT(ID)total FROM Category