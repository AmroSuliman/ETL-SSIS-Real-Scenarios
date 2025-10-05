CREATE TABLE [dbo].[GreaterThan0KB](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	[Currency] [varchar](50) NULL,
	[gender] [varchar](50) NULL
) ON [PRIMARY]
go
create table fileLogs(Id int identity, FileLoaded varchar(200), RecordsInserted int, Dated datetime)
GO

INSERT INTO fileLogs
SELECT 'D:\01_Personal\01-SSIS\UseCase_33\33 Check if file size is greater than 0 KB and only load that file in SSIS\Dollar.CSV',0,GETDATE()