CREATE PROCEDURE getUserByEmail
@email nvarchar(50)
AS
SELECT email,firstname,lastname,[address],phone,sex,birthday,avatar
FROM [User] WHERE [status]<>0 and email=@email