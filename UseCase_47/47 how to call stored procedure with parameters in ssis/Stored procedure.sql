CREATE proc [dbo].[sp_GetDate_DayOfMonth_DayName](
@DateInYYYYMMDD varchar(10),
@FullDate date output, 
@DayOfMonth int output, 
@DayName varchar(50) output
)
as
begin

set @FullDate = (select top 1 FullDate FROM [Work].[dbo].[DimDate] where DateKey = @DateInYYYYMMDD)
set @DayOfMonth = (select top 1 DayOfMonth FROM [Work].[dbo].[DimDate] where DateKey = @DateInYYYYMMDD)
set @DayName = (select top 1 DayName FROM [Work].[dbo].[DimDate] where DateKey = @DateInYYYYMMDD)

end
GO

DECLARE @FullDate DATE, @DayOfMonth INT, @DayName VARCHAR(50)

EXEC sp_GetDate_DayOfMonth_DayName  '20100106', @FullDate OUTPUT, @DayOfMonth OUTPUT, @DayName OUTPUT

SELECT @FullDate AS FullDate, @DayOfMonth AS DayOfMonth, @DayName AS DayName
