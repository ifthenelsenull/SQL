-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Chris Huntley
-- Create date: 11/1/2015
-- Description:	Peanut Butter and Jelly Demo Code
-- =============================================
ALTER PROCEDURE peanutbutteraandjelly
	-- Add the parameters for the stored procedure here

--parameeters to hold the suggested ingredients
@ingredient1 varchar(255),
@ingredient2 varchar(255),
@ingredient3 varchar(255),
@ingredient4 varchar(255),
@ingredient5 varchar(255)



AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @ing1 varchar(255)
DECLARE @ing2 varchar(255)
DECLARE @ing3 varchar(255)
DECLARE @ing4 varchar(255)
DECLARE @ing5 varchar(255)

DECLARE @coveredside1 varchar(600)
DECLARE @coveredside2 varchar(600)

    -- Insert statements for procedure here

IF @ingredient1 IN ('peanut butter', 'jelly', 'knife', 'bread')
SET @ing1 = @ingredient1
ELSE RAISERROR (50001,-1,-1, 'You have an incorrect ingredient');

IF @ingredient2 IN ('peanut butter', 'jelly', 'knife', 'bread')
SET @ing2 = @ingredient2
ELSE RAISERROR (50001,-1,-1, 'You have an incorrect ingredient');

IF @ingredient3 IN ('peanut butter', 'jelly', 'knife', 'bread')
SET @ing3 = @ingredient3
ELSE RAISERROR (50001,-1,-1, 'You have an incorrect ingredient');

IF @ingredient4 IN ('peanut butter', 'jelly', 'knife', 'bread')
SET @ing4 = @ingredient4
ELSE RAISERROR (50001,-1,-1, 'You have an incorrect ingredient');

IF @ingredient5 IN ('peanut butter', 'jelly', 'knife', 'bread')
SET @ing5 = @ingredient5
ELSE RAISERROR (50001,-1,-1, 'You have an incorrect ingredient');


SET @ing1 = 'Bread'
SET @ing2 = 'Peanut Butter'
SET @ing3 = 'Jelly'
SET @ing4 = 'Bread'
SET @ing5 = 'Knife'

-- get the peanut butter on the bread properly
SET @coveredside1 = udf_spread_the_ingredient(@ing1, @ing2, @ing5)
-- get the jelly on the bread properly
SET @coveredside2 = udf_spread_the_ingredient(@ing3, @ing4, @ing5)

SELECT Concat(@coveredside1, coveredside2) AS pbandj_sandwich



END
GO
