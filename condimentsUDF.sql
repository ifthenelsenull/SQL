-- ================================================
-- Template generated from Template Explorer using:
-- Create Scalar Function (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Chris Huntley
-- Create date: 11/30/2015
-- Description:	UDF for spreading the ingredients
-- =============================================
CREATE FUNCTION udf_spread_the_ingredient
(
	-- Add the parameters for the function here
	@ing1 varchar(255),
	@ing2 varchar(255),
	@ing3 varchar(255)
)
RETURNS varchar(600)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @wellpreparedbread varchar(600)

	-- Add the T-SQL statements to compute the return value here
	SET @wellpreparedbread = CONCAT(@ing1,@ing2)


	-- Return the result of the function
	RETURN @wellpreparedbread

END
GO

